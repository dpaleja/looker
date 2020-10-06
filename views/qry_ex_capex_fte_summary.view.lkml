view: qry_ex_capex_fte_summary {
  sql_table_name: dbo.qryExCapexFteSummary ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: expense_type {
    type: number
    sql: ${TABLE}.expenseType ;;
  }

  dimension: month1 {
    type: number
    sql: ${TABLE}.month1 ;;
  }

  dimension: month10 {
    type: number
    sql: ${TABLE}.month10 ;;
  }

  dimension: month11 {
    type: number
    sql: ${TABLE}.month11 ;;
  }

  dimension: month12 {
    type: number
    sql: ${TABLE}.month12 ;;
  }

  dimension: month2 {
    type: number
    sql: ${TABLE}.month2 ;;
  }

  dimension: month3 {
    type: number
    sql: ${TABLE}.month3 ;;
  }

  dimension: month4 {
    type: number
    sql: ${TABLE}.month4 ;;
  }

  dimension: month5 {
    type: number
    sql: ${TABLE}.month5 ;;
  }

  dimension: month6 {
    type: number
    sql: ${TABLE}.month6 ;;
  }

  dimension: month7 {
    type: number
    sql: ${TABLE}.month7 ;;
  }

  dimension: month8 {
    type: number
    sql: ${TABLE}.month8 ;;
  }

  dimension: month9 {
    type: number
    sql: ${TABLE}.month9 ;;
  }

  dimension: monthtotal {
    type: number
    sql: ${TABLE}.monthtotal ;;
  }

  dimension: year_num {
    type: number
    sql: ${TABLE}.YearNum ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
