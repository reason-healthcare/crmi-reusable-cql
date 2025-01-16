# Demonstration of reusing CQL with namespaces

## Setup

Install IGPublisher.jar:
```
./install.sh
```

## Build

Build all IGs:
```
./build.sh
```

## Install the VSCode CQF Plugin

https://github.com/cqframework/vscode-cql

## Open VS Code in context of Parent

```
cd ParentIG
code .
```

## Buggy

Initially opening `input/cql/ParentLibrary.cql` causes Java backtraces when installing dependencies. See [error](plugin-error-initial-open-cql-file.txt). If you close the file, and reload VS Code. Or exit VS Code and reopen the same cql file, the error goes away.


## Working

✔ Syntax highlighting, and type hinting works with transitive dependencies

✔ View ELM

## Not Working

✖️ Execute CQL, see [error](execute-error-first-time.txt) and [error 2](execute-error-subsequent.txt)
  "org.opencds.cqf.cql.engine.exception.CqlException: library ParentLibrary loaded, but had errors: Could not resolve namespace name fhir.parent, Could not resolve namespace name fhir.dependency, Could not resolve identifier Dependency in the current library."


