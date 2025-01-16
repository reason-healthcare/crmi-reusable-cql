#!/usr/bin/env bash

echo "Installing SubDependency..." && \
  (cd SubDependencyIG && ./_updatePublisher.sh -y) && \
  echo "Installing Dependency..." && \
  cp -rf SubDependencyIG/input-cache DependencyIG && \
  cp -rf SubDependencyIG/*.sh DependencyIG/ && \
  echo "Installing Parent..." && \
  cp -rf SubDependencyIG/input-cache ParentIG && \
  cp -rf SubDependencyIG/*.sh ParentIG/

