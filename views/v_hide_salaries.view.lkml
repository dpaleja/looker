view: v_hide_salaries {
  sql_table_name: dbo.vHideSalaries ;;

  dimension: ex_id {
    type: number
    sql: ${TABLE}.ExID ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.UserId ;;
  }

  measure: count {
    type: count
    drill_fields: [users.name, users.first_name, users.last_name, users.aduser_name, users.oauth_user_id]
  }
}
