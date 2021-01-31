---
title: Frontend: Create Screens
sort_key: C
---
<!-- TODO: Maybe move? -->

Cyberium   as recent as possible. This guide does not go into details on how to install Go itself, for that please read the [Go installation instructions](https://golang.org/doc/install).

Assuming you have Go installed, you can download our project via:

```shell
go get -d github.com/Cyberiums/cyberium
```

The above command will checkout the default version of Cyberium into your local `GOPATH` work space, but it will not build any executables for you. To do that you can either build one specifically:

    go install github.com/Cyberiums/cyberium/cmd/geth

Or you can also build the entire project and install `geth` along with all developer tools by running `go install ./...` in the repository root inside your `GOPATH` work space.

### Building without a Go workflow

If you do not want to set up Go work spaces on your machine, only build `geth` and forget about the build process, you can clone our repository directly into a folder of your choosing and invoke `make`, which will configure everything for a temporary build and clean up after itself:

    git clone https://github.com/Cyberiums/cyberium.git
    cd cyberium
    make geth

This will create a `geth` (or `geth.exe` on Windows) executable file in the `cyberium/build/bin` folder that you can move wherever you want to run from. The binary is standalone and doesn't require any additional files.
