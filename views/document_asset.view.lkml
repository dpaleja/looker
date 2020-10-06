view: document_asset {
  sql_table_name: dbo.DocumentAsset ;;
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

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: path {
    type: string
    sql: ${TABLE}.Path ;;
  }

  measure: count {
    type: count
    drill_fields: [id, assets._old_asset_id, assets.asset_name]
  }
}
