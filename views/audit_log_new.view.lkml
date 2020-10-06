view: audit_log_new {
  sql_table_name: dbo.AuditLogNew ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: _old_id {
    type: number
    sql: ${TABLE}._Old_ID ;;
  }

  dimension: account_code {
    type: string
    sql: ${TABLE}.AccountCode ;;
  }

  dimension: action {
    type: string
    sql: ${TABLE}.Action ;;
  }

  dimension_group: audit {
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
    sql: ${TABLE}.AuditDate ;;
  }

  dimension: cost_centre {
    type: string
    sql: ${TABLE}.CostCentre ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: object_id {
    type: number
    sql: ${TABLE}.ObjectID ;;
  }

  dimension: object_type {
    type: string
    sql: ${TABLE}.ObjectType ;;
  }

  dimension: user {
    type: string
    sql: ${TABLE}."User" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
