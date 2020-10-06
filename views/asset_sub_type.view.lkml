view: asset_sub_type {
  sql_table_name: dbo.AssetSubType ;;
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

  dimension: asset_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.AssetTypeID ;;
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
      asset_type.id,
      asset_type.name,
      asset_charges.count,
      assets.count,
      asset_service_charges.count,
      vendor_service_alignment.count
    ]
  }
}
