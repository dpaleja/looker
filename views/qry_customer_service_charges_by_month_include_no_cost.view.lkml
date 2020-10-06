view: qry_customer_service_charges_by_month_include_no_cost {
  sql_table_name: dbo.qryCustomerServiceChargesByMonthIncludeNoCost ;;

  dimension: str_code {
    type: number
    sql: ${TABLE}.strCode ;;
  }

  dimension: sum_of_bmonth1 {
    type: number
    sql: ${TABLE}.SumOfBMonth1 ;;
  }

  dimension: sum_of_bmonth10 {
    type: number
    sql: ${TABLE}.SumOfBMonth10 ;;
  }

  dimension: sum_of_bmonth11 {
    type: number
    sql: ${TABLE}.SumOfBMonth11 ;;
  }

  dimension: sum_of_bmonth12 {
    type: number
    sql: ${TABLE}.SumOfBMonth12 ;;
  }

  dimension: sum_of_bmonth2 {
    type: number
    sql: ${TABLE}.SumOfBMonth2 ;;
  }

  dimension: sum_of_bmonth3 {
    type: number
    sql: ${TABLE}.SumOfBMonth3 ;;
  }

  dimension: sum_of_bmonth4 {
    type: number
    sql: ${TABLE}.SumOfBMonth4 ;;
  }

  dimension: sum_of_bmonth5 {
    type: number
    sql: ${TABLE}.SumOfBMonth5 ;;
  }

  dimension: sum_of_bmonth6 {
    type: number
    sql: ${TABLE}.SumOfBMonth6 ;;
  }

  dimension: sum_of_bmonth7 {
    type: number
    sql: ${TABLE}.SumOfBMonth7 ;;
  }

  dimension: sum_of_bmonth8 {
    type: number
    sql: ${TABLE}.SumOfBMonth8 ;;
  }

  dimension: sum_of_bmonth9 {
    type: number
    sql: ${TABLE}.SumOfBMonth9 ;;
  }

  dimension: sum_of_bunit_count {
    type: number
    sql: ${TABLE}.SumOfBUnitCount ;;
  }

  dimension: sum_of_month1 {
    type: number
    sql: ${TABLE}.SumOfMonth1 ;;
  }

  dimension: sum_of_month10 {
    type: number
    sql: ${TABLE}.SumOfMonth10 ;;
  }

  dimension: sum_of_month11 {
    type: number
    sql: ${TABLE}.SumOfMonth11 ;;
  }

  dimension: sum_of_month12 {
    type: number
    sql: ${TABLE}.SumOfMonth12 ;;
  }

  dimension: sum_of_month2 {
    type: number
    sql: ${TABLE}.SumOfMonth2 ;;
  }

  dimension: sum_of_month3 {
    type: number
    sql: ${TABLE}.SumOfMonth3 ;;
  }

  dimension: sum_of_month4 {
    type: number
    sql: ${TABLE}.SumOfMonth4 ;;
  }

  dimension: sum_of_month5 {
    type: number
    sql: ${TABLE}.SumOfMonth5 ;;
  }

  dimension: sum_of_month6 {
    type: number
    sql: ${TABLE}.SumOfMonth6 ;;
  }

  dimension: sum_of_month7 {
    type: number
    sql: ${TABLE}.SumOfMonth7 ;;
  }

  dimension: sum_of_month8 {
    type: number
    sql: ${TABLE}.SumOfMonth8 ;;
  }

  dimension: sum_of_month9 {
    type: number
    sql: ${TABLE}.SumOfMonth9 ;;
  }

  dimension: sum_of_unit_count {
    type: number
    sql: ${TABLE}.SumOfUnitCount ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
