view: scmetric_counts {
  sql_table_name: dbo.SCMetricCounts ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: assignment_id {
    type: number
    sql: ${TABLE}.AssignmentID ;;
  }

  dimension: metric_count_type {
    type: number
    sql: ${TABLE}.MetricCountType ;;
  }

  dimension: metric_source {
    type: number
    sql: ${TABLE}.MetricSource ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
