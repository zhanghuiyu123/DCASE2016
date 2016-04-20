#!/bin/bash

for conf in experiments/*.yaml; do
	cp $conf task1_scene_classification.yaml
        python task1_scene_classification.py 2>&1 | tee "$conf.log"
done

