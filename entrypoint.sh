#!/usr/bin/env bash

git config --global --add safe.directory $(pwd)
danger --verbose
