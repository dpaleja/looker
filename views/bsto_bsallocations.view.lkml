view: bsto_bsallocations {
  sql_table_name: dbo.BStoBSAllocations ;;
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

  dimension: source_bsid {
    type: number
    value_format_name: id
    sql: ${TABLE}.SourceBSID ;;
  }

  dimension: target_bsid {
    type: number
    value_format_name: id
    sql: ${TABLE}.TargetBSID ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
