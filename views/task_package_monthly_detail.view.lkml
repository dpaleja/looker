view: task_package_monthly_detail {
  sql_table_name: dbo.TaskPackageMonthlyDetail ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: package_id {
    type: number
    sql: ${TABLE}.PackageID ;;
  }

  dimension_group: schedule {
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
    sql: ${TABLE}.ScheduleDate ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
