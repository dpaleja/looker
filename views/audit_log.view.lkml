view: audit_log {
  sql_table_name: dbo.AuditLog ;;

  dimension: action {
    type: string
    sql: ${TABLE}.Action ;;
  }

  dimension: audit_id {
    type: number
    sql: ${TABLE}.AuditID ;;
  }

  dimension: context {
    type: string
    sql: ${TABLE}.Context ;;
  }

  dimension: descriptor {
    type: string
    sql: ${TABLE}.Descriptor ;;
  }

  dimension: detail {
    type: string
    sql: ${TABLE}.Detail ;;
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

  dimension: user {
    type: string
    sql: ${TABLE}."User" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
