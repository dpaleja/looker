view: dw_service_details {
  sql_table_name: dbo.DW_ServiceDetails ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: acclassification {
    type: string
    sql: ${TABLE}.ACClassification ;;
  }

  dimension: acclassification_group {
    type: string
    sql: ${TABLE}.ACClassificationGroup ;;
  }

  dimension: account_code {
    type: string
    sql: ${TABLE}.AccountCode ;;
  }

  dimension: account_code_name {
    type: string
    sql: ${TABLE}.AccountCodeName ;;
  }

  dimension: allocation_annual_amount {
    type: number
    sql: ${TABLE}.AllocationAnnualAmount ;;
  }

  dimension: annual_fte {
    type: number
    sql: ${TABLE}.AnnualFte ;;
  }

  dimension: bsclassification {
    type: string
    sql: ${TABLE}.BSClassification ;;
  }

  dimension: bsclassification2 {
    type: string
    sql: ${TABLE}.BSClassification2 ;;
  }

  dimension: bsclassification_group {
    type: string
    sql: ${TABLE}.BSClassificationGroup ;;
  }

  dimension: bsclassification_group2 {
    type: string
    sql: ${TABLE}.BSClassificationGroup2 ;;
  }

  dimension: bsgross_cost {
    type: number
    sql: ${TABLE}.BSGrossCost ;;
  }

  dimension: bsspec_rate {
    type: number
    sql: ${TABLE}.BSSpecRate ;;
  }

  dimension: bsunit_count {
    type: number
    sql: ${TABLE}.BSUnitCount ;;
  }

  dimension: bsunits_charged {
    type: number
    sql: ${TABLE}.BSUnitsCharged ;;
  }

  dimension: ccclassification {
    type: string
    sql: ${TABLE}.CCClassification ;;
  }

  dimension: ccclassification2 {
    type: string
    sql: ${TABLE}.CCClassification2 ;;
  }

  dimension: ccclassification_group {
    type: string
    sql: ${TABLE}.CCClassificationGroup ;;
  }

  dimension: ccclassification_group2 {
    type: string
    sql: ${TABLE}.CCClassificationGroup2 ;;
  }

  dimension_group: contract_end {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.ContractEnd ;;
  }

  dimension: contract_flag {
    type: string
    sql: ${TABLE}.ContractFlag ;;
  }

  dimension_group: contract_start {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.ContractStart ;;
  }

  dimension: contract_supplier {
    type: string
    sql: ${TABLE}.ContractSupplier ;;
  }

  dimension: contract_type {
    type: string
    sql: ${TABLE}.ContractType ;;
  }

  dimension: cost_category {
    type: string
    sql: ${TABLE}.CostCategory ;;
  }

  dimension: cost_centre_code {
    type: string
    sql: ${TABLE}.CostCentreCode ;;
  }

  dimension: cost_centre_name {
    type: string
    sql: ${TABLE}.CostCentreName ;;
  }

  dimension: exmonth10_amount {
    type: number
    sql: ${TABLE}.EXMonth10Amount ;;
  }

  dimension: exmonth11_amount {
    type: number
    sql: ${TABLE}.EXMonth11Amount ;;
  }

  dimension: exmonth12_amount {
    type: number
    sql: ${TABLE}.EXMonth12Amount ;;
  }

  dimension: exmonth1_amount {
    type: number
    sql: ${TABLE}.EXMonth1Amount ;;
  }

  dimension: exmonth2_amount {
    type: number
    sql: ${TABLE}.EXMonth2Amount ;;
  }

  dimension: exmonth3_amount {
    type: number
    sql: ${TABLE}.EXMonth3Amount ;;
  }

  dimension: exmonth4_amount {
    type: number
    sql: ${TABLE}.EXMonth4Amount ;;
  }

  dimension: exmonth5_amount {
    type: number
    sql: ${TABLE}.EXMonth5Amount ;;
  }

  dimension: exmonth6_amount {
    type: number
    sql: ${TABLE}.EXMonth6Amount ;;
  }

  dimension: exmonth7_amount {
    type: number
    sql: ${TABLE}.EXMonth7Amount ;;
  }

  dimension: exmonth8_amount {
    type: number
    sql: ${TABLE}.EXMonth8Amount ;;
  }

  dimension: exmonth9_amount {
    type: number
    sql: ${TABLE}.EXMonth9Amount ;;
  }

  dimension: expense_item_annual_amount {
    type: number
    sql: ${TABLE}.ExpenseItemAnnualAmount ;;
  }

  dimension: expense_item_description {
    type: string
    sql: ${TABLE}.ExpenseItemDescription ;;
  }

  dimension: fte_type {
    type: number
    sql: ${TABLE}.FteType ;;
  }

  dimension: ftecount1 {
    type: number
    sql: ${TABLE}.FTECount1 ;;
  }

  dimension: ftecount10 {
    type: number
    sql: ${TABLE}.FTECount10 ;;
  }

  dimension: ftecount11 {
    type: number
    sql: ${TABLE}.FTECount11 ;;
  }

  dimension: ftecount12 {
    type: number
    sql: ${TABLE}.FTECount12 ;;
  }

  dimension: ftecount2 {
    type: number
    sql: ${TABLE}.FTECount2 ;;
  }

  dimension: ftecount3 {
    type: number
    sql: ${TABLE}.FTECount3 ;;
  }

  dimension: ftecount4 {
    type: number
    sql: ${TABLE}.FTECount4 ;;
  }

  dimension: ftecount5 {
    type: number
    sql: ${TABLE}.FTECount5 ;;
  }

  dimension: ftecount6 {
    type: number
    sql: ${TABLE}.FTECount6 ;;
  }

  dimension: ftecount7 {
    type: number
    sql: ${TABLE}.FTECount7 ;;
  }

  dimension: ftecount8 {
    type: number
    sql: ${TABLE}.FTECount8 ;;
  }

  dimension: ftecount9 {
    type: number
    sql: ${TABLE}.FTECount9 ;;
  }

  dimension: is_overhead {
    type: string
    sql: ${TABLE}.IsOverhead ;;
  }

  dimension: job_class {
    type: string
    sql: ${TABLE}.JobClass ;;
  }

  dimension: percentage {
    type: number
    sql: ${TABLE}.Percentage ;;
  }

  dimension: reference {
    type: string
    sql: ${TABLE}.Reference ;;
  }

  dimension: scclassification {
    type: string
    sql: ${TABLE}.SCClassification ;;
  }

  dimension: scclassification2 {
    type: string
    sql: ${TABLE}.SCClassification2 ;;
  }

  dimension: scclassification_group {
    type: string
    sql: ${TABLE}.SCClassificationGroup ;;
  }

  dimension: scclassification_group2 {
    type: string
    sql: ${TABLE}.SCClassificationGroup2 ;;
  }

  dimension: scpercentage1 {
    type: number
    sql: ${TABLE}.SCPercentage1 ;;
  }

  dimension: scpercentage10 {
    type: number
    sql: ${TABLE}.SCPercentage10 ;;
  }

  dimension: scpercentage11 {
    type: number
    sql: ${TABLE}.SCPercentage11 ;;
  }

  dimension: scpercentage12 {
    type: number
    sql: ${TABLE}.SCPercentage12 ;;
  }

  dimension: scpercentage2 {
    type: number
    sql: ${TABLE}.SCPercentage2 ;;
  }

  dimension: scpercentage3 {
    type: number
    sql: ${TABLE}.SCPercentage3 ;;
  }

  dimension: scpercentage4 {
    type: number
    sql: ${TABLE}.SCPercentage4 ;;
  }

  dimension: scpercentage5 {
    type: number
    sql: ${TABLE}.SCPercentage5 ;;
  }

  dimension: scpercentage6 {
    type: number
    sql: ${TABLE}.SCPercentage6 ;;
  }

  dimension: scpercentage7 {
    type: number
    sql: ${TABLE}.SCPercentage7 ;;
  }

  dimension: scpercentage8 {
    type: number
    sql: ${TABLE}.SCPercentage8 ;;
  }

  dimension: scpercentage9 {
    type: number
    sql: ${TABLE}.SCPercentage9 ;;
  }

  dimension: scportion10_amount {
    type: number
    sql: ${TABLE}.SCPortion10Amount ;;
  }

  dimension: scportion11_amount {
    type: number
    sql: ${TABLE}.SCPortion11Amount ;;
  }

  dimension: scportion12_amount {
    type: number
    sql: ${TABLE}.SCPortion12Amount ;;
  }

  dimension: scportion1_amount {
    type: number
    sql: ${TABLE}.SCPortion1Amount ;;
  }

  dimension: scportion2_amount {
    type: number
    sql: ${TABLE}.SCPortion2Amount ;;
  }

  dimension: scportion3_amount {
    type: number
    sql: ${TABLE}.SCPortion3Amount ;;
  }

  dimension: scportion4_amount {
    type: number
    sql: ${TABLE}.SCPortion4Amount ;;
  }

  dimension: scportion5_amount {
    type: number
    sql: ${TABLE}.SCPortion5Amount ;;
  }

  dimension: scportion6_amount {
    type: number
    sql: ${TABLE}.SCPortion6Amount ;;
  }

  dimension: scportion7_amount {
    type: number
    sql: ${TABLE}.SCPortion7Amount ;;
  }

  dimension: scportion8_amount {
    type: number
    sql: ${TABLE}.SCPortion8Amount ;;
  }

  dimension: scportion9_amount {
    type: number
    sql: ${TABLE}.SCPortion9Amount ;;
  }

  dimension: service_code {
    type: string
    sql: ${TABLE}.ServiceCode ;;
  }

  dimension: service_component_code {
    type: string
    sql: ${TABLE}.ServiceComponentCode ;;
  }

  dimension: service_component_name {
    type: string
    sql: ${TABLE}.ServiceComponentName ;;
  }

  dimension: service_name {
    type: string
    sql: ${TABLE}.ServiceName ;;
  }

  dimension: xrefid {
    type: string
    sql: ${TABLE}.XREFID ;;
  }

  measure: count {
    type: count
    drill_fields: [id, service_component_name, cost_centre_name, account_code_name, service_name]
  }
}
