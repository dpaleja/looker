view: user_functions {
  sql_table_name: dbo.UserFunctions ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: function {
    type: string
    sql: ${TABLE}."Function" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
