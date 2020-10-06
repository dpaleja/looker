view: audit_field {
  sql_table_name: dbo.AuditField ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: audit_id {
    type: number
    sql: ${TABLE}.AuditID ;;
  }

  dimension: field_name {
    type: string
    sql: ${TABLE}.FieldName ;;
  }

  dimension: value_new {
    type: string
    sql: ${TABLE}.ValueNew ;;
  }

  dimension: value_old {
    type: string
    sql: ${TABLE}.ValueOld ;;
  }

  measure: count {
    type: count
    drill_fields: [id, field_name]
  }
}
