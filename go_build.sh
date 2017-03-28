#!/bin/bash

ls beeswax/ | 
	grep -v tools | 
	while read -r subdir; do
		protoc --go_out=. beeswax/$subdir/*proto;
	done
