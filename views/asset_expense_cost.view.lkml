view: asset_expense_cost {
  sql_table_name: dbo.AssetExpenseCost ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: amount_month1 {
    type: number
    sql: ${TABLE}.AmountMonth1 ;;
  }

  dimension: amount_month10 {
    type: number
    sql: ${TABLE}.AmountMonth10 ;;
  }

  dimension: amount_month10_capex {
    type: number
    sql: ${TABLE}.AmountMonth10Capex ;;
  }

  dimension: amount_month11 {
    type: number
    sql: ${TABLE}.AmountMonth11 ;;
  }

  dimension: amount_month11_capex {
    type: number
    sql: ${TABLE}.AmountMonth11Capex ;;
  }

  dimension: amount_month12 {
    type: number
    sql: ${TABLE}.AmountMonth12 ;;
  }

  dimension: amount_month12_capex {
    type: number
    sql: ${TABLE}.AmountMonth12Capex ;;
  }

  dimension: amount_month1_capex {
    type: number
    sql: ${TABLE}.AmountMonth1Capex ;;
  }

  dimension: amount_month2 {
    type: number
    sql: ${TABLE}.AmountMonth2 ;;
  }

  dimension: amount_month2_capex {
    type: number
    sql: ${TABLE}.AmountMonth2Capex ;;
  }

  dimension: amount_month3 {
    type: number
    sql: ${TABLE}.AmountMonth3 ;;
  }

  dimension: amount_month3_capex {
    type: number
    sql: ${TABLE}.AmountMonth3Capex ;;
  }

  dimension: amount_month4 {
    type: number
    sql: ${TABLE}.AmountMonth4 ;;
  }

  dimension: amount_month4_capex {
    type: number
    sql: ${TABLE}.AmountMonth4Capex ;;
  }

  dimension: amount_month5 {
    type: number
    sql: ${TABLE}.AmountMonth5 ;;
  }

  dimension: amount_month5_capex {
    type: number
    sql: ${TABLE}.AmountMonth5Capex ;;
  }

  dimension: amount_month6 {
    type: number
    sql: ${TABLE}.AmountMonth6 ;;
  }

  dimension: amount_month6_capex {
    type: number
    sql: ${TABLE}.AmountMonth6Capex ;;
  }

  dimension: amount_month7 {
    type: number
    sql: ${TABLE}.AmountMonth7 ;;
  }

  dimension: amount_month7_capex {
    type: number
    sql: ${TABLE}.AmountMonth7Capex ;;
  }

  dimension: amount_month8 {
    type: number
    sql: ${TABLE}.AmountMonth8 ;;
  }

  dimension: amount_month8_capex {
    type: number
    sql: ${TABLE}.AmountMonth8Capex ;;
  }

  dimension: amount_month9 {
    type: number
    sql: ${TABLE}.AmountMonth9 ;;
  }

  dimension: amount_month9_capex {
    type: number
    sql: ${TABLE}.AmountMonth9Capex ;;
  }

  dimension: asset_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.AssetID ;;
  }

  dimension: expense_id {
    type: number
    sql: ${TABLE}.ExpenseID ;;
  }

  dimension_group: financial_year {
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
    sql: ${TABLE}.FinancialYear ;;
  }

  measure: count {
    type: count
    drill_fields: [id, assets._old_asset_id, assets.asset_name]
  }
}
