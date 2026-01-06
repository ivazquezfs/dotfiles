#!/bin/bash
echo -e "🚀\tInstalling VS Code Extensions"
# Define the input file name
input_file="vscode-extensions.txt"

declare -a extensions=(
    "eamodio.gitlens"
    "amazonwebservices.amazon-q-vscode"
)

for extension in "${extensions[@]}"; do
    echo -e "\tℹ️\tInstalling $extension..."
    (code --install-extension $extension --force > /dev/null) || echo -e "⚠️\tError while installing $extension"
done

echo -e "🚀\tVS Code extensions have been installed."
