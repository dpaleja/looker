view: exchange_rate {
  sql_table_name: dbo.ExchangeRate ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: bmonth1 {
    type: number
    sql: ${TABLE}.BMonth1 ;;
  }

  dimension: bmonth10 {
    type: number
    sql: ${TABLE}.BMonth10 ;;
  }

  dimension: bmonth11 {
    type: number
    sql: ${TABLE}.BMonth11 ;;
  }

  dimension: bmonth12 {
    type: number
    sql: ${TABLE}.BMonth12 ;;
  }

  dimension: bmonth2 {
    type: number
    sql: ${TABLE}.BMonth2 ;;
  }

  dimension: bmonth3 {
    type: number
    sql: ${TABLE}.BMonth3 ;;
  }

  dimension: bmonth4 {
    type: number
    sql: ${TABLE}.BMonth4 ;;
  }

  dimension: bmonth5 {
    type: number
    sql: ${TABLE}.BMonth5 ;;
  }

  dimension: bmonth6 {
    type: number
    sql: ${TABLE}.BMonth6 ;;
  }

  dimension: bmonth7 {
    type: number
    sql: ${TABLE}.BMonth7 ;;
  }

  dimension: bmonth8 {
    type: number
    sql: ${TABLE}.BMonth8 ;;
  }

  dimension: bmonth9 {
    type: number
    sql: ${TABLE}.BMonth9 ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: month1 {
    type: number
    sql: ${TABLE}.Month1 ;;
  }

  dimension: month10 {
    type: number
    sql: ${TABLE}.Month10 ;;
  }

  dimension: month11 {
    type: number
    sql: ${TABLE}.Month11 ;;
  }

  dimension: month12 {
    type: number
    sql: ${TABLE}.Month12 ;;
  }

  dimension: month2 {
    type: number
    sql: ${TABLE}.Month2 ;;
  }

  dimension: month3 {
    type: number
    sql: ${TABLE}.Month3 ;;
  }

  dimension: month4 {
    type: number
    sql: ${TABLE}.Month4 ;;
  }

  dimension: month5 {
    type: number
    sql: ${TABLE}.Month5 ;;
  }

  dimension: month6 {
    type: number
    sql: ${TABLE}.Month6 ;;
  }

  dimension: month7 {
    type: number
    sql: ${TABLE}.Month7 ;;
  }

  dimension: month8 {
    type: number
    sql: ${TABLE}.Month8 ;;
  }

  dimension: month9 {
    type: number
    sql: ${TABLE}.Month9 ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, expense_items.count, v_ex_cc_ac.count, v_expense_item.count]
  }
}
