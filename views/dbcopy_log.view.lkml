view: dbcopy_log {
  sql_table_name: dbo.DBCopyLog ;;

  dimension: detail {
    type: string
    sql: ${TABLE}.Detail ;;
  }

  dimension: direction {
    type: string
    sql: ${TABLE}.Direction ;;
  }

  dimension: log_id {
    type: number
    sql: ${TABLE}.LogID ;;
  }

  dimension_group: record {
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
    sql: ${TABLE}.RecordDate ;;
  }

  dimension: simulation_db {
    type: string
    sql: ${TABLE}.SimulationDB ;;
  }

  dimension: user {
    type: string
    sql: ${TABLE}."User" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
