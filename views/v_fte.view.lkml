view: v_fte {
  sql_table_name: dbo.vFte ;;

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

  dimension: exid {
    type: number
    value_format_name: id
    sql: ${TABLE}.EXID ;;
  }

  dimension: fte_count {
    type: number
    sql: ${TABLE}.FteCount ;;
  }

  dimension: month10_fte {
    type: number
    sql: ${TABLE}.Month10Fte ;;
  }

  dimension: month11_fte {
    type: number
    sql: ${TABLE}.Month11Fte ;;
  }

  dimension: month12_fte {
    type: number
    sql: ${TABLE}.Month12Fte ;;
  }

  dimension: month1_fte {
    type: number
    sql: ${TABLE}.Month1Fte ;;
  }

  dimension: month2_fte {
    type: number
    sql: ${TABLE}.Month2Fte ;;
  }

  dimension: month3_fte {
    type: number
    sql: ${TABLE}.Month3Fte ;;
  }

  dimension: month4_fte {
    type: number
    sql: ${TABLE}.Month4Fte ;;
  }

  dimension: month5_fte {
    type: number
    sql: ${TABLE}.Month5Fte ;;
  }

  dimension: month6_fte {
    type: number
    sql: ${TABLE}.Month6Fte ;;
  }

  dimension: month7_fte {
    type: number
    sql: ${TABLE}.Month7Fte ;;
  }

  dimension: month8_fte {
    type: number
    sql: ${TABLE}.Month8Fte ;;
  }

  dimension: month9_fte {
    type: number
    sql: ${TABLE}.Month9Fte ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
