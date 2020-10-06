view: dashboard_setting_module {
  sql_table_name: dbo.DashboardSettingModule ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.Id ;;
  }

  dimension: business_type {
    type: number
    sql: ${TABLE}.BusinessType ;;
  }

  dimension: chart_type {
    type: number
    sql: ${TABLE}.ChartType ;;
  }

  dimension_group: create {
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
    sql: ${TABLE}.CreateTime ;;
  }

  dimension_group: end {
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
    sql: ${TABLE}.EndDate ;;
  }

  dimension: hide_name {
    type: string
    sql: ${TABLE}.HideName ;;
  }

  dimension: module_type {
    type: number
    sql: ${TABLE}.ModuleType ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: operator {
    type: string
    sql: ${TABLE}.Operator ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}.StartDate ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, hide_name]
  }
}
