view: sqlrd_business_service_unit_summary_by_month1 {
  sql_table_name: dbo.SqlrdBusinessServiceUnitSummaryByMonth1 ;;

  dimension: allocated {
    type: number
    sql: ${TABLE}.Allocated ;;
  }

  dimension: allocated_month1 {
    type: number
    sql: ${TABLE}.AllocatedMonth1 ;;
  }

  dimension: allocated_month10 {
    type: number
    sql: ${TABLE}.AllocatedMonth10 ;;
  }

  dimension: allocated_month11 {
    type: number
    sql: ${TABLE}.AllocatedMonth11 ;;
  }

  dimension: allocated_month12 {
    type: number
    sql: ${TABLE}.AllocatedMonth12 ;;
  }

  dimension: allocated_month2 {
    type: number
    sql: ${TABLE}.AllocatedMonth2 ;;
  }

  dimension: allocated_month3 {
    type: number
    sql: ${TABLE}.AllocatedMonth3 ;;
  }

  dimension: allocated_month4 {
    type: number
    sql: ${TABLE}.AllocatedMonth4 ;;
  }

  dimension: allocated_month5 {
    type: number
    sql: ${TABLE}.AllocatedMonth5 ;;
  }

  dimension: allocated_month6 {
    type: number
    sql: ${TABLE}.AllocatedMonth6 ;;
  }

  dimension: allocated_month7 {
    type: number
    sql: ${TABLE}.AllocatedMonth7 ;;
  }

  dimension: allocated_month8 {
    type: number
    sql: ${TABLE}.AllocatedMonth8 ;;
  }

  dimension: allocated_month9 {
    type: number
    sql: ${TABLE}.AllocatedMonth9 ;;
  }

  dimension: calculation_type {
    type: string
    sql: ${TABLE}.CalculationType ;;
  }

  dimension: estimated {
    type: number
    sql: ${TABLE}.Estimated ;;
  }

  dimension: estimated_month1 {
    type: number
    sql: ${TABLE}.EstimatedMonth1 ;;
  }

  dimension: estimated_month10 {
    type: number
    sql: ${TABLE}.EstimatedMonth10 ;;
  }

  dimension: estimated_month11 {
    type: number
    sql: ${TABLE}.EstimatedMonth11 ;;
  }

  dimension: estimated_month12 {
    type: number
    sql: ${TABLE}.EstimatedMonth12 ;;
  }

  dimension: estimated_month2 {
    type: number
    sql: ${TABLE}.EstimatedMonth2 ;;
  }

  dimension: estimated_month3 {
    type: number
    sql: ${TABLE}.EstimatedMonth3 ;;
  }

  dimension: estimated_month4 {
    type: number
    sql: ${TABLE}.EstimatedMonth4 ;;
  }

  dimension: estimated_month5 {
    type: number
    sql: ${TABLE}.EstimatedMonth5 ;;
  }

  dimension: estimated_month6 {
    type: number
    sql: ${TABLE}.EstimatedMonth6 ;;
  }

  dimension: estimated_month7 {
    type: number
    sql: ${TABLE}.EstimatedMonth7 ;;
  }

  dimension: estimated_month8 {
    type: number
    sql: ${TABLE}.EstimatedMonth8 ;;
  }

  dimension: estimated_month9 {
    type: number
    sql: ${TABLE}.EstimatedMonth9 ;;
  }

  dimension: headcount_month1 {
    type: number
    sql: ${TABLE}.HeadcountMonth1 ;;
  }

  dimension: headcount_month10 {
    type: number
    sql: ${TABLE}.HeadcountMonth10 ;;
  }

  dimension: headcount_month11 {
    type: number
    sql: ${TABLE}.HeadcountMonth11 ;;
  }

  dimension: headcount_month12 {
    type: number
    sql: ${TABLE}.HeadcountMonth12 ;;
  }

  dimension: headcount_month2 {
    type: number
    sql: ${TABLE}.HeadcountMonth2 ;;
  }

  dimension: headcount_month3 {
    type: number
    sql: ${TABLE}.HeadcountMonth3 ;;
  }

  dimension: headcount_month4 {
    type: number
    sql: ${TABLE}.HeadcountMonth4 ;;
  }

  dimension: headcount_month5 {
    type: number
    sql: ${TABLE}.HeadcountMonth5 ;;
  }

  dimension: headcount_month6 {
    type: number
    sql: ${TABLE}.HeadcountMonth6 ;;
  }

  dimension: headcount_month7 {
    type: number
    sql: ${TABLE}.HeadcountMonth7 ;;
  }

  dimension: headcount_month8 {
    type: number
    sql: ${TABLE}.HeadcountMonth8 ;;
  }

  dimension: headcount_month9 {
    type: number
    sql: ${TABLE}.HeadcountMonth9 ;;
  }

  dimension: is_time {
    type: string
    sql: ${TABLE}.IsTime ;;
  }

  dimension: str_classification {
    type: string
    sql: ${TABLE}.strClassification ;;
  }

  dimension: str_service_name {
    type: string
    sql: ${TABLE}.strServiceName ;;
  }

  dimension: str_unit_type {
    type: string
    sql: ${TABLE}.strUnitType ;;
  }

  dimension: time_multiplier {
    type: number
    sql: ${TABLE}.TimeMultiplier ;;
  }

  dimension: unallocated {
    type: number
    sql: ${TABLE}.Unallocated ;;
  }

  dimension: unallocated_month1 {
    type: number
    sql: ${TABLE}.UnallocatedMonth1 ;;
  }

  dimension: unallocated_month10 {
    type: number
    sql: ${TABLE}.UnallocatedMonth10 ;;
  }

  dimension: unallocated_month11 {
    type: number
    sql: ${TABLE}.UnallocatedMonth11 ;;
  }

  dimension: unallocated_month12 {
    type: number
    sql: ${TABLE}.UnallocatedMonth12 ;;
  }

  dimension: unallocated_month2 {
    type: number
    sql: ${TABLE}.UnallocatedMonth2 ;;
  }

  dimension: unallocated_month3 {
    type: number
    sql: ${TABLE}.UnallocatedMonth3 ;;
  }

  dimension: unallocated_month4 {
    type: number
    sql: ${TABLE}.UnallocatedMonth4 ;;
  }

  dimension: unallocated_month5 {
    type: number
    sql: ${TABLE}.UnallocatedMonth5 ;;
  }

  dimension: unallocated_month6 {
    type: number
    sql: ${TABLE}.UnallocatedMonth6 ;;
  }

  dimension: unallocated_month7 {
    type: number
    sql: ${TABLE}.UnallocatedMonth7 ;;
  }

  dimension: unallocated_month8 {
    type: number
    sql: ${TABLE}.UnallocatedMonth8 ;;
  }

  dimension: unallocated_month9 {
    type: number
    sql: ${TABLE}.UnallocatedMonth9 ;;
  }

  measure: count {
    type: count
    drill_fields: [str_service_name]
  }
}
