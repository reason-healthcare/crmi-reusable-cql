# Demonstration of reusing CQL with namespaces

* Run the setup scripts identified below
* Run `./cql-to-elm-cli/bin/cql-to-elm-cli --input ./DependencyIG/input/cql/DependencyLibrary.cql` to see the error

## Setup

Install IGPublisher.jar:
```
./install.sh
```

## Build

Build all IGs in parallel:
```
./build.sh
```

## BUG

Converting `input/cql/ParentLibrary.cql` to ELM causes a namespace resolution error when using the latest build of the `cql-to-elm-cli`.
This occurs in the opensource VSCode extension as well, but I've narrowed it down to the actual translator. 
<img width="1008" alt="image" src="https://github.com/user-attachments/assets/396ab28a-d37f-49f9-ba40-21434605dc7b">


