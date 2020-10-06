view: qry_classification_string_id {
  sql_table_name: dbo.qryClassificationStringID ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: group_id {
    type: number
    sql: ${TABLE}.GroupID ;;
  }

  dimension: idstring {
    type: string
    sql: ${TABLE}.IDString ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.Type ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
