view: qrpt_business_service_allocation_incl_ccdata {
  sql_table_name: dbo.qrptBusinessServiceAllocationInclCCData ;;

  dimension: sng_allocation_annual_amount {
    type: number
    sql: ${TABLE}.sngAllocationAnnualAmount ;;
  }

  dimension: str_service_code {
    type: string
    sql: ${TABLE}.strServiceCode ;;
  }

  dimension: str_service_name {
    type: string
    sql: ${TABLE}.strServiceName ;;
  }

  dimension: str_sort_key {
    type: string
    sql: ${TABLE}.strSortKey ;;
  }

  dimension: str_tech_service_code {
    type: string
    sql: ${TABLE}.strTechServiceCode ;;
  }

  dimension: str_tech_service_name {
    type: string
    sql: ${TABLE}.strTechServiceName ;;
  }

  measure: count {
    type: count
    drill_fields: [str_tech_service_name, str_service_name]
  }
}
