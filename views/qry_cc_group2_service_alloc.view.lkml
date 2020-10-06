view: qry_cc_group2_service_alloc {
  sql_table_name: dbo.qryCC_Group2_ServiceAlloc ;;

  dimension: group_da {
    type: number
    sql: ${TABLE}.GroupDa ;;
  }

  dimension: group_name {
    type: string
    sql: ${TABLE}.GroupName ;;
  }

  dimension: sng_total_cc {
    type: number
    sql: ${TABLE}.sngTotalCC ;;
  }

  measure: count {
    type: count
    drill_fields: [group_name]
  }
}
