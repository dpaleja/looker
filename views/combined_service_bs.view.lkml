view: combined_service_bs {
  sql_table_name: dbo.CombinedService_BS ;;
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

  dimension: business_service_id {
    type: string
    sql: ${TABLE}.BusinessServiceID ;;
  }

  dimension: combined_service_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.CombinedServiceID ;;
  }

  measure: count {
    type: count
    drill_fields: [id, combined_service.id, combined_service.combined_service_name]
  }
}
