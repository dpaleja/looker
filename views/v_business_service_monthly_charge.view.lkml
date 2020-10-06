view: v_business_service_monthly_charge {
  sql_table_name: dbo.vBusinessServiceMonthlyCharge ;;

  dimension: bmonth10_charge {
    type: number
    sql: ${TABLE}.BMonth10Charge ;;
  }

  dimension: bmonth11_charge {
    type: number
    sql: ${TABLE}.BMonth11Charge ;;
  }

  dimension: bmonth12_charge {
    type: number
    sql: ${TABLE}.BMonth12Charge ;;
  }

  dimension: bmonth1_charge {
    type: number
    sql: ${TABLE}.BMonth1Charge ;;
  }

  dimension: bmonth2_charge {
    type: number
    sql: ${TABLE}.BMonth2Charge ;;
  }

  dimension: bmonth3_charge {
    type: number
    sql: ${TABLE}.BMonth3Charge ;;
  }

  dimension: bmonth4_charge {
    type: number
    sql: ${TABLE}.BMonth4Charge ;;
  }

  dimension: bmonth5_charge {
    type: number
    sql: ${TABLE}.BMonth5Charge ;;
  }

  dimension: bmonth6_charge {
    type: number
    sql: ${TABLE}.BMonth6Charge ;;
  }

  dimension: bmonth7_charge {
    type: number
    sql: ${TABLE}.BMonth7Charge ;;
  }

  dimension: bmonth8_charge {
    type: number
    sql: ${TABLE}.BMonth8Charge ;;
  }

  dimension: bmonth9_charge {
    type: number
    sql: ${TABLE}.BMonth9Charge ;;
  }

  dimension: btotal_charge {
    type: number
    sql: ${TABLE}.BTotalCharge ;;
  }

  dimension: business_service_id {
    type: number
    sql: ${TABLE}.BusinessServiceID ;;
  }

  dimension: month10_charge {
    type: number
    sql: ${TABLE}.Month10Charge ;;
  }

  dimension: month11_charge {
    type: number
    sql: ${TABLE}.Month11Charge ;;
  }

  dimension: month12_charge {
    type: number
    sql: ${TABLE}.Month12Charge ;;
  }

  dimension: month1_charge {
    type: number
    sql: ${TABLE}.Month1Charge ;;
  }

  dimension: month2_charge {
    type: number
    sql: ${TABLE}.Month2Charge ;;
  }

  dimension: month3_charge {
    type: number
    sql: ${TABLE}.Month3Charge ;;
  }

  dimension: month4_charge {
    type: number
    sql: ${TABLE}.Month4Charge ;;
  }

  dimension: month5_charge {
    type: number
    sql: ${TABLE}.Month5Charge ;;
  }

  dimension: month6_charge {
    type: number
    sql: ${TABLE}.Month6Charge ;;
  }

  dimension: month7_charge {
    type: number
    sql: ${TABLE}.Month7Charge ;;
  }

  dimension: month8_charge {
    type: number
    sql: ${TABLE}.Month8Charge ;;
  }

  dimension: month9_charge {
    type: number
    sql: ${TABLE}.Month9Charge ;;
  }

  dimension: total_charge {
    type: number
    sql: ${TABLE}.TotalCharge ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
