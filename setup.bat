@echo off

set /p varProjectName="What do you want to name the project?    "

REM configuring environment
virtualvenv venv
venv\Scripts\activate
pip3 install Django
pip3 install boto3
pip3 install requests

REM configuring django project and running server
django-admin startproject %varProjectName%
python %varProjectName%\manage.py startapp base
python %varProjectName%\manage.py startapp makemigrations
python %varProjectName%\manage.py migrate
copy templates %varProjectName%\base\templates
copy /Y django_file_replacements\urls.py %varProjectName%\base\urls.py
copy /Y django_file_replacements\urls.py %varProjectName%\base\views.py
copy /Y django_file_replacements\settings.py %varProjectName%\%varProjectName%\settings.py
copy /Y django_file_replacements\main_urls.py %varProjectName%\%varProjectName%\urls.py
python %varProjectName%\manage.py startapp makemigrations
python %varProjectName%\manage.py migrate
python %varProjectName%\manage.py runserver
