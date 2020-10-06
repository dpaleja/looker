view: lock_month_setting_record {
  sql_table_name: dbo.LockMonthSettingRecord ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: lock_setting_type {
    type: number
    sql: ${TABLE}.LockSettingType ;;
  }

  dimension: new_value {
    type: number
    sql: ${TABLE}.NewValue ;;
  }

  dimension: old_value {
    type: number
    sql: ${TABLE}.OldValue ;;
  }

  dimension_group: record_date {
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
    sql: ${TABLE}.RecordDateTime ;;
  }

  dimension: username {
    type: string
    sql: ${TABLE}.Username ;;
  }

  measure: count {
    type: count
    drill_fields: [id, username]
  }
}
