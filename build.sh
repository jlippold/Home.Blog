#!/bin/bash

hexo clean
hexo generate

scp -rpq /Users/Jed/Home.Blog/public/* jed.bz:/cygdrive/d/www/jed.bz