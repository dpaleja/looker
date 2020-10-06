view: document_expense {
  sql_table_name: dbo.DocumentExpense ;;
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

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: expense_id {
    type: number
    sql: ${TABLE}.ExpenseID ;;
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
