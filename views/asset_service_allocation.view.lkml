view: asset_service_allocation {
  sql_table_name: dbo.AssetServiceAllocation ;;
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

  dimension: asset_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.AssetID ;;
  }

  dimension: business_service_id {
    type: number
    sql: ${TABLE}.BusinessServiceID ;;
  }

  dimension: comments {
    type: string
    sql: ${TABLE}.Comments ;;
  }

  dimension: is_inherited {
    type: string
    sql: ${TABLE}.IsInherited ;;
  }

  dimension_group: r_version {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.rVersion ;;
  }

  dimension: sub_service_id {
    type: number
    sql: ${TABLE}.SubServiceID ;;
  }

  dimension: units {
    type: number
    sql: ${TABLE}.Units ;;
  }

  measure: count {
    type: count
    drill_fields: [id, assets._old_asset_id, assets.asset_name]
  }
}
