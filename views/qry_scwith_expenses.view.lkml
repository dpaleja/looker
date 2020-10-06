view: qry_scwith_expenses {
  sql_table_name: dbo.qrySCWithExpenses ;;

  dimension: sng_total_cose {
    type: number
    sql: ${TABLE}.sngTotalCose ;;
  }

  dimension: str_code {
    type: number
    sql: ${TABLE}.strCode ;;
  }

  dimension: str_service_name {
    type: string
    sql: ${TABLE}.strServiceName ;;
  }

  measure: count {
    type: count
    drill_fields: [str_service_name]
  }
}
