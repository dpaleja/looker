view: v_customer_service_monthly_base_cost_by_ccgroup {
  sql_table_name: dbo.vCustomerServiceMonthlyBaseCostByCCGroup ;;

  dimension: absbmonth10_cost {
    type: number
    sql: ${TABLE}.ABSBMonth10Cost ;;
  }

  dimension: absbmonth11_cost {
    type: number
    sql: ${TABLE}.ABSBMonth11Cost ;;
  }

  dimension: absbmonth12_cost {
    type: number
    sql: ${TABLE}.ABSBMonth12Cost ;;
  }

  dimension: absbmonth1_cost {
    type: number
    sql: ${TABLE}.ABSBMonth1Cost ;;
  }

  dimension: absbmonth2_cost {
    type: number
    sql: ${TABLE}.ABSBMonth2Cost ;;
  }

  dimension: absbmonth3_cost {
    type: number
    sql: ${TABLE}.ABSBMonth3Cost ;;
  }

  dimension: absbmonth4_cost {
    type: number
    sql: ${TABLE}.ABSBMonth4Cost ;;
  }

  dimension: absbmonth5_cost {
    type: number
    sql: ${TABLE}.ABSBMonth5Cost ;;
  }

  dimension: absbmonth6_cost {
    type: number
    sql: ${TABLE}.ABSBMonth6Cost ;;
  }

  dimension: absbmonth7_cost {
    type: number
    sql: ${TABLE}.ABSBMonth7Cost ;;
  }

  dimension: absbmonth8_cost {
    type: number
    sql: ${TABLE}.ABSBMonth8Cost ;;
  }

  dimension: absbmonth9_cost {
    type: number
    sql: ${TABLE}.ABSBMonth9Cost ;;
  }

  dimension: absmonth10_cost {
    type: number
    sql: ${TABLE}.ABSMonth10Cost ;;
  }

  dimension: absmonth11_cost {
    type: number
    sql: ${TABLE}.ABSMonth11Cost ;;
  }

  dimension: absmonth12_cost {
    type: number
    sql: ${TABLE}.ABSMonth12Cost ;;
  }

  dimension: absmonth1_cost {
    type: number
    sql: ${TABLE}.ABSMonth1Cost ;;
  }

  dimension: absmonth2_cost {
    type: number
    sql: ${TABLE}.ABSMonth2Cost ;;
  }

  dimension: absmonth3_cost {
    type: number
    sql: ${TABLE}.ABSMonth3Cost ;;
  }

  dimension: absmonth4_cost {
    type: number
    sql: ${TABLE}.ABSMonth4Cost ;;
  }

  dimension: absmonth5_cost {
    type: number
    sql: ${TABLE}.ABSMonth5Cost ;;
  }

  dimension: absmonth6_cost {
    type: number
    sql: ${TABLE}.ABSMonth6Cost ;;
  }

  dimension: absmonth7_cost {
    type: number
    sql: ${TABLE}.ABSMonth7Cost ;;
  }

  dimension: absmonth8_cost {
    type: number
    sql: ${TABLE}.ABSMonth8Cost ;;
  }

  dimension: absmonth9_cost {
    type: number
    sql: ${TABLE}.ABSMonth9Cost ;;
  }

  dimension: bmonth10_cost {
    type: number
    sql: ${TABLE}.BMonth10Cost ;;
  }

  dimension: bmonth11_cost {
    type: number
    sql: ${TABLE}.BMonth11Cost ;;
  }

  dimension: bmonth12_cost {
    type: number
    sql: ${TABLE}.BMonth12Cost ;;
  }

  dimension: bmonth1_cost {
    type: number
    sql: ${TABLE}.BMonth1Cost ;;
  }

  dimension: bmonth2_cost {
    type: number
    sql: ${TABLE}.BMonth2Cost ;;
  }

  dimension: bmonth3_cost {
    type: number
    sql: ${TABLE}.BMonth3Cost ;;
  }

  dimension: bmonth4_cost {
    type: number
    sql: ${TABLE}.BMonth4Cost ;;
  }

  dimension: bmonth5_cost {
    type: number
    sql: ${TABLE}.BMonth5Cost ;;
  }

  dimension: bmonth6_cost {
    type: number
    sql: ${TABLE}.BMonth6Cost ;;
  }

  dimension: bmonth7_cost {
    type: number
    sql: ${TABLE}.BMonth7Cost ;;
  }

  dimension: bmonth8_cost {
    type: number
    sql: ${TABLE}.BMonth8Cost ;;
  }

  dimension: bmonth9_cost {
    type: number
    sql: ${TABLE}.BMonth9Cost ;;
  }

  dimension: ccgrpid {
    type: number
    value_format_name: id
    sql: ${TABLE}.CCGRPID ;;
  }

  dimension: ccgrpoverhead {
    type: number
    sql: ${TABLE}.CCGRPOverhead ;;
  }

  dimension: csclsid {
    type: number
    value_format_name: id
    sql: ${TABLE}.CSCLSID ;;
  }

  dimension: csgrpid {
    type: number
    value_format_name: id
    sql: ${TABLE}.CSGRPID ;;
  }

  dimension: csid {
    type: number
    value_format_name: id
    sql: ${TABLE}.CSID ;;
  }

  dimension: month10_cost {
    type: number
    sql: ${TABLE}.Month10Cost ;;
  }

  dimension: month11_cost {
    type: number
    sql: ${TABLE}.Month11Cost ;;
  }

  dimension: month12_cost {
    type: number
    sql: ${TABLE}.Month12Cost ;;
  }

  dimension: month1_cost {
    type: number
    sql: ${TABLE}.Month1Cost ;;
  }

  dimension: month2_cost {
    type: number
    sql: ${TABLE}.Month2Cost ;;
  }

  dimension: month3_cost {
    type: number
    sql: ${TABLE}.Month3Cost ;;
  }

  dimension: month4_cost {
    type: number
    sql: ${TABLE}.Month4Cost ;;
  }

  dimension: month5_cost {
    type: number
    sql: ${TABLE}.Month5Cost ;;
  }

  dimension: month6_cost {
    type: number
    sql: ${TABLE}.Month6Cost ;;
  }

  dimension: month7_cost {
    type: number
    sql: ${TABLE}.Month7Cost ;;
  }

  dimension: month8_cost {
    type: number
    sql: ${TABLE}.Month8Cost ;;
  }

  dimension: month9_cost {
    type: number
    sql: ${TABLE}.Month9Cost ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
