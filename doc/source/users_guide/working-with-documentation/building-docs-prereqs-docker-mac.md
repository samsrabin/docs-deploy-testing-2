.. _building-docs-prereqs-docker-mac:

# Prerequisites for building docs on Mac

.. _building-docs-git-tools:

## Git tools
To test whether you have the required Git tools already, open a Terminal window and try the following:
```shell
git --version
git-lfs --version
```

If either of those fail with "command not found," you'll need to install them. The recommended way is with [Homebrew](https://brew.sh/).

1. [Install Homebrew](https://brew.sh/), if needed. (Check using `brew --version`.) You will need to have granted yourself administrator access via the Self Service app.
2. [Install Git](https://formulae.brew.sh/formula/git#default), if needed.
3. [Install Git LFS](https://formulae.brew.sh/formula/git-lfs#default), if needed.

## Python
To test whether you already have the required Python version, open a Terminal window and try the following:
```shell
python3 --version
```
If that fails with "command not found," or the version is less than 3.6, you might need to install Python. But maybe not!

### Aliasing `python3` to `python`
Try the same command as above, but instead of `python3` just do `python` (no number). If that version is 3.6 or later, you can tell your Mac that when you say `python3` you want it to use `python`:
```bash
echo alias python3="$(which python)" >> ~/.bashrc
```

This will make it so that bash scripts, like what we use to build our docs, know what to do for `python3`. If your Terminal shell is bash (check with `echo $0`), `python3` will also be available in new Terminal sessions. (If your shell is zsh, you can do the same command as above but with `~/.zshrc` instead; however, this is not needed for our doc-building scripts to work.)

### Conda
If your `python` doesn't exist or is too old, we suggest using Python via Conda. First, check whether you already have Conda installed:
```shell
conda env list
```

If that shows you something like
```
# conda environments:
#
base           /Users/you/...
another_env    /Users/you/.../...
...
```

instead of the "command not found" error, then you do have conda installed! (Note that the second column doesn't really matter.) Try this to check the Python version in the `base` Conda environment:
```shell
conda run -n base python3 --version
```

Repeat with all your Conda environments as needed until you find one that's Python 3.6 or later. Let's say your `ENVNAME` environment works. In that case, just make sure to do `conda activate ENVNAME` before running the commands in the documentation-building instructions.

If you don't have Conda yet, go on to the next section.

.. _installing-conda-for-docs:

### Installing Conda
We suggest installing Conda, if needed, via Miniforge:

1. [Download Miniforge](https://conda-forge.org/download/) and install it. (:ref:`what-kind-of-mac-chip`) You can also [install Miniforge via Homebrew](https://formulae.brew.sh/cask/miniforge#default), if you already have that installed.
2. Activate Conda permanently in your shell by opening a Terminal window and doing `conda init`.

.. todo::

   Test on Laura's machine: Does this result in a working python3? Or are there additional steps?

You should now have an up-to-date version of `python3` available.

## Additional requirements
The remaining software you need to install depends on which documentation-building method you're using.

### Docker (recommended)
Install Docker Desktop through the [download page on Docker's website](https://docs.docker.com/desktop/setup/install/mac-install/). (:ref:`what-kind-of-mac-chip`)

### Non-Docker method

Install Conda, if needed (see :ref:`installing-conda-for-docs`). Then follow the instructions for setting up the `ctsm_pylib` Conda environment in Sect. :numref:`using-ctsm-pylib`.

## Frequently-asked questions

.. _what-kind-of-mac-chip:

### What kind of chip does my Mac have?
For certain steps in this installation process, you may need to know whether your Mac has an Intel (`x86_64`) or an Apple Silicon (`arm64`) chip. If you don't know, visit Apple's [Mac computers with Apple silicon](https://support.apple.com/en-us/116943) page for instructions.