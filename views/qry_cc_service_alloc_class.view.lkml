view: qry_cc_service_alloc_class {
  sql_table_name: dbo.qryCC_ServiceAllocClass ;;

  dimension: sng_total_cc {
    type: number
    sql: ${TABLE}.sngTotalCC ;;
  }

  dimension: str_classification {
    type: string
    sql: ${TABLE}.strClassification ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
