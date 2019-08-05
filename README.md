# Envi

![envi-banner.png](/envi-banner.png)

## What is this

Currently Envi is just a naive implementation of a env var injector for single commands. It can load the env vars from two sources:

* JSON files in the envis folder in the repo (every file except the example one are .gitignored)
* A `envi.json` file present from the directory your command is running from (overrides envs from envis folder)

## It's bothersome to always call this from where I cloned

Try adding to your path :)
