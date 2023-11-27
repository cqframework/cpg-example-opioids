Instance: OMTKLogic
InstanceOf: Library
Usage: #definition
Title: "OMTK Logic"
* insert LibraryMetadata(OMTKLogic)
* name = "OMTKLogic"
* type = $library-type#logic-library "Logic Library"
* publisher = "Centers for Disease Control and Prevention (CDC)"
* description = "Opioid Management Terminology Knowledge Base Logic for use in implementing CDC Opioid Prescribing Guidelines."
* purpose = "This library normalizes units to UCUM units, identifies the conversion factor for the given ingredient, identifies the non-surgical opioid ingredients and their strengths that make up a drug identified by the given rxNormCode, calculates daily dose for a specific ingredient based on the ingredient strength, dose form, dose quantity, and daily frequency, calculates daily frequency given frequency within a period, and calculates the Morphine Milligram Equivalency (MME) for a given prescription."
* usage = "This is a \"stub\" version of the OMTKLogic library that has no dependencies on the OMTK data. It provides a workable version of the logic suitable for example usage. For the full version of this library, see the CDC Opioid Prescribing Support Implementation Guide."
* relatedArtifact[0]
  * type = #documentation
  * display = "CDC guideline for prescribing opioids for chronic pain"
  * url = $cdc-prescribing-guideline
* relatedArtifact[+]
  * type = #documentation
  * display = "MME Conversion Tables"
  * url = $cdc-calculating-dose
* relatedArtifact[+]
  * type = #depends-on
  * url = "urn:hl7-org:elm-types:r1"
* content.id = "ig-loader-OMTKLogic.cql"
