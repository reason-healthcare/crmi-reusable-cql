library SubDependencyLibrary version '0.0.1'

include fhir.cqf.common.FHIRCommon version '4.0.1' called Common

define "from subdependency": 1

define "code from common": Common."Birthdate"