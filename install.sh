#!/usr/bin/env bash

echo "Installing SubDependency..." && \
  (cd SubDependencyIG && ./_updatePublisher.sh -y) && \
  echo "Installing Dependency..." && \
  cp -r SubDependencyIG/input-cache DependencyIG/input-cache && \
  cp -r SubDependencyIG/*.sh DependencyIG/ && \
  echo "Installing Parent..." && \
  cp -r SubDependencyIG/input-cache ParentIG/input-cache && \
  cp -r SubDependencyIG/*.sh ParentIG/

