#!/bin/bash
cp -r serene-builder-source serene-builder
cd serene-builder
rm -rf .gitignore .git out README.md Dockerfile debuild.sh
cd ..
dpkg -b serene-builder
mv serene-builder.deb /out
chown $UGID /out/serene-builder.deb
