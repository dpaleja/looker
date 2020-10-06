view: assessment {
  sql_table_name: dbo.Assessment ;;
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

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: increment {
    type: number
    sql: ${TABLE}.Increment ;;
  }

  dimension: maximum_value {
    type: number
    sql: ${TABLE}.MaximumValue ;;
  }

  dimension: minimum_value {
    type: number
    sql: ${TABLE}.MinimumValue ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.Type ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, assessment_assignment.count, assessment_value.count]
  }
}
