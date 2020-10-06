view: login_history {
  sql_table_name: dbo.LoginHistory ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: forced_by_id {
    type: string
    sql: ${TABLE}.ForcedById ;;
  }

  dimension: forced_by_name {
    type: string
    sql: ${TABLE}.ForcedByName ;;
  }

  dimension: ipaddress {
    type: string
    sql: ${TABLE}.IPAddress ;;
  }

  dimension: login_as_admin {
    type: string
    sql: ${TABLE}.LoginAsAdmin ;;
  }

  dimension: login_client {
    type: string
    sql: ${TABLE}.LoginClient ;;
  }

  dimension: login_client_version {
    type: string
    sql: ${TABLE}.LoginClientVersion ;;
  }

  dimension: login_error {
    type: number
    sql: ${TABLE}.LoginError ;;
  }

  dimension: login_mode {
    type: number
    sql: ${TABLE}.LoginMode ;;
  }

  dimension: login_status {
    type: string
    sql: ${TABLE}.LoginStatus ;;
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

  dimension: logout_mode {
    type: number
    sql: ${TABLE}.LogoutMode ;;
  }

  dimension_group: logout {
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
    sql: ${TABLE}.LogoutTime ;;
  }

  dimension: user_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.UserId ;;
  }

  dimension: user_name {
    type: string
    sql: ${TABLE}.UserName ;;
  }

  dimension: user_type {
    type: number
    sql: ${TABLE}.UserType ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      user_name,
      forced_by_name,
      users.name,
      users.first_name,
      users.last_name,
      users.aduser_name,
      users.oauth_user_id
    ]
  }
}
