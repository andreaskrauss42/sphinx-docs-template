#! /bin/bash
echo "Generate views using structurizr"
# ATTENTION: do not provide more than one workspace
structurizr export -workspace docs/_assets/structurizr/ -format plantuml -output docs/_assets/structurizr/
echo "Start building documentation using Sphinx"
sphinx-build -b html docs _build -a
