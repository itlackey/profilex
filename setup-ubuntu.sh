#! /bin/sh
echo "Running setup for $(lsb_release -cs)"

sudo apt update
./scripts/git-install-deb.sh
./scripts/git-configure.sh
./scripts/docker-install-deb.sh
./scripts/fira-code-install-deb.sh
./scripts/teamsinstall-deb.sh
./scripts/azure-data-studio-install-deb.sh
./scripts/dotnet-sdk-install-deb.sh
./setup-snap.sh