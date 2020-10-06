view: month_locking_log {
  sql_table_name: dbo.MonthLockingLog ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: comments {
    type: string
    sql: ${TABLE}.Comments ;;
  }

  dimension: lock_type {
    type: number
    sql: ${TABLE}.LockType ;;
  }

  dimension: new_value {
    type: number
    sql: ${TABLE}.NewValue ;;
  }

  dimension: old_value {
    type: number
    sql: ${TABLE}.OldValue ;;
  }

  dimension_group: update {
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
    sql: ${TABLE}.UpdateTime ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.UserID ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      users.name,
      users.first_name,
      users.last_name,
      users.aduser_name,
      users.oauth_user_id
    ]
  }
}
