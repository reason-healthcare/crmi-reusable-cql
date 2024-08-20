library fhir.shared.SharedLibrary version '0.0.1'

include fhir.sharedchild.SharedChildLibrary version '0.0.1' called SharedChild 

define "from shared": 
  'from shared library' + SharedChild."from shared child"
