view: dw_usage_allocations_current {
  sql_table_name: dbo.DW_UsageAllocations_Current ;;
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

  dimension: allocation_per {
    type: number
    sql: ${TABLE}.allocationPer ;;
  }

  dimension: amount_override {
    type: number
    sql: ${TABLE}.AmountOverride ;;
  }

  dimension: annual_amount {
    type: number
    sql: ${TABLE}.AnnualAmount ;;
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

  dimension: bscode {
    type: string
    sql: ${TABLE}.BSCode ;;
  }

  dimension: bsconverted_charge {
    type: number
    sql: ${TABLE}.BSConvertedCharge ;;
  }

  dimension: bsgross_cost {
    type: number
    sql: ${TABLE}.BSGrossCost ;;
  }

  dimension: bsgroup_name {
    type: string
    sql: ${TABLE}.BSGroupName ;;
  }

  dimension: bsgroup_name2 {
    type: string
    sql: ${TABLE}.BSGroupName2 ;;
  }

  dimension: bsname {
    type: string
    sql: ${TABLE}.BSName ;;
  }

  dimension: bsportion {
    type: number
    sql: ${TABLE}.BSPortion ;;
  }

  dimension: bsprimary_charge {
    type: number
    sql: ${TABLE}.BSPrimaryCharge ;;
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

  dimension: charge_account_code {
    type: string
    sql: ${TABLE}.ChargeAccountCode ;;
  }

  dimension: charge_cost_category {
    type: string
    sql: ${TABLE}.ChargeCostCategory ;;
  }

  dimension: classification {
    type: string
    sql: ${TABLE}.Classification ;;
  }

  dimension: classification2 {
    type: string
    sql: ${TABLE}.Classification2 ;;
  }

  dimension: code {
    type: string
    sql: ${TABLE}.Code ;;
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

  dimension: converted_charge {
    type: number
    sql: ${TABLE}.ConvertedCharge ;;
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

  dimension: csgroup_name {
    type: string
    sql: ${TABLE}.CSGroupName ;;
  }

  dimension: csgroup_name2 {
    type: string
    sql: ${TABLE}.CSGroupName2 ;;
  }

  dimension: csportion {
    type: number
    sql: ${TABLE}.CSPortion ;;
  }

  dimension: csrate_spec_recalc {
    type: number
    sql: ${TABLE}.CSRateSpecRecalc ;;
  }

  dimension: csunit_charge {
    type: number
    sql: ${TABLE}.CSUnitCharge ;;
  }

  dimension: csunit_count {
    type: number
    sql: ${TABLE}.CSUnitCount ;;
  }

  dimension: csunit_type {
    type: string
    sql: ${TABLE}.CSUnitType ;;
  }

  dimension: csvolume_spec {
    type: number
    sql: ${TABLE}.CSVolumeSpec ;;
  }

  dimension: description1 {
    type: string
    sql: ${TABLE}.Description1 ;;
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

  dimension: funding_source {
    type: string
    sql: ${TABLE}.FundingSource ;;
  }

  dimension: group_class {
    type: string
    sql: ${TABLE}.GroupClass ;;
  }

  dimension: group_class2 {
    type: string
    sql: ${TABLE}.GroupClass2 ;;
  }

  dimension: group_name {
    type: string
    sql: ${TABLE}.GroupName ;;
  }

  dimension: group_name2 {
    type: string
    sql: ${TABLE}.GroupName2 ;;
  }

  dimension: is_cross_charge {
    type: string
    sql: ${TABLE}.IsCrossCharge ;;
  }

  dimension: is_overhead {
    type: string
    sql: ${TABLE}.IsOverhead ;;
  }

  dimension: job_class {
    type: string
    sql: ${TABLE}.JobClass ;;
  }

  dimension: justification1 {
    type: string
    sql: ${TABLE}.Justification1 ;;
  }

  dimension: month10_charge {
    type: number
    sql: ${TABLE}.Month10Charge ;;
  }

  dimension: month11_charge {
    type: number
    sql: ${TABLE}.Month11Charge ;;
  }

  dimension: month12_charge {
    type: number
    sql: ${TABLE}.Month12Charge ;;
  }

  dimension: month1_charge {
    type: number
    sql: ${TABLE}.Month1Charge ;;
  }

  dimension: month2_charge {
    type: number
    sql: ${TABLE}.Month2Charge ;;
  }

  dimension: month3_charge {
    type: number
    sql: ${TABLE}.Month3Charge ;;
  }

  dimension: month4_charge {
    type: number
    sql: ${TABLE}.Month4Charge ;;
  }

  dimension: month5_charge {
    type: number
    sql: ${TABLE}.Month5Charge ;;
  }

  dimension: month6_charge {
    type: number
    sql: ${TABLE}.Month6Charge ;;
  }

  dimension: month7_charge {
    type: number
    sql: ${TABLE}.Month7Charge ;;
  }

  dimension: month8_charge {
    type: number
    sql: ${TABLE}.Month8Charge ;;
  }

  dimension: month9_charge {
    type: number
    sql: ${TABLE}.Month9Charge ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: percent_override {
    type: number
    sql: ${TABLE}.PercentOverride ;;
  }

  dimension: percentage {
    type: number
    sql: ${TABLE}.Percentage ;;
  }

  dimension: primary_bs {
    type: string
    sql: ${TABLE}.PrimaryBS ;;
  }

  dimension: primary_charge {
    type: number
    sql: ${TABLE}.PrimaryCharge ;;
  }

  dimension: primary_cs {
    type: string
    sql: ${TABLE}.PrimaryCS ;;
  }

  dimension: rate_spec {
    type: number
    sql: ${TABLE}.RateSpec ;;
  }

  dimension: rate_spec_recalc {
    type: number
    sql: ${TABLE}.RateSpecRecalc ;;
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

  dimension: service_reference {
    type: string
    sql: ${TABLE}.ServiceReference ;;
  }

  dimension: unit_charge {
    type: number
    sql: ${TABLE}.UnitCharge ;;
  }

  dimension: unit_count {
    type: number
    sql: ${TABLE}.UnitCount ;;
  }

  dimension: unit_count1 {
    type: string
    sql: ${TABLE}.UnitCount1 ;;
  }

  dimension: unit_type {
    type: string
    sql: ${TABLE}.UnitType ;;
  }

  dimension: volume_spec {
    type: number
    sql: ${TABLE}.VolumeSpec ;;
  }

  dimension: xrefid {
    type: string
    sql: ${TABLE}.XREFID ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      name,
      group_name,
      service_name,
      bsgroup_name,
      service_component_name,
      cost_centre_name,
      account_code_name,
      bsname,
      csgroup_name
    ]
  }
}
