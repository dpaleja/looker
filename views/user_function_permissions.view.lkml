view: user_function_permissions {
  sql_table_name: dbo.UserFunctionPermissions ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: access_level {
    type: string
    sql: ${TABLE}.AccessLevel ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
