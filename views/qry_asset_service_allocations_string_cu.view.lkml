view: qry_asset_service_allocations_string_cu {
  sql_table_name: dbo.qryAssetServiceAllocationsStringCU ;;
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

  dimension: business_service_id {
    type: number
    sql: ${TABLE}.BusinessServiceID ;;
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
