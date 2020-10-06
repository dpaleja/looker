view: v_custom_data_source_scgroup_by_costcategory {
  sql_table_name: dbo.vCustomDataSourceSCGROUP_BY_COSTCATEGORY ;;
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
