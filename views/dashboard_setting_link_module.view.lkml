view: dashboard_setting_link_module {
  sql_table_name: dbo.DashboardSettingLinkModule ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.Id ;;
  }

  dimension: link_id {
    type: string
    sql: ${TABLE}.LinkId ;;
  }

  dimension: link_index {
    type: number
    sql: ${TABLE}.LinkIndex ;;
  }

  dimension: module_id {
    type: string
    sql: ${TABLE}.ModuleId ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
