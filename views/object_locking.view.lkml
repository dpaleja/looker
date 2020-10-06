view: object_locking {
  sql_table_name: dbo.ObjectLocking ;;

  dimension: lock_action {
    type: number
    sql: ${TABLE}.LockAction ;;
  }

  dimension_group: lock {
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
    sql: ${TABLE}.LockTime ;;
  }

  dimension: locked_by {
    type: string
    sql: ${TABLE}.LockedBy ;;
  }

  dimension: object_id {
    type: string
    sql: ${TABLE}.ObjectID ;;
  }

  dimension: object_type {
    type: number
    sql: ${TABLE}.ObjectType ;;
  }

  dimension: session_id {
    type: number
    sql: ${TABLE}.SessionID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
