view: account_code_access_level {
  sql_table_name: dbo.AccountCodeAccessLevel ;;

  dimension: level {
    type: number
    sql: ${TABLE}.Level ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.Type ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
