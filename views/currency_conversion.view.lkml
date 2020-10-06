view: currency_conversion {
  sql_table_name: dbo.CurrencyConversion ;;
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

  dimension: conversion_rate {
    type: number
    sql: ${TABLE}.ConversionRate ;;
  }

  dimension: currency_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.CurrencyID ;;
  }

  measure: count {
    type: count
    drill_fields: [id, currency.id]
  }
}
