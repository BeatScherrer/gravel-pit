#!/bin/bash

build() {
  jsonnet gravel-pit-color-theme.jsonnet > themes/gravel-pit-color-theme.json
}

echo "trying to build the json..."
if [[ -f "themes/gravel-pit-color-theme.json" ]]; then
  build
  echo "...success"
else
  echo "file themes/gravel-pit-color-theme.json does not exist! "
fi


