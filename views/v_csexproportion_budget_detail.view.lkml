view: v_csexproportion_budget_detail {
  sql_table_name: dbo.vCSEXProportionBudgetDetail ;;

  dimension: bproportion1 {
    type: number
    sql: ${TABLE}.BProportion1 ;;
  }

  dimension: bproportion10 {
    type: number
    sql: ${TABLE}.BProportion10 ;;
  }

  dimension: bproportion11 {
    type: number
    sql: ${TABLE}.BProportion11 ;;
  }

  dimension: bproportion12 {
    type: number
    sql: ${TABLE}.BProportion12 ;;
  }

  dimension: bproportion2 {
    type: number
    sql: ${TABLE}.BProportion2 ;;
  }

  dimension: bproportion3 {
    type: number
    sql: ${TABLE}.BProportion3 ;;
  }

  dimension: bproportion4 {
    type: number
    sql: ${TABLE}.BProportion4 ;;
  }

  dimension: bproportion5 {
    type: number
    sql: ${TABLE}.BProportion5 ;;
  }

  dimension: bproportion6 {
    type: number
    sql: ${TABLE}.BProportion6 ;;
  }

  dimension: bproportion7 {
    type: number
    sql: ${TABLE}.BProportion7 ;;
  }

  dimension: bproportion8 {
    type: number
    sql: ${TABLE}.BProportion8 ;;
  }

  dimension: bproportion9 {
    type: number
    sql: ${TABLE}.BProportion9 ;;
  }

  dimension: bproportion_annual {
    type: number
    sql: ${TABLE}.BProportionAnnual ;;
  }

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

  dimension: scid {
    type: string
    sql: ${TABLE}.SCID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
