view: qrpt_cc_group_cu_class2_l3_bs_cu {
  sql_table_name: dbo.qrptCC_Group_CU_Class2_L3_BS_CU ;;

  dimension: amount1 {
    type: number
    sql: ${TABLE}.Amount1 ;;
  }

  dimension: ccid {
    type: number
    value_format_name: id
    sql: ${TABLE}.CCID ;;
  }

  dimension: group {
    type: string
    sql: ${TABLE}."Group" ;;
  }

  dimension: group_name {
    type: string
    sql: ${TABLE}.GroupName ;;
  }

  measure: count {
    type: count
    drill_fields: [group_name]
  }
}
