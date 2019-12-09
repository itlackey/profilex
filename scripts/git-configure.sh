#! /bin/bash
source .config
git config --global user.name "$DISPLAY_NAME"
git config --global user.email "$EMAIL_ADDRESS"