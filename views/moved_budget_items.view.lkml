view: moved_budget_items {
  sql_table_name: dbo.MovedBudgetItems ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: budget_amount {
    type: number
    sql: ${TABLE}.BudgetAmount ;;
  }

  dimension: expense_name {
    type: string
    sql: ${TABLE}.ExpenseName ;;
  }

  dimension: new_ac {
    type: string
    sql: ${TABLE}.NewAC ;;
  }

  dimension: new_cc {
    type: string
    sql: ${TABLE}.NewCC ;;
  }

  dimension: source_ac {
    type: string
    sql: ${TABLE}.SourceAC ;;
  }

  dimension: source_cc {
    type: string
    sql: ${TABLE}.SourceCC ;;
  }

  dimension: stamp {
    type: string
    sql: ${TABLE}.Stamp ;;
  }

  dimension: user_name {
    type: string
    sql: ${TABLE}.UserName ;;
  }

  measure: count {
    type: count
    drill_fields: [id, expense_name, user_name]
  }
}
