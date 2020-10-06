view: qrpt_asset_replacement_date {
  sql_table_name: dbo.qrptAssetReplacementDate ;;

  dimension: asset_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.AssetID ;;
  }

  dimension: asset_type {
    type: string
    sql: ${TABLE}.AssetType ;;
  }

  dimension: expiry_date {
    type: number
    sql: ${TABLE}.ExpiryDate ;;
  }

  dimension: replacement_cost {
    type: number
    sql: ${TABLE}.ReplacementCost ;;
  }

  dimension_group: replacement {
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
    sql: ${TABLE}.ReplacementDate ;;
  }

  measure: count {
    type: count
    drill_fields: [assets._old_asset_id, assets.asset_name]
  }
}
