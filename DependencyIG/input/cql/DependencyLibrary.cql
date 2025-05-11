library DependencyLibrary version '0.0.1'

include fhir.subdependency.SubDependencyLibrary version '0.0.1' called SubDependency

define "from dependency": 
  1 + SubDependency."from subdependency"

define "Common code from dependency": SubDependency."code from common"