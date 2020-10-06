view: qrpt_cc_group_cu_group2_l3_bs_cu {
  sql_table_name: dbo.qrptCC_Group_CU_Group2_L3_BS_CU ;;

  dimension: amount1 {
    type: number
    sql: ${TABLE}.Amount1 ;;
  }

  dimension: ccgroup_name {
    type: string
    sql: ${TABLE}.CCGroupName ;;
  }

  dimension: ccid {
    type: number
    value_format_name: id
    sql: ${TABLE}.CCID ;;
  }

  dimension: cugroup_name {
    type: string
    sql: ${TABLE}.CUGroupName ;;
  }

  dimension: group_id {
    type: number
    sql: ${TABLE}.GroupID ;;
  }

  measure: count {
    type: count
    drill_fields: [ccgroup_name, cugroup_name]
  }
}
