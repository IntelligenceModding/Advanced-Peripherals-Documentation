# Advanced Peripherals Documentation

<center>

[![Project](https://img.shields.io/badge/Project-2E9CFF?style=for-the-badge&logoColor=white&logo=Github)](https://github.com/SirEndii/AdvancedPeripherals)
![Netlify Status](https://img.shields.io/website?down_color=red&down_message=offline&label=Netlify%28Host%29&style=for-the-badge&up_color=green&up_message=online&url=https%3A%2F%2Fadvancedperipherals.netlify.app&logoColor=white&logo=Netlify)
[![Discord](https://img.shields.io/discord/734726882058174486?label=Discord&style=for-the-badge&color=7289da&logoColor=white&logo=Discord)](https://discord.intelligence-modding.de/)

</center>

This is the source of the documentation for Advanced Peripherals.  
The documentation is built with [mkdocs](https://www.mkdocs.org).  
I recommend using mkdocs if you want to contribute, but you do not need to.

## Site
The docs can be viewed at any of the below:  
https://docs.intelligence-modding.de/  
https://advancedperipherals.madefor.cc/  
https://advancedperipherals.netlify.app/  

# Contributing

If you want to contribute, fork this repository then in your fork make changes to the file you want to edit or add new files. Once you have made the changes make a pull request to contribute your changes to this repository. You can use mkdocs if you want to see your changes live, you will need [Material for Mkdocs](https://squidfunk.github.io/mkdocs-material/) and [Python](https://www.python.org/downloads/) to get it running.

## Setup with Poetry
You will need to install [Poetry for Python](https://python-poetry.org/docs/) to use this setup.  
Install mkdocs dependencies by running:
~~~zsh
poetry install
~~~
:warning: *Make sure you are in the folder with the `pyproject.toml` file*

Once dependencies have been installed you can now serve with mkdocs to view your changes:
~~~zsh
poetry run mkdocs serve
~~~
Click the url in your terminal to open the docs in your browser.

---

## Setup with Pip
If you have python installed on your machine you will have pip installed.  
Install the necessary dependencies by running:
~~~zsh
pip install -r requirements.txt
~~~
:warning: *Make sure you are in the folder with the `requirements.txt` file*

Once dependencies have been installed you can now serve with mkdocs to view your changes:
~~~zsh
python -m mkdocs serve
~~~
Click the url in your terminal to open the docs in your browser.