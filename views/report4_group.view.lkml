view: report4_group {
  sql_table_name: dbo.Report4Group ;;

  dimension: group_id {
    type: number
    sql: ${TABLE}.GroupID ;;
  }

  dimension: group_name {
    type: string
    sql: ${TABLE}.GroupName ;;
  }

  dimension: sum_ofsng_total {
    type: number
    sql: ${TABLE}.SumOfsngTotal ;;
  }

  measure: count {
    type: count
    drill_fields: [group_name]
  }
}
