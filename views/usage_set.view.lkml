view: usage_set {
  sql_table_name: dbo.UsageSet ;;
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

  dimension: admapping_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ADMappingID ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      name,
      admapping.id,
      admapping.name,
      admapping.security_group_name,
      customer_services.count,
      services.count,
      usage_set_charges.count,
      v_business_service.count,
      v_customer_service.count,
      v_service_component.count
    ]
  }
}
