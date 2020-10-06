view: report3_a {
  sql_table_name: dbo.Report3A ;;

  dimension: charge_amount {
    type: number
    sql: ${TABLE}.ChargeAmount ;;
  }

  dimension: charge_percent {
    type: number
    sql: ${TABLE}.ChargePercent ;;
  }

  dimension: profit {
    type: number
    sql: ${TABLE}.Profit ;;
  }

  dimension: profit_percent {
    type: number
    sql: ${TABLE}.ProfitPercent ;;
  }

  dimension: sng_annual_amount {
    type: number
    sql: ${TABLE}.sngAnnualAmount ;;
  }

  dimension: sng_total {
    type: number
    sql: ${TABLE}.sngTotal ;;
  }

  dimension: str_classification1 {
    type: string
    sql: ${TABLE}.strClassification1 ;;
  }

  dimension: str_cost_centre_code {
    type: string
    sql: ${TABLE}.strCostCentreCode ;;
  }

  dimension: str_cost_centre_name {
    type: string
    sql: ${TABLE}.strCostCentreName ;;
  }

  dimension: str_service_name {
    type: string
    sql: ${TABLE}.strServiceName ;;
  }

  dimension: unit_charge {
    type: number
    sql: ${TABLE}.UnitCharge ;;
  }

  measure: count {
    type: count
    drill_fields: [str_cost_centre_name, str_service_name]
  }
}
