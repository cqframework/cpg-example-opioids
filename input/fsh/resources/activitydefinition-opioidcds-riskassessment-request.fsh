Instance: opioidcds-riskassessment-request
InstanceOf: CPGComputableActivityDefinition
Usage: #definition
Title: "CDC Opioid Prescribing Guideline Recommendation #7 - Risk Assessment ProcedureRequest"
* insert DefinitionMetadata(ActivityDefinition, opioidcds-riskassessment-request)
* insert ActivityDefinitionPurposeAndUsage
* insert UseContext([[$sct#225314003]], [[Risk management (procedure)]])
* name = "OpioidCDS_RiskAssessment_Request"
* description = "As part of the workflow for recommendation 7, it is recommended that a risk assessment be conducted if the inclusion criteria is met."
* topic = $definition-topic#assessment "Assessment"
  * text = "Opioid Prescribing"
* kind = #ServiceRequest
* code = $sct#454281000124100 "Assessment of risk for opioid abuse (procedure)"