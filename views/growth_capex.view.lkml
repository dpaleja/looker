view: growth_capex {
  sql_table_name: dbo.GrowthCapex ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: amount {
    type: number
    sql: ${TABLE}.Amount ;;
  }

  dimension: base_count {
    type: number
    sql: ${TABLE}.BaseCount ;;
  }

  dimension: base_diff {
    type: number
    sql: ${TABLE}.BaseDiff ;;
  }

  dimension: capacity {
    type: number
    sql: ${TABLE}.Capacity ;;
  }

  dimension: capacity_cost {
    type: number
    sql: ${TABLE}.CapacityCost ;;
  }

  dimension: capital_total {
    type: number
    sql: ${TABLE}.CapitalTotal ;;
  }

  dimension: fcgrowth_diff {
    type: number
    sql: ${TABLE}.FCGrowthDiff ;;
  }

  dimension: increments {
    type: number
    sql: ${TABLE}.Increments ;;
  }

  dimension: is_absorption {
    type: string
    sql: ${TABLE}.IsAbsorption ;;
  }

  dimension: is_parent {
    type: string
    sql: ${TABLE}.IsParent ;;
  }

  dimension: parent_id {
    type: number
    sql: ${TABLE}.ParentID ;;
  }

  dimension: scsensitivity {
    type: number
    sql: ${TABLE}.SCSensitivity ;;
  }

  dimension: service_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ServiceID ;;
  }

  dimension: variance {
    type: number
    sql: ${TABLE}.Variance ;;
  }

  dimension: year_num {
    type: number
    sql: ${TABLE}.YearNum ;;
  }

  measure: count {
    type: count
    drill_fields: [id, services.id, services.name]
  }
}
