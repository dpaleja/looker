view: qry_headcount_by_customer_service {
  sql_table_name: dbo.qryHeadcountByCustomerService ;;

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

  dimension: str_code {
    type: number
    sql: ${TABLE}.strCode ;;
  }

  dimension: str_service_name {
    type: string
    sql: ${TABLE}.strServiceName ;;
  }

  measure: count {
    type: count
    drill_fields: [str_service_name]
  }
}
