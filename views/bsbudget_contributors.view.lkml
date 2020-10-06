view: bsbudget_contributors {
  sql_table_name: dbo.BSBudgetContributors ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: bscode {
    type: string
    sql: ${TABLE}.BSCode ;;
  }

  dimension: contributed {
    type: string
    sql: ${TABLE}.Contributed ;;
  }

  dimension: percent {
    type: string
    sql: ${TABLE}."Percent" ;;
  }

  dimension: scname {
    type: string
    sql: ${TABLE}.SCName ;;
  }

  dimension: unit_type {
    type: string
    sql: ${TABLE}.UnitType ;;
  }

  dimension: units_allocated {
    type: string
    sql: ${TABLE}.UnitsAllocated ;;
  }

  measure: count {
    type: count
    drill_fields: [id, scname]
  }
}
