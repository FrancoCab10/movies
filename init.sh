#!/bin/bash
echo "starting..."
echo "checking repositories..."

if [ ! -d ./movies-api ]
then
    echo "movies-api does not exist, cloning..."
    git clone https://github.com/FrancoCab10/movies-api.git
    echo "installing dependencies..."
    cd movies-api && yarn
    cd ..
    echo "done."
else
    echo "movies-api exists."
fi

if [ ! -d ./react-movies ]
then
    echo "react-movies does not exist, cloning..."
    git clone https://github.com/FrancoCab10/react-movies.git
    echo "installing dependencies..."
    cd react-movies && yarn && yarn build
    cd ..
    echo "done."
else
    echo "react-movies exists."
fi

if [ ! -d ./data ]
then
    echo "data directory does not exist, initializing..."
    mkdir data
    docker-compose -f docker-compose.yml -f docker-compose.init.yml up --build
else
    echo "data directory found"
    docker-compose up
fi