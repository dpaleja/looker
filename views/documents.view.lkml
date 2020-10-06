view: documents {
  sql_table_name: dbo.Documents ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: _old_id {
    type: number
    sql: ${TABLE}._Old_ID ;;
  }

  dimension: contract_id {
    type: number
    sql: ${TABLE}.ContractID ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: path {
    type: string
    sql: ${TABLE}.Path ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
