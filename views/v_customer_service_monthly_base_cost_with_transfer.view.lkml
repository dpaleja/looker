view: v_customer_service_monthly_base_cost_with_transfer {
  sql_table_name: dbo.vCustomerServiceMonthlyBaseCostWithTransfer ;;

  dimension: absbase_cost {
    type: number
    sql: ${TABLE}.ABSBaseCost ;;
  }

  dimension: absbbase_cost {
    type: number
    sql: ${TABLE}.ABSBBaseCost ;;
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

  dimension: base_cost {
    type: number
    sql: ${TABLE}.BaseCost ;;
  }

  dimension: bbase_cost {
    type: number
    sql: ${TABLE}.BBaseCost ;;
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

  dimension: customer_service_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CustomerServiceID ;;
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
    drill_fields: [customer_services.id, customer_services.name]
  }
}
