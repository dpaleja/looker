view: scbudget_allocations {
  sql_table_name: dbo.SCBudgetAllocations ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: bscode {
    type: number
    sql: ${TABLE}.BSCode ;;
  }

  dimension: bsname {
    type: string
    sql: ${TABLE}.BSName ;;
  }

  dimension: percentage {
    type: number
    sql: ${TABLE}.Percentage ;;
  }

  dimension: sccode {
    type: string
    sql: ${TABLE}.SCCode ;;
  }

  dimension: units {
    type: number
    sql: ${TABLE}.Units ;;
  }

  measure: count {
    type: count
    drill_fields: [id, bsname]
  }
}
