# Myna

Just another slack bot.

## Table of Contents

<!-- TOC -->

- [Myna](#myna)
    - [Table of Contents](#table-of-contents)
    - [Installation](#installation)
    - [Documentation](#documentation)
    - [Usage](#usage)
    - [Testing](#testing)
        - [Test Locally](#test-locally)

<!-- /TOC -->

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `myna` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:myna, "~> 0.1.0"}
  ]
end
```


## Documentation

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/myna](https://hexdocs.pm/myna).


## Usage

TODO: termporary env variable setup, this only works at compile time,
 so need to pull configuration in a differnt way before deploying/distributing.


```zsh
export MYNA_SLACK_TOKEN="xxxxxxxx"
```

## Testing


### Test Locally

Commands require a publically accessible call back. You can set up `ngrok` to get a public URL and get requests tunneled to your `localhost`.

1. Create a free account at [ngrok.com](https://ngrok.com/)

2. Follow the [setup instructions](https://dashboard.ngrok.com/get-started/setup)

3. ... TODO: more steps reg ports etc


## ✅ Pre-Commit

How to setup git pre-commit hooks to keep this project nice and clean:

1. Install [pre-commit](https://pre-commit.com/#installation) if it is not yet installed.
2. Run
   ```zsh
   pre-commit install
   ```

ℹ️ You can regularly upgrade the existing commit hooks to the latest verion by running:
```zsh
pre-commit autoupdate
```
