view: v_business_service_monthly_fte_detail_budget {
  sql_table_name: dbo.vBusinessServiceMonthlyFteDetailBudget ;;

  dimension: bfte_count {
    type: number
    sql: ${TABLE}.BFteCount ;;
  }

  dimension: bmonth10_fte {
    type: number
    sql: ${TABLE}.BMonth10Fte ;;
  }

  dimension: bmonth11_fte {
    type: number
    sql: ${TABLE}.BMonth11Fte ;;
  }

  dimension: bmonth12_fte {
    type: number
    sql: ${TABLE}.BMonth12Fte ;;
  }

  dimension: bmonth1_fte {
    type: number
    sql: ${TABLE}.BMonth1Fte ;;
  }

  dimension: bmonth2_fte {
    type: number
    sql: ${TABLE}.BMonth2Fte ;;
  }

  dimension: bmonth3_fte {
    type: number
    sql: ${TABLE}.BMonth3Fte ;;
  }

  dimension: bmonth4_fte {
    type: number
    sql: ${TABLE}.BMonth4Fte ;;
  }

  dimension: bmonth5_fte {
    type: number
    sql: ${TABLE}.BMonth5Fte ;;
  }

  dimension: bmonth6_fte {
    type: number
    sql: ${TABLE}.BMonth6Fte ;;
  }

  dimension: bmonth7_fte {
    type: number
    sql: ${TABLE}.BMonth7Fte ;;
  }

  dimension: bmonth8_fte {
    type: number
    sql: ${TABLE}.BMonth8Fte ;;
  }

  dimension: bmonth9_fte {
    type: number
    sql: ${TABLE}.BMonth9Fte ;;
  }

  dimension: bsid {
    type: number
    value_format_name: id
    sql: ${TABLE}.BSID ;;
  }

  dimension: exid {
    type: number
    value_format_name: id
    sql: ${TABLE}.EXID ;;
  }

  dimension: scid {
    type: string
    sql: ${TABLE}.SCID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
