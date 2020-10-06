view: qry_business_service_allocation {
  sql_table_name: dbo.qryBusinessServiceAllocation ;;

  dimension: int_allocation_type {
    type: number
    sql: ${TABLE}.intAllocationType ;;
  }

  dimension: sng_sum_of_allocations {
    type: number
    sql: ${TABLE}.sngSumOfAllocations ;;
  }

  dimension: str_code {
    type: number
    sql: ${TABLE}.strCode ;;
  }

  dimension: str_service_code {
    type: string
    sql: ${TABLE}.strServiceCode ;;
  }

  dimension: str_service_name {
    type: string
    sql: ${TABLE}.strServiceName ;;
  }

  dimension: total_fte {
    type: number
    sql: ${TABLE}.TotalFTE ;;
  }

  measure: count {
    type: count
    drill_fields: [str_service_name]
  }
}
