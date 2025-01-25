# DDNetHvH Server - KoG

A dedicated server for DDNet (DDraceNetwork) featuring Hacker vs Hacker gameplay in King of Gores mode.

# Installation

## Clone the repository
```sh
git clone https://github.com/ddnethvh/ddnet
cd ddnet
```

## Clone the libraries
```sh
git clone https://github.com/ddnet/ddnet-libs/
```

## Build the server
```sh
mkdir build
cd build
cmake ..
make -j$(nproc)
```

## Run the server
```sh
./ddnet-server
```

## Clone the maps
```sh
git clone https://github.com/teemods/opengores-maps
cd opengores-maps
rm -rf maps7 scripts
mv maps ../maps/
```

## Remove the maps (optional)
```sh
ls *.map | shuf | tail -n +50 | xargs -d '\n' rm
```