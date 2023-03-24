[![test](https://github.com/olooeez/tic-tac-toe/actions/workflows/test.yml/badge.svg)](https://github.com/olooeez/tic-tac-toe/actions/workflows/test.yml)

# tic-tac-toe

Tic Tac Toe is a simple two-player game in which players take turns placing their symbol (X, O, ...) on a 3x3 grid. The first player to get three of their symbols in a row (horizontally, vertically, or diagonally) wins the game.

## Demo

![Demo of tic-tac-toe](https://raw.githubusercontent.com/olooeez/tic-tac-toe/main/img/demo.png)

## Usage

Below is how you can use tic-tac-toe. Feel free to fork or copy them, but be aware of the limitations that this repository license implies.

You can use the following options to use tic-tac-toe:

1. [Run in your machine](#run-in-your-machine)
2. [Run in a Docker container](#run-in-a-docker-container)
3. [Run in your browser](#run-in-your-browser)

### Run in your machine

#### Clone the repo

To run tic-tac-toe, you must clone this repository with the following command:

```
git clone https://github.com/olooeez/tic-tac-toe.git
```

#### Enter the cloned repository

After cloning, you must enter the local repository using the following command:

```
cd tic-tac-toe
```

#### Install the dependencies

Install [Ruby](https://www.ruby-lang.org) and [Bundler](https://bundler.io/) on your system and run it with the command bellow:

```
bundler install
```

#### Run the project

Finally use the command below to run the project:

```
ruby lib/tic_tac_toe.rb
```

### Run in a Docker container

#### Clone the repo

To run the program in a docker container, clone the repository to your machine first:

```
git clone https://github.com/olooeez/tic-tac-toe.git
```

#### Enter the cloned repository

After cloning, you must enter the local repository using the following command:

```
cd tic-tac-toe
```

#### Build the docker image

Then, use the command below to build the Docker image:

```
docker build -t olooeez/tic-tac-toe:latest .
```

#### Run the image in a container

Then, to run the image in a container, use the following command:

```
docker run -it --rm olooeez/tic-tac-toe:latest
```

### Run in your browser

To run the application in your browser, checkout the [Replit](https://replit.com/@olooeez/tic-tac-toe) version.


## Contributing

If you would like to contribute to this project, please feel free to open a pull request. All contributions are welcome!

## License

This project is licensed under the [MIT](https://github.com/olooeez/tic-tac-toe/blob/main/LICENSE) License. See the LICENSE file for details.
