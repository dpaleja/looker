view: qry_combined_service_bsmin_unit {
  sql_table_name: dbo.qryCombinedServiceBSMinUnit ;;

  dimension: class_name1 {
    type: string
    sql: ${TABLE}.ClassName1 ;;
  }

  dimension: str_combined_service_name1 {
    type: string
    sql: ${TABLE}.strCombinedServiceName1 ;;
  }

  dimension: unit_count1 {
    type: number
    sql: ${TABLE}.UnitCount1 ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
