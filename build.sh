#!/bin/bash

hexo clean
hexo generate

scp -rpq public/* jed.bz:/cygdrive/d/www/jed.bz