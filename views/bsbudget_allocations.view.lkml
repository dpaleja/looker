view: bsbudget_allocations {
  sql_table_name: dbo.BSBudgetAllocations ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: bscode {
    type: string
    sql: ${TABLE}.BSCode ;;
  }

  dimension: conversion_rate {
    type: string
    sql: ${TABLE}.ConversionRate ;;
  }

  dimension: converted_amount {
    type: string
    sql: ${TABLE}.ConvertedAmount ;;
  }

  dimension: cuclass {
    type: string
    sql: ${TABLE}.CUClass ;;
  }

  dimension: cuname {
    type: string
    sql: ${TABLE}.CUName ;;
  }

  dimension: currency_type {
    type: string
    sql: ${TABLE}.CurrencyType ;;
  }

  dimension: driver_count {
    type: string
    sql: ${TABLE}.DriverCount ;;
  }

  dimension: funding_source {
    type: string
    sql: ${TABLE}.FundingSource ;;
  }

  dimension: override_dollar {
    type: string
    sql: ${TABLE}.OverrideDollar ;;
  }

  dimension: override_percent {
    type: string
    sql: ${TABLE}.OverridePercent ;;
  }

  dimension: total_charge {
    type: string
    sql: ${TABLE}.TotalCharge ;;
  }

  dimension: unit_price {
    type: string
    sql: ${TABLE}.UnitPrice ;;
  }

  dimension: units {
    type: string
    sql: ${TABLE}.Units ;;
  }

  measure: count {
    type: count
    drill_fields: [id, cuname]
  }
}
