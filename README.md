# babel-docker
babel.js build from a docker image.  Can build a basic react app with babel.

See the package at https://ghcr.io/kpm/babel-docker

possible usage command, 

    sudo docker run -it -v $(pwd)/src:/app/src -v $(pwd)/static:/app/static ghcr.io/kpm/babel-docker:main

Assumes javascript/jsx source is under ./src and that output of builds goes to ./static

Limitations:  doesn't use your packages.json, so only these packages are usable:
@babel/core @babel/cli @babel/preset-env @babel/preset-react
