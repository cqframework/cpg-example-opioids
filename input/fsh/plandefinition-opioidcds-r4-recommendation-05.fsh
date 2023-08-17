Instance: opioidcds-r4-recommendation-05
InstanceOf: PlanDefinition
Usage: #example
* url = "http://fhir.org/guides/cdc/opioid-cds/PlanDefinition/opioidcds-r4-recommendation-05"
* version = "0.1.0"
* name = "OpioidCDS_R4_Recommendation_05"
* title = "CDC Opioid Prescribing Guideline Recommendation #5"
* type = $plan-definition-type#eca-rule "ECA Rule"
* status = #draft
* experimental = true
* date = "2017-04-23"
* publisher = "Centers for Disease Control and Prevention (CDC)"
* description = "When opioids are started, providers should prescribe the lowest effective dosage."
* useContext[0]
  * code = $usage-context-type#focus "Clinical Focus"
  * valueCodeableConcept = $sct#182888003 "Medication requested (situation)"
* useContext[+]
  * code = $usage-context-type#focus "Clinical Focus"
  * valueCodeableConcept = $sct#82423001 "Chronic pain (finding)"
* jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* purpose = "CDC’s Guideline for Prescribing Opioids for Chronic Pain is intended to improve communication between providers and patients about the risks and benefits of opioid therapy for chronic pain, improve the safety and effectiveness of pain treatment, and reduce the risks associated with long-term opioid therapy, including opioid use disorder and overdose. The Guideline is not intended for patients who are in active cancer treatment, palliative care, or end-of-life care."
* usage = "Providers should use caution when prescribing opioids at any dosage, should carefully reassess evidence of individual benefits and risks when considering increasing dosage to ≥50 morphine milligram equivalents (MME)/day, and should avoid increasing dosage to ≥90 MME/day or carefully justify a decision to titrate dosage to >90 MME/day"
* copyright = "© CDC 2016+."
* topic.text = "Opioid Prescribing"
* author[0].name = "Kensaku Kawamoto, MD, PhD, MHS"
* author[+].name = "Bryn Rhodes"
* author[+].name = "Floyd Eisenberg, MD, MPH"
* author[+].name = "Robert McClure, MD, MPH"
* relatedArtifact
  * type = #documentation
  * display = "MME Conversion Tables"
  * url = "https://www.cdc.gov/drugoverdose/pdf/calculating_total_daily_dose-a.pdf"
* library = "http://fhir.org/guides/cdc/opioid-cds/Library/OpioidCDSR4Recommendation05"
* action
  * title = "High risk for opioid overdose."
  * description = "Total morphine milligram equivalent (MME) exceeds recommended amount. Taper to less than 50."
  * documentation[0]
    * type = #documentation
    * display = "CDC guideline for prescribing opioids for chronic pain"
    * document
      * extension[0]
        * url = "http://hl7.org/fhir/StructureDefinition/cqf-strengthOfRecommendation"
        * valueCodeableConcept = $recommendation-strength#strong "Strong"
      * extension[+]
        * url = "http://hl7.org/fhir/StructureDefinition/cqf-qualityOfEvidence"
        * valueCodeableConcept = $evidence-quality#low "Low quality"
      * url = "https://www.cdc.gov/mmwr/volumes/65/rr/rr6501e1.htm?CDC_AA_refVal=https%3A%2F%2Fwww.cdc.gov%2Fmmwr%2Fvolumes%2F65%2Frr%2Frr6501e1er.htm"
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
    * fhir_comments = "Will reduce dosage"
  * action[+]
    * description = "Risk of overdose carefully considered and outweighed by benefit; snooze 3 mo"
    * fhir_comments = "Risk of overdose carefully considered and outweighed by benefit; snooze 3 mo"
  * action[+]
    * description = "Acute pain; snooze 1 mo"
    * fhir_comments = "Acute pain; snooze 1 mo"
  * action[+]
    * description = "N/A - see comment (will be reviewed by medical director); snooze 3 mo"
      * fhir_comments[0] = "TODO: How do we indicate through the response that a comment must be captured?"
      * fhir_comments[+] = "TODO: How do we communicate the response back to the CDS service for persistence?"
    * fhir_comments = "N/A - see comment (will be reviewed by medical director); snooze 3 mo"