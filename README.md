# (ARCHIVED) Docker image for frontend development

**IMPORTANT**: This repository is not developed anymore.
Since I began this project, components like Gulp, Compass and Bower have changed
or not even available anymore. Instructions below may not work in the future.

## About the image

The image contains Gulp, Compass, Bower and some other dependencies like NodeJS (6.9), Ruby (2.3.3) and Sass.

You can use it to download client-side libraries via Bower, download NodeJS modules via npm, run Gulp tasks to generate CSS from SASS/SCSS sources 
using compass or sass.

## How to use it

You need Docker installed on your machine, and then you can run everything in a container. 
In order to work with your project files, you have to go into your project root and mount
the directory into the container. 

Run a command:
```bash
docker run -it --rm -v $(pwd):$(pwd) --workdir=$(pwd) itsziget/frontend-utils COMMAND
```
 
Example:
```bash
docker run -it --rm -v $(pwd):$(pwd) --workdir=$(pwd) itsziget/frontend-utils bower install
```

There are downloadable scripts you can copy into a directory in $PATH to use it as if that commands 
were not inside a container. 

Install NPM
```bash
wget https://raw.githubusercontent.com/itsziget/docker-frontend-utils/master/host-scripts/npm.sh -O /usr/local/bin/npm && chmod +x /usr/local/bin/npm
```

Install Bower
```bash
wget https://raw.githubusercontent.com/itsziget/docker-frontend-utils/master/host-scripts/bower.sh -O /usr/local/bin/bower && chmod +x /usr/local/bin/bower
```

Install Gulp
```bash
wget https://raw.githubusercontent.com/itsziget/docker-frontend-utils/master/host-scripts/gulp.sh -O /usr/local/bin/gulp && chmod +x /usr/local/bin/gulp
```

Install SASS
```bash
wget https://raw.githubusercontent.com/itsziget/docker-frontend-utils/master/host-scripts/sass.sh -O /usr/local/bin/sass && chmod +x /usr/local/bin/sass
```

Install Compass
```bash
wget https://raw.githubusercontent.com/itsziget/docker-frontend-utils/master/host-scripts/compass.sh -O /usr/local/bin/compass && chmod +x /usr/local/bin/compass
```

These works only when you don't need other directory than the one you are in. If you need work with other directories,
you create your own scripts and mount additional directories into the container:

```bash
docker run -it --rm -v /my/additional/local/path:/my/additional/local/path -v $(pwd):$(pwd) --workdir=$(pwd) itsziget/frontend-utils gulp
```

Make sure the path on your host machine is the same as on guest.