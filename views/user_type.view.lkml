view: user_type {
  sql_table_name: dbo.UserType ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: _old_id {
    type: number
    sql: ${TABLE}._Old_ID ;;
  }

  dimension: user_type {
    type: string
    sql: ${TABLE}.UserType ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
