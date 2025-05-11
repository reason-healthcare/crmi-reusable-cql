library fhir.parent.ParentLibrary

include fhir.dependency.DependencyLibrary called Dependency

define "message chain": 
  1 + Dependency."from dependency"

define "Common code from dependency": Dependency."Common code from dependency"