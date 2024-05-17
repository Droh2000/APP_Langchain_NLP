# Estructurar todo los comandos que vamos a ejecutar para defeinir su alguno depende de otro, etc
# SHELL := /usr/bin/env bash -> Linux

install:
	pip install .

install-dev:
	pip install .[dev]

# Actualizar solo el codigo fuenta sin tener que actualizar las dependencias
update:
	pip install . --no-dependencies

# Correr la aplicacion con Streamlit
# Aqui le decimos que el comando run depende del comando update 
# Si no se ejecuto update no se puede ejecutar este
run: update
	streamlit run scripts/app.py

# Comando para correr Docker con la variable de entorno
# Con PHONY le deimos que el comando no es el nombre de una carpeta 
.PHONY: build
build:
	docker compose --env-file env_vars.env build 

deploy:
	docker compose --env-file env_vars.env up
