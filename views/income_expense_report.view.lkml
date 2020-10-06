view: income_expense_report {
  sql_table_name: dbo.IncomeExpenseReport ;;

  dimension: classification {
    type: string
    sql: ${TABLE}.Classification ;;
  }

  dimension: month10_amount {
    type: number
    sql: ${TABLE}.Month10Amount ;;
  }

  dimension: month11_amount {
    type: number
    sql: ${TABLE}.Month11Amount ;;
  }

  dimension: month12_amount {
    type: number
    sql: ${TABLE}.Month12Amount ;;
  }

  dimension: month1_amount {
    type: number
    sql: ${TABLE}.Month1Amount ;;
  }

  dimension: month2_amount {
    type: number
    sql: ${TABLE}.Month2Amount ;;
  }

  dimension: month3_amount {
    type: number
    sql: ${TABLE}.Month3Amount ;;
  }

  dimension: month4_amount {
    type: number
    sql: ${TABLE}.Month4Amount ;;
  }

  dimension: month5_amount {
    type: number
    sql: ${TABLE}.Month5Amount ;;
  }

  dimension: month6_amount {
    type: number
    sql: ${TABLE}.Month6Amount ;;
  }

  dimension: month7_amount {
    type: number
    sql: ${TABLE}.Month7Amount ;;
  }

  dimension: month8_amount {
    type: number
    sql: ${TABLE}.Month8Amount ;;
  }

  dimension: month9_amount {
    type: number
    sql: ${TABLE}.Month9Amount ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.Title ;;
  }

  dimension: total {
    type: number
    sql: ${TABLE}.Total ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
