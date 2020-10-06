view: qrpt_business_service_allocation_incl_ccmain {
  sql_table_name: dbo.qrptBusinessServiceAllocationInclCCMain ;;

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
    drill_fields: [str_tech_service_name]
  }
}
