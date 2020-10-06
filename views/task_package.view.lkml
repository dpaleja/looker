view: task_package {
  sql_table_name: dbo.TaskPackage ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: creator {
    type: number
    sql: ${TABLE}.Creator ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: enabled {
    type: string
    sql: ${TABLE}.Enabled ;;
  }

  dimension: execute_type {
    type: number
    sql: ${TABLE}.ExecuteType ;;
  }

  dimension: last_updator {
    type: number
    sql: ${TABLE}.LastUpdator ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: option {
    type: number
    sql: ${TABLE}."Option" ;;
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

  dimension: schedule_offset {
    type: number
    sql: ${TABLE}.ScheduleOffset ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
