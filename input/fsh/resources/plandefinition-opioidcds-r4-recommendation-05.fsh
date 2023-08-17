Instance: opioidcds-r4-recommendation-05
InstanceOf: PlanDefinition
Usage: #example
Title: "CDC Opioid Prescribing Guideline Recommendation #5"
* insert DefinitionMetadata(PlanDefinition, opioidcds-r4-recommendation-05)
* insert PlanDefinitionPurposeAndUsage
* insert UseContext([[$sct#182888003]], [[Medication requested (situation)]])
* insert UseContext([[$sct#82423001]], [[Chronic pain (finding)]])
* description = "When opioids are started, providers should prescribe the lowest effective dosage."
* name = "OpioidCDS_R4_Recommendation_05"
* topic.text = "Opioid Prescribing"
* type = $plan-definition-type#eca-rule "ECA Rule"
* library = Canonical(OpioidCDSR4Recommendation05)
* relatedArtifact
  * type = #documentation
  * display = "MME Conversion Tables"
  * url = $cdc-calculating-dose
* action
  * title = "High risk for opioid overdose."
  * description = "Total morphine milligram equivalent (MME) exceeds recommended amount. Taper to less than 50."
  * documentation[0]
    * type = #documentation
    * display = "CDC guideline for prescribing opioids for chronic pain"
    * document
      * extension[0]
        * url = Canonical(cqf-strengthOfRecommendation)
        * valueCodeableConcept = $recommendation-strength#strong "Strong"
      * extension[+]
        * url = Canonical(cqf-qualityOfEvidence)
        * valueCodeableConcept = $evidence-quality#low "Low quality"
      * url = $cdc-prescribing-guideline
  * documentation[+].type = #documentation
  * trigger
    * type = #named-event
    * name = "medication-prescribe"
  * condition
    * kind = #applicability
    * expression
      * description = "Is total MME >= 50?"
      * language = #text/cql
      * expression = "Inclusion Criteria"
  * groupingBehavior = #visual-group
  * selectionBehavior = #exactly-one
  * dynamicValue[0]
    * path = "action.title"
    * expression
      * language = #text/cql
      * expression = "Get Summary"
  * dynamicValue[+]
    * path = "action.description"
    * expression
      * language = #text/cql
      * expression = "Get Detail"
  * dynamicValue[+]
    * path = "activity.extension"
    * expression
      * language = #text/cql
      * expression = "Get Indicator"
  * action[0]
    * description = "Will reduce dosage"
    // "Will reduce dosage"
  * action[+]
    * description = "Risk of overdose carefully considered and outweighed by benefit; snooze 3 mo"
    // "Risk of overdose carefully considered and outweighed by benefit; snooze 3 mo"
  * action[+]
    * description = "Acute pain; snooze 1 mo"
    // "Acute pain; snooze 1 mo"
  * action[+]
    * description = "N/A - see comment (will be reviewed by medical director); snooze 3 mo"
      // "TODO: How do we indicate through the response that a comment must be captured?"
      // "TODO: How do we communicate the response back to the CDS service for persistence?"
    // "N/A - see comment (will be reviewed by medical director); snooze 3 mo"