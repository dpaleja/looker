view: dashboard_setting_data_sources {
  sql_table_name: dbo.DashboardSettingDataSources ;;
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

  dimension: source_type {
    type: number
    sql: ${TABLE}.SourceType ;;
  }

  dimension: view_name {
    type: string
    sql: ${TABLE}.ViewName ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, view_name]
  }
}
