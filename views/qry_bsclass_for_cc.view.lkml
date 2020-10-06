view: qry_bsclass_for_cc {
  sql_table_name: dbo.qryBSClassForCC ;;

  dimension: bsclassification {
    type: string
    sql: ${TABLE}.BSClassification ;;
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
