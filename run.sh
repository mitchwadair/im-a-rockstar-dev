# Use this script to run Rockstar programs in bash/*nix shells

name=$1
start_dir=$(pwd)

if [[ -z $name ]]; then
    echo "ERROR: Specify file to run"
    echo "USAGE: 'rockstar my_program.rock'"
    exit 1
fi

program_path="$start_dir/$name"
if [[ ! (-f "$program_path") ]]; then
    echo "ERROR: Program file does not exist"
    exit 1
fi

mkdir -p rockstar
cd rockstar
git clone https://github.com/RockstarLang/rockstar --quiet
cd rockstar/satriani
npm install --silent
node rockstar $program_path

cd $start_dir
rm -rf rockstar