#!/bin/bash

echo 'Building release binary'
scons target=template_release precision=double custom_api_file=extension_api.json

retVal=$?
if [ $retVal -ne 0 ]; then
    echo "Error during build"
    exit $retval
fi

echo 'Building debug binary'
scons target=template_debug precision=double custom_api_file=extension_api.json

# retVal=$?
# if [ $retVal -ne 0 ]; then
#     echo "Error during build"
#     exit $retval
# fi

