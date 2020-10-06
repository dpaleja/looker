view: email_setting {
  sql_table_name: dbo.EmailSetting ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: authenticate {
    type: string
    sql: ${TABLE}.Authenticate ;;
  }

  dimension: enabled {
    type: string
    sql: ${TABLE}.Enabled ;;
  }

  dimension: from {
    type: string
    sql: ${TABLE}."From" ;;
  }

  dimension: login_name {
    type: string
    sql: ${TABLE}.LoginName ;;
  }

  dimension: login_password {
    type: string
    sql: ${TABLE}.LoginPassword ;;
  }

  dimension: smtp_server_name {
    type: string
    sql: ${TABLE}.SmtpServerName ;;
  }

  dimension: smtp_server_port {
    type: number
    sql: ${TABLE}.SmtpServerPort ;;
  }

  dimension: smtp_time_out {
    type: number
    sql: ${TABLE}.SmtpTimeOut ;;
  }

  dimension: use_ssl {
    type: string
    sql: ${TABLE}.UseSSL ;;
  }

  measure: count {
    type: count
    drill_fields: [id, smtp_server_name, login_name]
  }
}
