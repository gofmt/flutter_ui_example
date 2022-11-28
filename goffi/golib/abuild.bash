#!/bin/bash

garble -literals  build -ldflags "-w -s" -trimpath -buildmode=c-shared -o ./libgo.a ./main.go