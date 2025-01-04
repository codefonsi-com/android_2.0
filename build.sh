#!/bin/bash

if [ -d "my-component-library" ]; then
  echo "Running npm install and npm audit fix --force in my-component-library"
  (
    cd "my-component-library" || exit
    npm pack
    npm install ./my-component-library-0.1.3.tgz
    npm audit fix --force
    npm run clean
    npm run all
  )
else
  echo "Directory my-component-library does not exist. Skipping..."
fi

if [ -d "my-js-helpers" ]; then
  echo "Running npm install and npm audit fix --force in my-js-helpers"
  (
    cd "my-js-helpers" || exit
    npm audit fix --force
    npm run clean
    npm run all
  )
else
  echo "Directory my-js-helpers does not exist. Skipping..."
fi

if [ -d "my-svelte-project" ]; then
  echo "Running npm install and npm audit fix --force in my-svelte-project"
  (
    cd "my-svelte-project" || exit
    npm install
    npm audit fix --force
  )
else
  echo "Directory my-svelte-project does not exist. Skipping..."
fi

echo "All installations and audits are complete."
