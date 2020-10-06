view: user_task_execute_log {
  sql_table_name: dbo.UserTaskExecuteLog ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension_group: execute {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.ExecuteTime ;;
  }

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
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      users.name,
      users.first_name,
      users.last_name,
      users.aduser_name,
      users.oauth_user_id
    ]
  }
}
