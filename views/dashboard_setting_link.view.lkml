view: dashboard_setting_link {
  sql_table_name: dbo.DashboardSettingLink ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.Id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: project {
    type: string
    sql: ${TABLE}.Project ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.Url ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
