view: qrpt_service_component_summary_by_business_service {
  sql_table_name: dbo.qrptServiceComponentSummaryByBusinessService ;;

  dimension: sng_total_allocation_annual_amount {
    type: number
    sql: ${TABLE}.sngTotalAllocationAnnualAmount ;;
  }

  dimension: str_service_code {
    type: string
    sql: ${TABLE}.strServiceCode ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
