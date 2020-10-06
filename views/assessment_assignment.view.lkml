view: assessment_assignment {
  sql_table_name: dbo.AssessmentAssignment ;;
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

  dimension: is_entered {
    type: string
    sql: ${TABLE}.IsEntered ;;
  }

  dimension_group: r_version {
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
    sql: ${TABLE}.rVersion ;;
  }

  dimension: service_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ServiceID ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.Type ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.Value ;;
  }

  measure: count {
    type: count
    drill_fields: [id, assessment.id, assessment.name, services.id, services.name]
  }
}
