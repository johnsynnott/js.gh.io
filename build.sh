#!/bin/bash/
hugo
rm -rv public/*
cp public/* ../johnsynnott.github.io
