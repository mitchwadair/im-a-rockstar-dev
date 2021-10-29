# im-a-rockstar-dev

Who doesn't want to be a rockstar dev? I found the [Rockstar](https://github.com/RockstarLang/rockstar) language a while back and though it was super funny, and I just _HAD_ to give it a try. I love to challenge myself and this is a very tough challenge. This repo is a collection of different programs I have managed to write in RockstarLang.

# How to Run

Rockstar does not have the greatest ecosystem (I wonder why :D) so there isn't a super simple way to run Rockstar programs.

I have included a couple of scripts that will take care of running these programs for you. While these scripts make it easy, they can be slightly slow because it is pulling down the Rockstar interpreter for each run from GitHub in order to keep the repo clean.

It is also required that you have NodeJS installed on your machine, as the "official" Rockstar interpreter is written for Node in JavaScript.

The first step to run these programs is to clone this repo to your machine.

## Windows

For windows, use the `run.ps1` script. For example, to run `hello_world.rock`:

```sh
# Assuming you are in the `im-a-rockstar-dev` directory
./run.ps1 src/hello_world.rock
```

## Bash shells

For operating systems that have bash, use the `run.sh` script. For example, ro tun `hello_world.rock`:

```sh
# Assuming you are in the `im-a-rockstar-dev` directory
./run.sh src/hello_world.rock
```
