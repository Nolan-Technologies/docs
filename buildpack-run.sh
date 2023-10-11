#! /bin/bash

# build the documentation site
mkdocs build

# enable extglob
shopt -s extglob

# delete everything except for the mkdocs build output
rm -rf !(docs)

# move the mkdocs build output to the root, overwriting conflicting /docs dir
cp -R "docs/"* .

# create a composer file for heroku/php buildpack
touch composer.json

# wtire an empty object to the composer file
echo '{}' > composer.json

# create an index file for the fake PHP app
touch index.php

# include the real index in the fake index
echo '<?php include_once("index.html"); ?>' > index.php