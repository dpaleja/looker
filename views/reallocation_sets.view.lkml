view: reallocation_sets {
  sql_table_name: dbo.ReallocationSets ;;
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

  dimension: set_name {
    type: string
    sql: ${TABLE}.SetName ;;
  }

  measure: count {
    type: count
    drill_fields: [id, set_name, customer_unit.count, v_customer_unit.count]
  }
}
