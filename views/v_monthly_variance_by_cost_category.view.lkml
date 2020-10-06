view: v_monthly_variance_by_cost_category {
  sql_table_name: dbo.vMonthlyVarianceByCostCategory ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.Category ;;
  }

  dimension: label {
    type: string
    sql: ${TABLE}.Label ;;
  }

  dimension: unit_symbols {
    type: string
    sql: ${TABLE}.UnitSymbols ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.Value ;;
  }

  dimension: value2 {
    type: string
    sql: ${TABLE}.Value2 ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
