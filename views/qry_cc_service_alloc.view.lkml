view: qry_cc_service_alloc {
  sql_table_name: dbo.qryCC_ServiceAlloc ;;

  dimension: cost_centre_class {
    type: string
    sql: ${TABLE}.CostCentreClass ;;
  }

  dimension: cost_centre_class2 {
    type: string
    sql: ${TABLE}.CostCentreClass2 ;;
  }

  dimension: cost_centre_class2_group {
    type: string
    sql: ${TABLE}.CostCentreClass2Group ;;
  }

  dimension: cost_centre_class_group {
    type: string
    sql: ${TABLE}.CostCentreClassGroup ;;
  }

  dimension: sng_total_cc {
    type: number
    sql: ${TABLE}.sngTotalCC ;;
  }

  dimension: str_code {
    type: number
    sql: ${TABLE}.strCode ;;
  }

  dimension: str_cost_centre_code {
    type: string
    sql: ${TABLE}.strCostCentreCode ;;
  }

  dimension: str_cost_centre_name {
    type: string
    sql: ${TABLE}.strCostCentreName ;;
  }

  measure: count {
    type: count
    drill_fields: [str_cost_centre_name]
  }
}
