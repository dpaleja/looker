view: qry_bsclass_by_cudetail_rate_total {
  sql_table_name: dbo.qryBSClassByCUDetailRateTotal ;;

  dimension: class_name {
    type: string
    sql: ${TABLE}.ClassName ;;
  }

  dimension: classification_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ClassificationID ;;
  }

  dimension: count_qry_bsclass_by_cudetail_rate_total {
    type: number
    sql: ${TABLE}.count ;;
  }

  dimension: group_name {
    type: string
    sql: ${TABLE}.GroupName ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: str_classification {
    type: string
    sql: ${TABLE}.strClassification ;;
  }

  measure: count {
    type: count
    drill_fields: [group_name, class_name, name, classification.id, classification.name]
  }
}
