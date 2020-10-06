view: asset_sub_service {
  sql_table_name: dbo.AssetSubService ;;

  dimension: _old_sub_service_id {
    type: number
    sql: ${TABLE}._Old_SubServiceID ;;
  }

  dimension: sub_service_code {
    type: string
    sql: ${TABLE}.SubServiceCode ;;
  }

  dimension: sub_service_id {
    type: number
    sql: ${TABLE}.SubServiceID ;;
  }

  dimension: sub_service_name {
    type: string
    sql: ${TABLE}.SubServiceName ;;
  }

  measure: count {
    type: count
    drill_fields: [sub_service_name]
  }
}
