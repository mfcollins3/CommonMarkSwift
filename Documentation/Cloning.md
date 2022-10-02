# Cloning the CommonMarkSwift Repository

CommonMarkSwift is a Swift package and the repository is designed to allow consumers of the library to consume the Swift packages simply by cloning the repository. To contribute changes to the repository, you need to take additional steps to convert the cloned repository into a __project workspace__. This is necessary because for development, CommonMarkSwift has dependencies on external tools that need to be installed.

## Clone the Git Repository

To begin, you will need to clone the Git repository for CommonMark from GitHub to your local development machine. You can do this using either the [Git CLI](DevelopmentEnvironmentRequirements#git) or using the [GitHub CLI](https://cli.github.com).

To clone the repository using the Git CLI, navigate to the location where you want to host the repository in the terminal and run:

    git clone https://github.com/mfcollins3/CommonMarkSwift.git

To clone the repository using the GitHub CLI, navigate to the location where you want to host the repository in the terminal and run:

    gh repo clone mfcollins3/CommonMarkSwift

## Prepare the Project Workspace

To convert the cloned repository to a project workspace, we have provided a script to help by automating the steps to install the dependencies and to configure the local repository for development. This script will download and install the external tools used to build and manage the application and will install local Git hooks into your repository to perform validation and administration tasks when performing certain repository actions such as making commits.

Using the terminal, navigate to the root directory for the repository that you cloned and run:

    bin/setup.sh

After running `bin/setup.sh`, your workspace will be ready for development.
