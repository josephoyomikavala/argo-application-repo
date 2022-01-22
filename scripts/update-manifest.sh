#!/bin/bash
cd manifest-repo/templates

envsubst < application-template.yaml > ../application.yaml
