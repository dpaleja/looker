view: scbudget_contributors {
  sql_table_name: dbo.SCBudgetContributors ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: acname {
    type: string
    sql: ${TABLE}.ACName ;;
  }

  dimension: allocated_amount {
    type: number
    sql: ${TABLE}.AllocatedAmount ;;
  }

  dimension: ccname {
    type: string
    sql: ${TABLE}.CCName ;;
  }

  dimension: exname {
    type: string
    sql: ${TABLE}.EXName ;;
  }

  dimension: sccode {
    type: string
    sql: ${TABLE}.SCCode ;;
  }

  dimension: total_amount {
    type: number
    sql: ${TABLE}.TotalAmount ;;
  }

  measure: count {
    type: count
    drill_fields: [id, ccname, acname, exname]
  }
}
