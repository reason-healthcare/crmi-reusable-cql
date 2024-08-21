#!/usr/bin/env bash

echo "Building All IGs in parallel..." && \
  (cd SubDependencyIG && ./_genonce.sh) & \
  (cd DependencyIG && ./_genonce.sh) & \
  (cd ParentIG && ./_genonce.sh) && wait