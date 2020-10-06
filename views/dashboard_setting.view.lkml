view: dashboard_setting {
  sql_table_name: dbo.DashboardSetting ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.Id ;;
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

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: operator {
    type: number
    sql: ${TABLE}.Operator ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, dashboard_setting_menu.count, dashboard_setting_role.count]
  }
}
