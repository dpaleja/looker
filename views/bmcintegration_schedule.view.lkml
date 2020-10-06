view: bmcintegration_schedule {
  sql_table_name: dbo.BMCIntegrationSchedule ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: actions {
    type: string
    sql: ${TABLE}.Actions ;;
  }

  dimension: cron_expression {
    type: string
    sql: ${TABLE}.CronExpression ;;
  }

  dimension: function {
    type: string
    sql: ${TABLE}."Function" ;;
  }

  dimension: ignore_delete {
    type: string
    sql: ${TABLE}.IgnoreDelete ;;
  }

  dimension: schedule_desc {
    type: string
    sql: ${TABLE}.ScheduleDesc ;;
  }

  dimension: schedule_type {
    type: string
    sql: ${TABLE}.ScheduleType ;;
  }

  dimension: set_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.SetId ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.Status ;;
  }

  dimension_group: task_start {
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
    sql: ${TABLE}.TaskStartDate ;;
  }

  measure: count {
    type: count
    drill_fields: [id, sets._old_set_id, sets.set_name]
  }
}
