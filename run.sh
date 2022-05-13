#!/bin/bash

if [ -n "$KEY_NAME" ]
then
  NAME_OPTION="--name $KEY_NAME"
fi

if [ -n "$KEY_TOKEN" ]
then
  openport register-key --token $KEY_TOKEN $NAME_OPTION
fi

if [ -n "$PORT" ]
then
  openport $PORT $EXTRA_OPTIONS
fi

