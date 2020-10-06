view: user_task_monthly_state {
  sql_table_name: dbo.UserTaskMonthlyState ;;

  dimension: package_id {
    type: number
    sql: ${TABLE}.PackageID ;;
  }

  dimension: package_monthly_id {
    type: number
    sql: ${TABLE}.PackageMonthlyID ;;
  }

  dimension: task_id {
    type: number
    sql: ${TABLE}.TaskID ;;
  }

  dimension: task_state {
    type: number
    sql: ${TABLE}.TaskState ;;
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
