view: v_csexproportion_actual_detail {
  sql_table_name: dbo.vCSEXProportionActualDetail ;;

  dimension: bsid {
    type: number
    value_format_name: id
    sql: ${TABLE}.BSID ;;
  }

  dimension: csid {
    type: number
    value_format_name: id
    sql: ${TABLE}.CSID ;;
  }

  dimension: exid {
    type: number
    value_format_name: id
    sql: ${TABLE}.EXID ;;
  }

  dimension: proportion1 {
    type: number
    sql: ${TABLE}.Proportion1 ;;
  }

  dimension: proportion10 {
    type: number
    sql: ${TABLE}.Proportion10 ;;
  }

  dimension: proportion11 {
    type: number
    sql: ${TABLE}.Proportion11 ;;
  }

  dimension: proportion12 {
    type: number
    sql: ${TABLE}.Proportion12 ;;
  }

  dimension: proportion2 {
    type: number
    sql: ${TABLE}.Proportion2 ;;
  }

  dimension: proportion3 {
    type: number
    sql: ${TABLE}.Proportion3 ;;
  }

  dimension: proportion4 {
    type: number
    sql: ${TABLE}.Proportion4 ;;
  }

  dimension: proportion5 {
    type: number
    sql: ${TABLE}.Proportion5 ;;
  }

  dimension: proportion6 {
    type: number
    sql: ${TABLE}.Proportion6 ;;
  }

  dimension: proportion7 {
    type: number
    sql: ${TABLE}.Proportion7 ;;
  }

  dimension: proportion8 {
    type: number
    sql: ${TABLE}.Proportion8 ;;
  }

  dimension: proportion9 {
    type: number
    sql: ${TABLE}.Proportion9 ;;
  }

  dimension: proportion_annual {
    type: number
    sql: ${TABLE}.ProportionAnnual ;;
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
