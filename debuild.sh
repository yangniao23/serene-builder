#!/bin/bash

cd serene-builder
rm -rf .gitignore .git out README.md Dockerfile debuild.sh
cd ..
dpkg -b serene-builder
mv serene-builder.deb out