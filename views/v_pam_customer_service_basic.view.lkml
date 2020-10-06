view: v_pam_customer_service_basic {
  sql_table_name: dbo.vPAM_CustomerServiceBasic ;;

  dimension: classification_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ClassificationID ;;
  }

  dimension: classification_id2 {
    type: number
    sql: ${TABLE}.ClassificationID2 ;;
  }

  dimension: code {
    type: string
    sql: ${TABLE}.Code ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  measure: count {
    type: count
    drill_fields: [name, classification.id, classification.name]
  }
}
