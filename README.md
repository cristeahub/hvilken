# hvilken - week number cli


hvilken is a cli that prints the current week number.

In some parts of the world, like Norway, the week number is commonly used in schools, kindergartens and similar, having a cli that prints this number makes automatic that part of your life so much easier.

## Installation

Prebuilt binaries for macOS are provided on the release page https://github.com/cristeahub/hvilken/releases
Unfortunately they are not yet notarized so you'll have to jump through a few hoops to get it running on mac.

### Building from source

Building from source requires the same requirements as if you want to [contribute](https://github.com/cristeahub/hvilken#contributing).
After everything is installed run the following:

```zsh
> # Install cli
> cabal install hvilken
> # Run cli
> cabal run hvilken
```

## Features

```zsh
> # No input gives week number
> hvilken
40

> # help / -help / --help prints help message
> hvilken --help
No input will print current week number
```

## Contributing

Prerequisites:

- Haskell GHCUP (https://www.haskell.org/ghcup/)
- Haskell Cabal
- Haskell Stack

### Run the project

Clone down the project.
From the root folder run `stack run` to run the project.
This will build an executable and run the program.
