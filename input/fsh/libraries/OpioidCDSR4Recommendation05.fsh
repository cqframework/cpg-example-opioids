Instance: OpioidCDSR4Recommendation05
InstanceOf: Library
Usage: #example
Title: "Opioid CDS R4 Logic for recommendation #5"
* insert DefinitionMetadata(Library, OpioidCDSR4Recommendation05)
* name = "OpioidCDSR4Recommendation05"
* type = $library-type#logic-library "Logic Library"
* description = "Opioid Decision Support Logic for use in implementing CDC Opioid Prescribing Guidelines."
* purpose = "This library works in concert with the OMTK logic library to provide decision support for Morphine Milligram Equivalence calculations and dynamic value resolution."
* usage = "This library is to notify the prescriber/user whether the current prescription exceeds the recommended MME."
* relatedArtifact[0]
  * type = #documentation
  * display = "CDC guideline for prescribing opioids for chronic pain"
  * url = $cdc-prescribing-guideline
* relatedArtifact[+]
  * type = #depends-on
  * resource = Canonical(OpioidCDSR4Common)
* relatedArtifact[+]
  * type = #documentation
  * display = "MME Conversion Tables"
  * url = $cdc-calculating-dose
* dataRequirement
  * id = "medications"
  * type = #MedicationRequest
  * codeFilter[0]
    * path = "status"
    * code = $medicationrequest-status#active
  * codeFilter[+]
    * path = "category"
    * code = $medicationrequest-category#outpatient
* content.id = "ig-loader-OpioidCDSR4Recommendation05.cql"

