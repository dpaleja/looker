view: v_customer_unit {
  sql_table_name: dbo.vCustomerUnit ;;
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

  dimension: cls_group_id {
    type: number
    sql: ${TABLE}.ClsGroupID ;;
  }

  dimension: cls_group_id2 {
    type: number
    sql: ${TABLE}.ClsGroupID2 ;;
  }

  dimension: cls_group_name {
    type: string
    sql: ${TABLE}.ClsGroupName ;;
  }

  dimension: cls_group_name2 {
    type: string
    sql: ${TABLE}.ClsGroupName2 ;;
  }

  dimension: cls_name {
    type: string
    sql: ${TABLE}.ClsName ;;
  }

  dimension: cls_name2 {
    type: string
    sql: ${TABLE}.ClsName2 ;;
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
      cls_name,
      cls_group_name,
      classification.id,
      classification.name,
      reallocation_sets.id,
      reallocation_sets.set_name
    ]
  }
}
