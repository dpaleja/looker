view: expense_budget_allocations {
  sql_table_name: dbo.ExpenseBudgetAllocations ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: balloc_m1 {
    type: number
    sql: ${TABLE}.BAllocM1 ;;
  }

  dimension: balloc_m10 {
    type: number
    sql: ${TABLE}.BAllocM10 ;;
  }

  dimension: balloc_m11 {
    type: number
    sql: ${TABLE}.BAllocM11 ;;
  }

  dimension: balloc_m12 {
    type: number
    sql: ${TABLE}.BAllocM12 ;;
  }

  dimension: balloc_m2 {
    type: number
    sql: ${TABLE}.BAllocM2 ;;
  }

  dimension: balloc_m3 {
    type: number
    sql: ${TABLE}.BAllocM3 ;;
  }

  dimension: balloc_m4 {
    type: number
    sql: ${TABLE}.BAllocM4 ;;
  }

  dimension: balloc_m5 {
    type: number
    sql: ${TABLE}.BAllocM5 ;;
  }

  dimension: balloc_m6 {
    type: number
    sql: ${TABLE}.BAllocM6 ;;
  }

  dimension: balloc_m7 {
    type: number
    sql: ${TABLE}.BAllocM7 ;;
  }

  dimension: balloc_m8 {
    type: number
    sql: ${TABLE}.BAllocM8 ;;
  }

  dimension: balloc_m9 {
    type: number
    sql: ${TABLE}.BAllocM9 ;;
  }

  dimension: brounding {
    type: number
    sql: ${TABLE}.BRounding ;;
  }

  dimension: bualloc_m1 {
    type: number
    sql: ${TABLE}.BUAllocM1 ;;
  }

  dimension: bualloc_m10 {
    type: number
    sql: ${TABLE}.BUAllocM10 ;;
  }

  dimension: bualloc_m11 {
    type: number
    sql: ${TABLE}.BUAllocM11 ;;
  }

  dimension: bualloc_m12 {
    type: number
    sql: ${TABLE}.BUAllocM12 ;;
  }

  dimension: bualloc_m2 {
    type: number
    sql: ${TABLE}.BUAllocM2 ;;
  }

  dimension: bualloc_m3 {
    type: number
    sql: ${TABLE}.BUAllocM3 ;;
  }

  dimension: bualloc_m4 {
    type: number
    sql: ${TABLE}.BUAllocM4 ;;
  }

  dimension: bualloc_m5 {
    type: number
    sql: ${TABLE}.BUAllocM5 ;;
  }

  dimension: bualloc_m6 {
    type: number
    sql: ${TABLE}.BUAllocM6 ;;
  }

  dimension: bualloc_m7 {
    type: number
    sql: ${TABLE}.BUAllocM7 ;;
  }

  dimension: bualloc_m8 {
    type: number
    sql: ${TABLE}.BUAllocM8 ;;
  }

  dimension: bualloc_m9 {
    type: number
    sql: ${TABLE}.BUAllocM9 ;;
  }

  dimension: burounding {
    type: number
    sql: ${TABLE}.BURounding ;;
  }

  dimension: expense_item_code {
    type: string
    sql: ${TABLE}.ExpenseItemCode ;;
  }

  dimension: percentage {
    type: number
    sql: ${TABLE}.Percentage ;;
  }

  dimension: sccode {
    type: number
    sql: ${TABLE}.SCCode ;;
  }

  dimension: scname {
    type: string
    sql: ${TABLE}.SCName ;;
  }

  measure: count {
    type: count
    drill_fields: [id, scname]
  }
}
