view: dw_combined_usage_service_summarised {
  sql_table_name: dbo.DW_CombinedUsageServiceSummarised ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
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

  dimension: bscode {
    type: string
    sql: ${TABLE}.BSCode ;;
  }

  dimension: bsconverted_charge {
    type: number
    sql: ${TABLE}.BSConvertedCharge ;;
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

  dimension: ccclassification {
    type: string
    sql: ${TABLE}.CCClassification ;;
  }

  dimension: ccclassification_group {
    type: string
    sql: ${TABLE}.CCClassificationGroup ;;
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

  dimension: description1 {
    type: string
    sql: ${TABLE}.Description1 ;;
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

  dimension: service_code {
    type: string
    sql: ${TABLE}.ServiceCode ;;
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
      cost_centre_name,
      account_code_name,
      bsname,
      csgroup_name
    ]
  }
}
