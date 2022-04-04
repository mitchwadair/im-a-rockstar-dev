# Use this script to run Rockstar programs in Windows Powershell

# This will pull down the "official" rockstar runner from GitHub
# and install its dependencies, then it will run the program.  After
# running the program, it will delete Rockstar to avoid contaminating
# the environment

$name = $args[0]
$start_dir = Get-Location

if (-not $name )
{
    echo "ERROR: Specify file to run"
    echo "USAGE: 'rockstar my_program.rock'"
    Exit
}

$program_path = $test = "$(Get-Location)\$($name)"
if (-not (Test-Path -Path $program_path -PathType Leaf))
{
    echo "ERROR: Program file does not exist"
    Exit
}

# Run the program, gracefully exit if interrupted
try
{
    mkdir rockstar > $null
    cd rockstar
    git clone https://github.com/RockstarLang/rockstar --quiet
    cd rockstar/satriani
    npm install --silent
    npm run --silent pegjs
    node rockstar $program_path
}
finally
{
    cd $start_dir
    rm -Recurse -Force rockstar
}