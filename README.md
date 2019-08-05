# Envi

![envi-banner.png](/envi-banner.png)

## What is this

Currently Envi is just a naive implementation of a env var injector for single commands. It can load the env vars from these sources, with each one overriding the vars before:

* JSON files in the `.envis` folder in your home folder
* JSON files in the `envis` folder in the repo (every file except the example one are .gitignored)
* A `envi.json` file present from the directory your command is running from

## It's bothersome to always call this from where I cloned

Try adding to your path :)

## Why should I use this

Because sometimes it's better to write in a terminal this

```shell
envi awesome.go
```

Rather than

```shell
ADDRESS=0.0.0.0 PORT=4224 MESSAGE="This is an obviously obnoxious message just to prove a point. Now let me quote something awesome from the Wizard of Oz: A baby has brains, but it doesn't know much. Experience is the only thing that brings knowledge, and the longer you are on earth the more experience you are sure to get." awesome.go
```

It also helps in keeping the terminal history a bit more clean and easier to cycle through.
