Instance: OpioidCDSR4Common
InstanceOf: Library
Usage: #example
Title: "Opioid CDS R4 Common Logic"
* insert LibraryMetadata(OpioidCDSR4Common)
* name = "OpioidCDSR4Common"
* type = $library-type#logic-library "Logic Library"
* description = "Common Opioid Decision Support Logic for use in implementing CDC Opioid Prescribing Guidelines."
* purpose = "This library contains common logic across recommendations including MME calculations, conversions, and looking up codes in valuesets."
* usage = "This library is used for decision support for opioid guideline recommendations when applying PlanDefinitions."
* relatedArtifact[0]
  * type = #documentation
  * display = "CDC guideline for prescribing opioids for chronic pain"
  * url = $cdc-prescribing-guideline
* relatedArtifact[+]
  * type = #depends-on
  * resource = Canonical(OMTKLogic)
* relatedArtifact[+]
  * type = #depends-on
  * url = "urn:hl7-org:elm-types:r1"
* dataRequirement[0]
  * type = #MedicationRequest
  * codeFilter
    * path = "medication"
    * valueSet = $opioids-abused-in-ambulatory-care
* dataRequirement[+]
  * type = #MedicationRequest
  * codeFilter
    * path = "medication"
    * valueSet = $benzodiazepines-medications
* dataRequirement[+]
  * type = #MedicationRequest
  * codeFilter
    * path = "medication"
    * valueSet = $naloxone-medications
* dataRequirement[+]
  * type = #MedicationRequest
  * codeFilter
    * path = "medication"
    * valueSet = $opioids-abused-in-ambulatory-care
* dataRequirement[+]
  * type = #Condition
  * codeFilter
    * path = "code"
    * valueSet = $end-of-life-conditions
* dataRequirement[+]
  * type = #Condition
  * codeFilter
    * path = "code"
    * valueSet = $limited-life-expectancy-conditions
* dataRequirement[+]
  * type = #ServiceRequest
  * codeFilter.path = "type"
* dataRequirement[+]
  * type = #Procedure
  * codeFilter
    * path = "code"
    * valueSet = $hospice-procedure
* dataRequirement[+]
  * type = #ServiceRequest
  * codeFilter
    * path = "code"
    * valueSet = $hospice-procedure
* dataRequirement[+]
  * type = #Observation
  * codeFilter
    * path = "code"
    * valueSet = $hospice-finding
* dataRequirement[+].type = #Encounter
* dataRequirement[+]
  * type = #MedicationAdministration
  * codeFilter
    * path = "code"
    * valueSet = $opioids-indicating-end-of-life
* dataRequirement[+]
  * type = #MedicationDispense
  * codeFilter
    * path = "code"
    * valueSet = $opioids-indicating-end-of-life
* dataRequirement[+]
  * type = #MedicationRequest
  * codeFilter
    * path = "code"
    * valueSet = $opioids-indicating-end-of-life
* content.id = "ig-loader-OpioidCDSR4Common.cql"

