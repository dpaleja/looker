view: dashboard_setting_role {
  sql_table_name: dbo.DashboardSettingRole ;;
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

  dimension: is_default {
    type: string
    sql: ${TABLE}.IsDefault ;;
  }

  dimension: role_id {
    type: number
    sql: ${TABLE}.RoleId ;;
  }

  measure: count {
    type: count
    drill_fields: [id, dashboard_setting.id, dashboard_setting.name]
  }
}
