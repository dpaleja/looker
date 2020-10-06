view: customer_unit {
  sql_table_name: dbo.CustomerUnit ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: _old_id {
    type: number
    sql: ${TABLE}._Old_ID ;;
  }

  dimension: bcharges {
    type: number
    sql: ${TABLE}.Bcharges ;;
  }

  dimension: budget_estimate {
    type: number
    sql: ${TABLE}.BudgetEstimate ;;
  }

  dimension: charge_bpercent_override {
    type: number
    sql: ${TABLE}.ChargeBPercentOverride ;;
  }

  dimension: charge_percent_override {
    type: number
    sql: ${TABLE}.ChargePercentOverride ;;
  }

  dimension: classification_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ClassificationID ;;
  }

  dimension: classification_id2 {
    type: number
    sql: ${TABLE}.ClassificationID2 ;;
  }

  dimension: code {
    type: string
    sql: ${TABLE}.Code ;;
  }

  dimension: conversion_id {
    type: number
    sql: ${TABLE}.ConversionID ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: funding_source2 {
    type: string
    sql: ${TABLE}.FundingSource2 ;;
  }

  dimension: is_bucket {
    type: string
    sql: ${TABLE}.IsBucket ;;
  }

  dimension: is_budget_flag {
    type: string
    sql: ${TABLE}.IsBudgetFlag ;;
  }

  dimension: is_cross_charge {
    type: string
    sql: ${TABLE}.IsCrossCharge ;;
  }

  dimension: is_exclude_spread_charge {
    type: string
    sql: ${TABLE}.IsExcludeSpreadCharge ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension_group: r_version {
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
    sql: ${TABLE}.rVersion ;;
  }

  dimension: reallocation_set_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ReallocationSetID ;;
  }

  dimension: sort_key {
    type: string
    sql: ${TABLE}.SortKey ;;
  }

  dimension: unit_rate {
    type: number
    sql: ${TABLE}.UnitRate ;;
  }

  dimension: unit_type {
    type: string
    sql: ${TABLE}.UnitType ;;
  }

  dimension: units {
    type: number
    sql: ${TABLE}.Units ;;
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
      classification.id,
      classification.name,
      reallocation_sets.id,
      reallocation_sets.set_name,
      customer_unit_charge.count,
      customer_unit_charge_fc.count,
      qrpt_bscharge_all.count,
      qrpt_bscharge_all_l3.count,
      qrpt_bscharge_all_by_csfor_web_bi.count,
      qrpt_bscharge_all_for_web_bi.count,
      qrpt_bscharge_fc.count,
      qrpt_bscharge_fc_l3.count,
      qrpt_bscharge_fcby_csfor_web_bi.count,
      qrpt_charge_comparision_cuids.count,
      qrpt_cscharge_all_for_web_bi.count,
      qrpt_cscharge_fcfor_web_bi.count,
      qry_bscharge.count,
      reallocation_charge.count,
      usageset_charge_addetail.count,
      usage_set_charges.count,
      user_customer_unit_access.count,
      v_customer_unit_charge_detail_4.count,
      v_customer_unit_charge_detail_5.count
    ]
  }
}
