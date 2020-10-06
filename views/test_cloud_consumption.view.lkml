view: test_cloud_consumption {
  sql_table_name: dbo.TestCloudConsumption ;;

  dimension: allocation_ {
    type: number
    sql: ${TABLE}."Allocation %" ;;
  }

  dimension: asset_name {
    type: string
    sql: ${TABLE}.AssetName ;;
  }

  dimension: asset_type {
    type: string
    sql: ${TABLE}."Asset Type" ;;
  }

  dimension: business_service {
    type: string
    sql: ${TABLE}."Business Service" ;;
  }

  dimension: charge {
    type: number
    sql: ${TABLE}.Charge ;;
  }

  dimension: month {
    type: string
    sql: ${TABLE}.Month ;;
  }

  dimension: rate {
    type: number
    sql: ${TABLE}.Rate ;;
  }

  dimension: service_type {
    type: string
    sql: ${TABLE}.ServiceType ;;
  }

  dimension: total_charge {
    type: number
    sql: ${TABLE}."Total Charge" ;;
  }

  dimension: total_unit {
    type: number
    sql: ${TABLE}."Total Unit" ;;
  }

  dimension: unit {
    type: number
    sql: ${TABLE}.Unit ;;
  }

  measure: count {
    type: count
    drill_fields: [asset_name]
  }
}
