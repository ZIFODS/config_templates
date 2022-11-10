#!/bin/bash
PROJECT_NAME=$1
hatch new $PROJECT_NAME
cd $PROJECT_NAME
curl https://raw.githubusercontent.com/zifods/config_templates/main/pyproject.toml > pyproject.toml
sed -i "s/example/${PROJECT_NAME}/" pyproject.toml
hatch env create
hatch run git add .
hatch run git commit -m "First commit: Project setup"