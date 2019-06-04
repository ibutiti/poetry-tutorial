# installation
curl -sSL https://raw.githubusercontent.com/sdispater/poetry/master/get-poetry.py | python

# activate poetry without restarting
source $HOME/.poetry/env

# check poetry version
poetry --version

# updating poetry to latest version
poetry self:update

# updating poetry to specific version eg 2 in this case
poetry self:update 2

# create a new project named demo with a basic folder structure and pyproject.toml file
poetry new demo

# initialize a pyproject.toml file. prompts will follow
poetry init

#  installing dependencies (one or many)
poetry add requests django flask

# installing dev dependencies
poetry add pytest --dev

# install all dependencies in a pyproject.toml or poetry.lock file including dev dependencies
poetry install

# install all dependencies and exclude dev dependencies
poetry install --no-dev

# list all installed dependencies
poetry show

# uninstall dependencies
poetry remove pytest

# update all dependencies
poetry update

# update specific dependencies
poetry update requests pytest

# validate the pyproject.toml file
poetry check

# generating a requirements.txt file
poetry export -f requirements.txt

# creating and activating a virtual environment
poetry shell

# exit an activated virtual environment
exit

# executing commands inside the virtual environment while outside it
poetry run python -V

# executing commands defined in your pyproject.toml file, in our case here executing the command inside
# demo/main.py called get_random_pokemon defined in [tool.poerty.scripts] as get-pokemon
poetry run get-pokemon
