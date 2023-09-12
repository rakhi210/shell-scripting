#!/bin/bash

# Define source directory
source_dir="/path/to/source/directory"

# Create target directories if they don't exist
mkdir -p "$source_dir/Images"
mkdir -p "$source_dir/Documents"
mkdir -p "$source_dir/Other"

# Move image files to the Images directory
mv "$source_dir"/*.{jpg,jpeg,png,gif} "$source_dir/Images/"

# Move document files to the Documents directory
mv "$source_dir"/*.{pdf,doc,docx,txt} "$source_dir/Documents/"

# Move all other files to the Other directory
mv "$source_dir"/* "$source_dir/Other/"

echo "Files organized successfully."
