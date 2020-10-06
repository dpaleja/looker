view: allocations {
  sql_table_name: dbo.Allocations ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: alloc_m1 {
    type: number
    sql: ${TABLE}.AllocM1 ;;
  }

  dimension: alloc_m10 {
    type: number
    sql: ${TABLE}.AllocM10 ;;
  }

  dimension: alloc_m11 {
    type: number
    sql: ${TABLE}.AllocM11 ;;
  }

  dimension: alloc_m12 {
    type: number
    sql: ${TABLE}.AllocM12 ;;
  }

  dimension: alloc_m2 {
    type: number
    sql: ${TABLE}.AllocM2 ;;
  }

  dimension: alloc_m3 {
    type: number
    sql: ${TABLE}.AllocM3 ;;
  }

  dimension: alloc_m4 {
    type: number
    sql: ${TABLE}.AllocM4 ;;
  }

  dimension: alloc_m5 {
    type: number
    sql: ${TABLE}.AllocM5 ;;
  }

  dimension: alloc_m6 {
    type: number
    sql: ${TABLE}.AllocM6 ;;
  }

  dimension: alloc_m7 {
    type: number
    sql: ${TABLE}.AllocM7 ;;
  }

  dimension: alloc_m8 {
    type: number
    sql: ${TABLE}.AllocM8 ;;
  }

  dimension: alloc_m9 {
    type: number
    sql: ${TABLE}.AllocM9 ;;
  }

  dimension: allocation_percentage {
    type: number
    sql: ${TABLE}.AllocationPercentage ;;
  }

  dimension: allocation_type {
    type: number
    sql: ${TABLE}.AllocationType ;;
  }

  dimension: expense_item_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ExpenseItemID ;;
  }

  dimension: fixed_amount {
    type: number
    sql: ${TABLE}.FixedAmount ;;
  }

  dimension: incoming_id {
    type: number
    sql: ${TABLE}.IncomingID ;;
  }

  dimension: int_sensitivity {
    type: number
    sql: ${TABLE}.intSensitivity ;;
  }

  dimension: is_auto_entry {
    type: string
    sql: ${TABLE}.IsAutoEntry ;;
  }

  dimension: is_balanced {
    type: string
    sql: ${TABLE}.IsBalanced ;;
  }

  dimension: is_balanced_by_default {
    type: string
    sql: ${TABLE}.IsBalancedByDefault ;;
  }

  dimension: month10_amount {
    type: number
    sql: ${TABLE}.Month10Amount ;;
  }

  dimension: month11_amount {
    type: number
    sql: ${TABLE}.Month11Amount ;;
  }

  dimension: month12_amount {
    type: number
    sql: ${TABLE}.Month12Amount ;;
  }

  dimension: month1_amount {
    type: number
    sql: ${TABLE}.Month1Amount ;;
  }

  dimension: month2_amount {
    type: number
    sql: ${TABLE}.Month2Amount ;;
  }

  dimension: month3_amount {
    type: number
    sql: ${TABLE}.Month3Amount ;;
  }

  dimension: month4_amount {
    type: number
    sql: ${TABLE}.Month4Amount ;;
  }

  dimension: month5_amount {
    type: number
    sql: ${TABLE}.Month5Amount ;;
  }

  dimension: month6_amount {
    type: number
    sql: ${TABLE}.Month6Amount ;;
  }

  dimension: month7_amount {
    type: number
    sql: ${TABLE}.Month7Amount ;;
  }

  dimension: month8_amount {
    type: number
    sql: ${TABLE}.Month8Amount ;;
  }

  dimension: month9_amount {
    type: number
    sql: ${TABLE}.Month9Amount ;;
  }

  dimension: outgoing_id {
    type: number
    sql: ${TABLE}.OutgoingID ;;
  }

  dimension: rounding {
    type: number
    sql: ${TABLE}.Rounding ;;
  }

  dimension: ualloc_m1 {
    type: number
    sql: ${TABLE}.UAllocM1 ;;
  }

  dimension: ualloc_m10 {
    type: number
    sql: ${TABLE}.UAllocM10 ;;
  }

  dimension: ualloc_m11 {
    type: number
    sql: ${TABLE}.UAllocM11 ;;
  }

  dimension: ualloc_m12 {
    type: number
    sql: ${TABLE}.UAllocM12 ;;
  }

  dimension: ualloc_m2 {
    type: number
    sql: ${TABLE}.UAllocM2 ;;
  }

  dimension: ualloc_m3 {
    type: number
    sql: ${TABLE}.UAllocM3 ;;
  }

  dimension: ualloc_m4 {
    type: number
    sql: ${TABLE}.UAllocM4 ;;
  }

  dimension: ualloc_m5 {
    type: number
    sql: ${TABLE}.UAllocM5 ;;
  }

  dimension: ualloc_m6 {
    type: number
    sql: ${TABLE}.UAllocM6 ;;
  }

  dimension: ualloc_m7 {
    type: number
    sql: ${TABLE}.UAllocM7 ;;
  }

  dimension: ualloc_m8 {
    type: number
    sql: ${TABLE}.UAllocM8 ;;
  }

  dimension: ualloc_m9 {
    type: number
    sql: ${TABLE}.UAllocM9 ;;
  }

  dimension: urounding {
    type: number
    sql: ${TABLE}.Urounding ;;
  }

  measure: count {
    type: count
    drill_fields: [id, expense_items.id, expense_items.name, qry_sync_expense_monthly_allocations.count]
  }
}
