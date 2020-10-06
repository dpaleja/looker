view: dashboard_setting_menu {
  sql_table_name: dbo.DashboardSettingMenu ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.Id ;;
  }

  dimension: dashboard_setting_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.DashboardSettingId ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: sort {
    type: number
    sql: ${TABLE}.Sort ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, dashboard_setting.id, dashboard_setting.name]
  }
}
