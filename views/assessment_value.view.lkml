view: assessment_value {
  sql_table_name: dbo.AssessmentValue ;;
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

  dimension: assessment_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.AssessmentID ;;
  }

  dimension: value_number {
    type: number
    sql: ${TABLE}.ValueNumber ;;
  }

  dimension: value_text {
    type: string
    sql: ${TABLE}.ValueText ;;
  }

  measure: count {
    type: count
    drill_fields: [id, assessment.id, assessment.name]
  }
}
