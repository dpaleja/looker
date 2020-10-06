view: reallocations {
  sql_table_name: dbo.Reallocations ;;
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

  dimension: business_unit_id {
    type: number
    sql: ${TABLE}.BusinessUnitID ;;
  }

  dimension: set_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.SetID ;;
  }

  dimension: split {
    type: number
    sql: ${TABLE}.Split ;;
  }

  measure: count {
    type: count
    drill_fields: [id, sets._old_set_id, sets.set_name]
  }
}
