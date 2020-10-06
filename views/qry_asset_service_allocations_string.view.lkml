view: qry_asset_service_allocations_string {
  sql_table_name: dbo.qryAssetServiceAllocationsString ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: asset_idstring {
    type: string
    sql: ${TABLE}.AssetIDString ;;
  }

  dimension: bsidstring {
    type: string
    sql: ${TABLE}.BSIDString ;;
  }

  dimension: comments {
    type: string
    sql: ${TABLE}.Comments ;;
  }

  dimension: sub_service_code {
    type: string
    sql: ${TABLE}.SubServiceCode ;;
  }

  dimension: sub_service_name {
    type: string
    sql: ${TABLE}.SubServiceName ;;
  }

  dimension: units {
    type: number
    sql: ${TABLE}.Units ;;
  }

  measure: count {
    type: count
    drill_fields: [id, sub_service_name]
  }
}
