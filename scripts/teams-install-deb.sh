TEAMS_FILENAME="teams_1.2.00.32451_amd64.deb"

echo "Downloading teams deb file"
wget -q "https://packages.microsoft.com/repos/ms-teams/pool/main/t/teams/$TEAMS_FILENAME"
echo "Installing teams"
sudo apt install ./$TEAMS_FILENAME
rm "$TEAMS_FILENAME"
echo "Teams installed"