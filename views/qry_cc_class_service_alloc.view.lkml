view: qry_cc_class_service_alloc {
  sql_table_name: dbo.qryCC_Class_ServiceAlloc ;;

  dimension: sng_total_cc {
    type: number
    sql: ${TABLE}.sngTotalCC ;;
  }

  dimension: str_classification1 {
    type: string
    sql: ${TABLE}.strClassification1 ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
