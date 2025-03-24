# babel-docker
babel.js build from a docker image.  Can build a basic react app with babel, currently uses NODE_VERSION=22.14.0 and babel version 7.26.4 (@babel/core 7.26.10)

See the docker image at https://ghcr.io/kpm/babel-docker

possible usage command, 

    sudo docker run -it -v $(pwd)/src:/app/src -v $(pwd)/static:/app/static ghcr.io/kpm/babel-docker:main

The command above is for javascript/jsx source is under ./src and output of builds goes to ./static

Limitations:  doesn't use your packages.json, so only these packages are usable:
@babel/core @babel/cli @babel/preset-env @babel/preset-react
