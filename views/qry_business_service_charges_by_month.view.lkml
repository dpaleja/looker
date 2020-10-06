view: qry_business_service_charges_by_month {
  sql_table_name: dbo.qryBusinessServiceChargesByMonth ;;

  dimension: str_code {
    type: number
    sql: ${TABLE}.strCode ;;
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
