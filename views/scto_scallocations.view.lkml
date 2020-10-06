view: scto_scallocations {
  sql_table_name: dbo.SCToSCAllocations ;;
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

  dimension: allocation_percentage {
    type: number
    sql: ${TABLE}.AllocationPercentage ;;
  }

  dimension: allocation_unit {
    type: number
    sql: ${TABLE}.AllocationUnit ;;
  }

  dimension: source_scid {
    type: number
    value_format_name: id
    sql: ${TABLE}.SourceSCID ;;
  }

  dimension: target_scid {
    type: number
    value_format_name: id
    sql: ${TABLE}.TargetSCID ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
