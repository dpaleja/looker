view: user_session {
  sql_table_name: dbo.UserSession ;;

  dimension: connection_id {
    type: string
    sql: ${TABLE}.ConnectionID ;;
  }

  dimension_group: heart_beat {
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
    sql: ${TABLE}.HeartBeatTime ;;
  }

  dimension: is_exclusive {
    type: string
    sql: ${TABLE}.IsExclusive ;;
  }

  dimension: login_as_admin {
    type: string
    sql: ${TABLE}.LoginAsAdmin ;;
  }

  dimension: login_client {
    type: string
    sql: ${TABLE}.LoginClient ;;
  }

  dimension: login_id {
    type: number
    sql: ${TABLE}.LoginId ;;
  }

  dimension_group: login {
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
    sql: ${TABLE}.LoginTime ;;
  }

  dimension: session_state {
    type: number
    sql: ${TABLE}.SessionState ;;
  }

  dimension: user_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.UserId ;;
  }

  dimension: user_type {
    type: number
    sql: ${TABLE}.UserType ;;
  }

  measure: count {
    type: count
    drill_fields: [users.name, users.first_name, users.last_name, users.aduser_name, users.oauth_user_id]
  }
}
