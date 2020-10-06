view: combined_service {
  sql_table_name: dbo.CombinedService ;;
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

  dimension: combined_service_name {
    type: string
    sql: ${TABLE}.CombinedServiceName ;;
  }

  dimension: unit_type {
    type: string
    sql: ${TABLE}.UnitType ;;
  }

  measure: count {
    type: count
    drill_fields: [id, combined_service_name, combined_service_bs.count]
  }
}
