view: qry_sync_expense_monthly_allocations {
  sql_table_name: dbo.qrySyncExpenseMonthlyAllocations ;;

  dimension: allocation_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.AllocationID ;;
  }

  dimension: m1 {
    type: number
    sql: ${TABLE}.m1 ;;
  }

  dimension: m10 {
    type: number
    sql: ${TABLE}.m10 ;;
  }

  dimension: m11 {
    type: number
    sql: ${TABLE}.m11 ;;
  }

  dimension: m12 {
    type: number
    sql: ${TABLE}.m12 ;;
  }

  dimension: m2 {
    type: number
    sql: ${TABLE}.m2 ;;
  }

  dimension: m3 {
    type: number
    sql: ${TABLE}.m3 ;;
  }

  dimension: m4 {
    type: number
    sql: ${TABLE}.m4 ;;
  }

  dimension: m5 {
    type: number
    sql: ${TABLE}.m5 ;;
  }

  dimension: m6 {
    type: number
    sql: ${TABLE}.m6 ;;
  }

  dimension: m7 {
    type: number
    sql: ${TABLE}.m7 ;;
  }

  dimension: m8 {
    type: number
    sql: ${TABLE}.m8 ;;
  }

  dimension: m9 {
    type: number
    sql: ${TABLE}.m9 ;;
  }

  dimension: s1 {
    type: number
    sql: ${TABLE}.s1 ;;
  }

  dimension: s10 {
    type: number
    sql: ${TABLE}.s10 ;;
  }

  dimension: s11 {
    type: number
    sql: ${TABLE}.s11 ;;
  }

  dimension: s12 {
    type: number
    sql: ${TABLE}.s12 ;;
  }

  dimension: s2 {
    type: number
    sql: ${TABLE}.s2 ;;
  }

  dimension: s3 {
    type: number
    sql: ${TABLE}.s3 ;;
  }

  dimension: s4 {
    type: number
    sql: ${TABLE}.s4 ;;
  }

  dimension: s5 {
    type: number
    sql: ${TABLE}.s5 ;;
  }

  dimension: s6 {
    type: number
    sql: ${TABLE}.s6 ;;
  }

  dimension: s7 {
    type: number
    sql: ${TABLE}.s7 ;;
  }

  dimension: s8 {
    type: number
    sql: ${TABLE}.s8 ;;
  }

  dimension: s9 {
    type: number
    sql: ${TABLE}.s9 ;;
  }

  dimension: sr {
    type: number
    sql: ${TABLE}.sr ;;
  }

  dimension: str_expense_item_code {
    type: number
    sql: ${TABLE}.strExpenseItemCode ;;
  }

  measure: count {
    type: count
    drill_fields: [allocations.id]
  }
}
