view: user_security {
  sql_table_name: dbo.UserSecurity ;;

  dimension: access_level_id {
    type: number
    sql: ${TABLE}.AccessLevelID ;;
  }

  dimension: function_id {
    type: number
    sql: ${TABLE}.FunctionID ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.UserID ;;
  }

  measure: count {
    type: count
    drill_fields: [users.name, users.first_name, users.last_name, users.aduser_name, users.oauth_user_id]
  }
}
