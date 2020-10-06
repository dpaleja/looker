view: report4_class {
  sql_table_name: dbo.Report4Class ;;

  dimension: str_classification1 {
    type: string
    sql: ${TABLE}.strClassification1 ;;
  }

  dimension: sum_ofsng_total {
    type: number
    sql: ${TABLE}.SumOfsngTotal ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
