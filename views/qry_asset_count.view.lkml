view: qry_asset_count {
  sql_table_name: dbo.qryAssetCount ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: total_count {
    type: number
    sql: ${TABLE}.TotalCount ;;
  }

  dimension: total_units {
    type: number
    sql: ${TABLE}.TotalUnits ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
