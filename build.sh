#!/usr/bin/env bash

echo "Building SharedChild..." && \
  (cd SharedChildIG && ./_genonce.sh) && \
  echo "Building Shared..." && \
  (cd SharedIG && ./_genonce.sh) && \
  echo "Building Parent..." && \
  (cd ParentIG && ./_genonce.sh)

