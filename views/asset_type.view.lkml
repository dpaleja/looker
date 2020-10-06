view: asset_type {
  sql_table_name: dbo.AssetType ;;
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

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: useful_life {
    type: number
    sql: ${TABLE}.UsefulLife ;;
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
      asset_charges.count,
      assets.count,
      asset_service_charges.count,
      asset_sub_type.count,
      vendor_service_alignment.count
    ]
  }
}
