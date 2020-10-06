view: user_activity {
  sql_table_name: dbo.UserActivity ;;

  dimension: build {
    type: string
    sql: ${TABLE}.Build ;;
  }

  dimension_group: log_in {
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
    sql: ${TABLE}.LogInTime ;;
  }

  dimension_group: log_out {
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
    sql: ${TABLE}.LogOutTime ;;
  }

  dimension: log_type {
    type: number
    sql: ${TABLE}.LogType ;;
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
