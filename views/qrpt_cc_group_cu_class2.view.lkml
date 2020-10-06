view: qrpt_cc_group_cu_class2 {
  sql_table_name: dbo.qrptCC_Group_CU_Class2 ;;

  dimension: amount1 {
    type: number
    sql: ${TABLE}.Amount1 ;;
  }

  dimension: group {
    type: string
    sql: ${TABLE}."Group" ;;
  }

  dimension: group_name {
    type: string
    sql: ${TABLE}.GroupName ;;
  }

  dimension: str_cost_centre_code {
    type: string
    sql: ${TABLE}.strCostCentreCode ;;
  }

  measure: count {
    type: count
    drill_fields: [group_name]
  }
}
