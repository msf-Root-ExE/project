#!/bin/bash

echo "Enter project number:"
read project

echo "Enter client name:"
read client

echo "Enter project phase:"
read phase

# Replace spaces with underscores
project=${project// /_}
client=${client// /_}
phase=${phase// /_}

# Create the folders
mkdir ~/Desktop/${project}_${client}_${phase}
mkdir ~/Desktop/${project}_${client}_${phase}_Tool_Output
mkdir ~/Desktop/${project}_${client}_${phase}_Evidence

# Move folders 2 and 3 into folder 1
mv ~/Desktop/${project}_${client}_${phase}_Tool_Output ~/Desktop/${project}_${client}_${phase}/
mv ~/Desktop/${project}_${client}_${phase}_Evidence ~/Desktop/${project}_${client}_${phase}/

echo "Folders created and moved successfully."
