view: dashboard_setting_module_data_sources {
  sql_table_name: dbo.DashboardSettingModuleDataSources ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.Id ;;
  }

  dimension: data_sources_id {
    type: string
    sql: ${TABLE}.DataSourcesId ;;
  }

  dimension: manual_input {
    type: string
    sql: ${TABLE}.ManualInput ;;
  }

  dimension: module_id {
    type: string
    sql: ${TABLE}.ModuleId ;;
  }

  dimension: snap_shot_id {
    type: number
    sql: ${TABLE}.SnapShotId ;;
  }

  dimension: sort {
    type: number
    sql: ${TABLE}.Sort ;;
  }

  dimension: trend_set_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.TrendSetId ;;
  }

  measure: count {
    type: count
    drill_fields: [id, trend_set.id, trend_set.name, trend_set.item_name]
  }
}
