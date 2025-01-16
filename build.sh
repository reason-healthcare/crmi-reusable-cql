#!/usr/bin/env bash

echo "Building All IGs in order..." && \
  (cd SubDependencyIG && ./_genonce.sh) && \
  (cd DependencyIG && ./_genonce.sh) && \
  (cd ParentIG && ./_genonce.sh)
