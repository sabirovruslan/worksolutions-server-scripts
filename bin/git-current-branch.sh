#!/bin/sh

git branch | grep '*' | sed -e "s/* //"