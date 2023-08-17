Instance: OpioidCDSR4Recommendation05
InstanceOf: Library
Usage: #example
* url = "http://fhir.org/guides/cdc/opioid-cds/Library/OpioidCDSR4Recommendation05"
* version = "0.1.0"
* name = "OpioidCDSR4Recommendation05"
* title = "Opioid CDS R4 Logic for recommendation #5"
* status = #active
* experimental = true
* type = $library-type#logic-library "Logic Library"
* date = "2018-04-15T13:49:09-06:00"
* publisher = "Centers for Disease Control and Prevention (CDC)"
* description = "Opioid Decision Support Logic for use in implementing CDC Opioid Prescribing Guidelines."
* useContext[0]
  * code = $usage-context-type#focus "Clinical Focus"
  * valueCodeableConcept = $sct#182888003 "Medication requested (situation)"
* useContext[+]
  * code = $usage-context-type#focus "Clinical Focus"
  * valueCodeableConcept = $sct#82423001 "Chronic pain (finding)"
* jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* purpose = "This library works in concert with the OMTK logic library to provide decision support for Morphine Milligram Equivalence calculations and dynamic value resolution."
* usage = "This library is to notify the prescriber/user whether the current prescription exceeds the recommended MME."
* copyright = "© CDC 2016+."
* topic.text = "Opioid Prescribing"
* author[0].name = "Kensaku Kawamoto, MD, PhD, MHS"
* author[+].name = "Bryn Rhodes"
* author[+].name = "Floyd Eisenberg, MD, MPH"
* author[+].name = "Robert McClure, MD, MPH"
* relatedArtifact[0]
  * type = #documentation
  * display = "CDC guideline for prescribing opioids for chronic pain"
  * url = "https://www.cdc.gov/mmwr/volumes/65/rr/rr6501e1.htm?CDC_AA_refVal=https%3A%2F%2Fwww.cdc.gov%2Fmmwr%2Fvolumes%2F65%2Frr%2Frr6501e1er.htm"
* relatedArtifact[+]
  * type = #depends-on
  * resource = "http://fhir.org/guides/cdc/opioid-cds/Library/OpioidCDSR4Common"
* relatedArtifact[+]
  * type = #documentation
  * display = "MME Conversion Tables"
  * url = "https://www.cdc.gov/drugoverdose/pdf/calculating_total_daily_dose-a.pdf"
* dataRequirement
  * id = "medications"
  * type = #MedicationRequest
  * codeFilter[0]
    * path = "status"
    * code = $medicationrequest-status#active
  * codeFilter[+]
    * path = "category"
    * code = $medicationrequest-category#outpatient
* content
  * contentType = #text/cql
  * data = "bGlicmFyeSBPcGlvaWRDRFNSNFJlY29tbWVuZGF0aW9uMDUgdmVyc2lvbiAnMC4xLjAnCgp1c2luZyBGSElSIHZlcnNpb24gJzQuMC4wJwoKaW5jbHVkZSBPcGlvaWRDRFNSNENvbW1vbiB2ZXJzaW9uICcwLjEuMCcgY2FsbGVkIENvbW1vbgoKLyoKKioKKiogUmVjb21tZW5kYXRpb24gIzUKKioKKi8KCi8qCiAgUGxhbiBEZWZpbml0aW9uOgoJaHR0cDovL2J1aWxkLmZoaXIub3JnL2lnL2NxZnJhbWV3b3JrL29waW9pZC1jZHMvUGxhbkRlZmluaXRpb24tb3Bpb2lkY2RzLXI0LXJlY29tbWVuZGF0aW9uLTA1Lmh0bWwKKi8KCnBhcmFtZXRlciBDb250ZXh0UHJlc2NyaXB0aW9ucyBMaXN0PE1lZGljYXRpb25SZXF1ZXN0PgoKY29udGV4dCBQYXRpZW50CgpkZWZpbmUgIkluY2x1c2lvbiBDcml0ZXJpYSI6CiAgQWdlSW5ZZWFycygpID49IDE4CiAgICBhbmQgbm90ICJFeGNsdXNpb24gQ3JpdGVyaWEiCiAgICBhbmQgIlRvdGFsIE1NRSIgPj0gNTAgJ21nL2QnCgpkZWZpbmUgIkV4Y2x1c2lvbiBDcml0ZXJpYSI6CiAgQ29tbW9uLiJFbmQgb2YgTGlmZSBBc3Nlc3NtZW50IgoKZGVmaW5lICJUb3RhbCBNTUUiOgogIENvbW1vbi5Ub3RhbE1NRShDb250ZXh0UHJlc2NyaXB0aW9ucyB1bmlvbiBDb21tb24uIkFjdGl2ZSBBbWJ1bGF0b3J5IE9waW9pZCBSeCIpCgpkZWZpbmUgIlRhcGVyIE5vdyI6ICJUb3RhbCBNTUUiLnZhbHVlID49IDkwCgpkZWZpbmUgIkNvbnNpZGVyIFRhcGVyaW5nIjogIlRvdGFsIE1NRSIudmFsdWUgPCA5MAoKZGVmaW5lICJHZXQgSW5kaWNhdG9yIjoKICBpZiAiSW5jbHVzaW9uIENyaXRlcmlhIgogICAgdGhlbiAnd2FybmluZycKICBlbHNlIG51bGwKCmRlZmluZSAiR2V0IFN1bW1hcnkiOgogIGlmICJJbmNsdXNpb24gQ3JpdGVyaWEiCiAgICB0aGVuCiAgICAgICdIaWdoIHJpc2sgZm9yIG9waW9pZCBvdmVyZG9zZSAtICcKICAgICAgICArIGNhc2Ugd2hlbiAiVGFwZXIgTm93IgogICAgICAgICAgIHRoZW4gJ3RhcGVyIG5vdycKICAgICAgICAgICBlbHNlICdjb25zaWRlciB0YXBlcmluZycKICAgICAgICAgZW5kCiAgZWxzZSBudWxsCgpkZWZpbmUgIkdldCBEZXRhaWwiOgogIGlmICJJbmNsdXNpb24gQ3JpdGVyaWEiCiAgICB0aGVuJ1RvdGFsIG1vcnBoaW5lIG1pbGxpZ3JhbSBlcXVpdmFsZW50IChNTUUpIGlzICcgKyBUb1N0cmluZygiVG90YWwgTU1FIikgKyAnLiBUYXBlciB0byBsZXNzIHRoYW4gNTAuJwogIGVsc2UgbnVsbAo="