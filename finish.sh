#!/bin/bash

original_dir=$(pwd)
new_dir=${original_dir}.COMPLETED

cd ..

mv $original_dir $new_dir 

cd $new_dir