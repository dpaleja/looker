view: sets {
  sql_table_name: dbo.Sets ;;
  drill_fields: [_old_set_id]

  dimension: _old_set_id {
    primary_key: yes
    type: number
    sql: ${TABLE}._Old_SetId ;;
  }

  dimension: set_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.SetId ;;
  }

  dimension: set_name {
    type: string
    sql: ${TABLE}.SetName ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.Type ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      _old_set_id,
      set_name,
      sets._old_set_id,
      sets.set_name,
      bmcintegration_schedule.count,
      mappings.count,
      reallocations.count,
      sets.count
    ]
  }
}
