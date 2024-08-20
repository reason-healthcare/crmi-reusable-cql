#!/usr/bin/env bash

echo "Installing Shared..." && \
  (cd SharedIG && ./_updatePublisher.sh -y) && \
  echo "Installing Parent..." && \
  cp -r SharedIG/input-cache SharedChildIG/input-cache
  cp -r SharedIG/input-cache ParentIG/input-cache

