Instance: opioidcds-riskassessment-request
InstanceOf: ActivityDefinition
Usage: #example
* url = "http://fhir.org/guides/cdc/opioid-cds/ActivityDefinition/opioidcds-riskassessment-request"
* version = "0.1.0"
* name = "OpioidCDS_RiskAssessment_Request"
* title = "CDC Opioid Prescribing Guideline Recommendation #7 - Risk Assessment ProcedureRequest"
* status = #draft
* experimental = true
* date = "2018-04-24"
* publisher = "Centers for Disease Control and Prevention (CDC)"
* description = "As part of the workflow for recommendation 7, it is recommended that a risk assessment be conducted if the inclusion criteria is met."
* useContext
  * code = $usage-context-type#focus "Clinical Focus"
  * valueCodeableConcept = $sct#225314003 "Risk management (procedure)"
* jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* purpose = "Provides dynamic risk assessment suggestion as part of recommendation 7 workflow."
* usage = "Used to create a risk assessment ProcedureRequest when the inclusion criteria is satisfied for recommendation 7."
* copyright = "© CDC 2016+."
* topic = $definition-topic#assessment "Assessment"
  * text = "Opioid Prescribing"
* author[0].name = "Kensaku Kawamoto, MD, PhD, MHS"
* author[+].name = "Bryn Rhodes"
* author[+].name = "Floyd Eisenberg, MD, MPH"
* author[+].name = "Robert McClure, MD, MPH"
* kind = #ServiceRequest
* code = $sct#454281000124100 "Assessment of risk for opioid abuse (procedure)"