view: qrpt_cc_group_cu_group2 {
  sql_table_name: dbo.qrptCC_Group_CU_Group2 ;;

  dimension: amount1 {
    type: number
    sql: ${TABLE}.Amount1 ;;
  }

  dimension: ccgroup_name {
    type: string
    sql: ${TABLE}.CCGroupName ;;
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
