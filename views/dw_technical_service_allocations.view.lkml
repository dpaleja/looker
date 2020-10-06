view: dw_technical_service_allocations {
  sql_table_name: dbo.DW_TechnicalServiceAllocations ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
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

  dimension: bsclassification {
    type: string
    sql: ${TABLE}.BSClassification ;;
  }

  dimension: bsclassification2 {
    type: string
    sql: ${TABLE}.BSClassification2 ;;
  }

  dimension: bsgroup_name {
    type: string
    sql: ${TABLE}.BSGroupName ;;
  }

  dimension: bsgroup_name2 {
    type: string
    sql: ${TABLE}.BSGroupName2 ;;
  }

  dimension: charge_account_code {
    type: string
    sql: ${TABLE}.ChargeAccountCode ;;
  }

  dimension: charge_cost_category {
    type: string
    sql: ${TABLE}.ChargeCostCategory ;;
  }

  dimension: code {
    type: string
    sql: ${TABLE}.Code ;;
  }

  dimension: csclassification {
    type: string
    sql: ${TABLE}.CSClassification ;;
  }

  dimension: csclassification2 {
    type: string
    sql: ${TABLE}.CSClassification2 ;;
  }

  dimension: csgroup_name {
    type: string
    sql: ${TABLE}.CSGroupName ;;
  }

  dimension: csgroup_name2 {
    type: string
    sql: ${TABLE}.CSGroupName2 ;;
  }

  dimension: description1 {
    type: string
    sql: ${TABLE}.Description1 ;;
  }

  dimension: funding_source {
    type: string
    sql: ${TABLE}.FundingSource ;;
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

  measure: count {
    type: count
    drill_fields: [id, name, csgroup_name, service_name, bsgroup_name]
  }
}
