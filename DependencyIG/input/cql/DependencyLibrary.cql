library fhir.dependency.DependencyLibrary version '0.0.1'

include fhir.subdependency.SubDependencyLibrary version '0.0.1' called SubDependency

define "from dependency": 
  'from Dependency, and ' + SubDependency."from subdependency"
