# Development Environment Requirements

CommonMarkSwift is a Swift package that can be consumed just by cloning this repository, but if you are interested in contributing or making changes to the source code in this repository, you will need to set up your development environment properly to work with the source code and to commit changes to the repository. Not all of the software listed below is required, but we recommend installing everything to minimize any issues that you might encounter when making changes or submitting pull requests to the project.

CommonMarkSwift uses the following software packages:

1. [Homebrew](#homebrew)
1. [Git](#git)
1. [Node Version Manager](#node-version-manager)

## Homebrew

**RECOMMENDED**

[Homebrew](https://brew.sh) is a package manager for macOS. Homebrew makes it easy to find, download, install, and keep software packages up to date as new versions are released. The CommonMarkSwift team uses Homebrew to install many software packages.

To install Homebrew, open a terminal and run:

    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

After installing Homebrew, you may need to close your terminal and start a new terminal session to update.

## Git

[Git](https://git-scm.com) is a distrubuted version control system that is used to help track changes to projects over time and support collaborative workflows for development teams. We use Git and GitHub to manage the source code for CommonMarkSwift and to share it with you. You can use [Homebrew](#homebrew) to install Git by opening a terminal and running:

    brew install git

## Node Version Manager

**RECOMMENDED**

CommonMarkSwift uses some development tools that are written and JavaScript and run using Node.js. The are many different versions of Node.js available and in use. The CommonMarkSwift team uses versions of Node.js that are supported by GitHub for their [GitHub Actions build agent](https://github.com/actions/runner-images/blob/main/images/macos/macos-12-Readme.md#nodejs). The CommonMarkSwift core team recommends the use of [nvm](https://github.com/nvm-sh/nvm) to ensure that you have and use the officially supported version of Node.js to reduce complications from using different versions.

To install nvm, open a terminal and run:

    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

CommonMarkSwift stores the current officially supported version of Node.js in the `.nvmrc` file in the repository root. nvm will read `.nvmrc` and will install (if necessary) and execute that version of Node.js when running the JavaScript programs.
