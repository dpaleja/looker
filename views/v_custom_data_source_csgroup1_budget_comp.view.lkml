view: v_custom_data_source_csgroup1_budget_comp {
  sql_table_name: dbo.vCustomDataSource_CSGROUP1_BUDGET_COMP ;;
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
    sql: ${TABLE}.value ;;
  }

  dimension: value2 {
    type: string
    sql: ${TABLE}.value2 ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
