view: v_service_component_monthly_fte_detail {
  sql_table_name: dbo.vServiceComponentMonthlyFteDetail ;;

  dimension: exid {
    type: number
    value_format_name: id
    sql: ${TABLE}.EXID ;;
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

  dimension: scid {
    type: number
    value_format_name: id
    sql: ${TABLE}.SCID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
