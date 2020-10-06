view: asset_users {
  sql_table_name: dbo.AssetUsers ;;
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

  dimension: cost_centre_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CostCentreID ;;
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
      cost_centres.id,
      cost_centres.name,
      asset_charges.count,
      asset_service_charges.count
    ]
  }
}
