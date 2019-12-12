FILENAME="azuredatastudio-linux-1.13.1.deb"

echo "Downloading Azure Data Studio deb file"
wget -q "https://azuredatastudiobuilds.blob.core.windows.net/releases/1.13.1/$FILENAME"
echo "Installing Azure Data Studio"
sudo apt install ./$FILENAME
rm "$FILENAME"
echo "Azure Data Studio installed"