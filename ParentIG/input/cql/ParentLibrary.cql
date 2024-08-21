library fhir.parent.ParentLibrary

include fhir.dependency.DependencyLibrary called Dependency

define "message chain": 
  'From parent, ' + Dependency."from dependency"