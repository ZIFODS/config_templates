# Configuration templates

This repository contains standard templates for configuration files.

## hatch.toml

This is a standard template for the global <a href="https://hatch.pypa.io/latest/">Hatch</a> settings and will alter how Hatch projects are created across your machine. 

When setting up Hatch on your local machine, copy and paste the components of the hatch toml to your `config.toml` file. Config file location is detailed here: https://hatch.pypa.io/latest/config/hatch/#environments 

**Make sure to replace**:
1. USERNAME with your user name on your machine
2. NAME with your name (this will appear in the project toml files under 'author')
3. EMAIL with your email (this will appear in the project toml files under 'author')

## pyproject.toml

Standard template for a Python project. After creating your project with `hatch new`, but **before** creating your virtual environment, copy this file into your project directory with:

```bash
curl https://raw.githubusercontent.com/zifods/config_templates/main/pyproject.toml > pyproject.toml
```

This will replace the existing `toml` file. After replacing this file, check for any additional changes you might need to make to the setup for your specific project, then run the following to create your virtual environment:

```bash
hatch env create
```

## .pre-commit-config.yaml

**If you have copied the pyproject.toml template from this repository the pre-commit template will be downloaded automatically when creating a new environment**

This is a standard pre-commit template. Use this to setup your pre-commit installation and ensure that standards are met prior to commiting code to your branch.

After creating your project with `hatch new`, but **before** creating your virtual environment, copy this file into your project directory with:

```bash
curl https://raw.githubusercontent.com/zifods/config_templates/main/.pre-commit-config.yaml --output .pre-commit-config.yaml
```
