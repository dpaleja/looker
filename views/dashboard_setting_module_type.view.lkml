view: dashboard_setting_module_type {
  sql_table_name: dbo.DashboardSettingModuleType ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: chart_name {
    type: string
    sql: ${TABLE}.ChartName ;;
  }

  dimension: chart_type {
    type: number
    sql: ${TABLE}.ChartType ;;
  }

  dimension: col {
    type: number
    sql: ${TABLE}.Col ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: row {
    type: number
    sql: ${TABLE}.Row ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, chart_name]
  }
}
