
# Node.js Docker Image

## Build
```
docker build --force-rm=true --no-cache=true --shm-size=1G -t hkneptune/nodejs:latest -f Dockerfile .
```

## Run
```
docker run -d hkneptune/nodejs:latest tail -f /dev/null
```

## License

Copyright (c) 2019 Neptune LI. All rights reserved.

Licensed under the [MIT](LICENSE.txt) License.
