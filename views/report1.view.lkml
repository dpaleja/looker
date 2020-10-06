view: report1 {
  sql_table_name: dbo.Report1 ;;

  dimension: dbl_rate_spec {
    type: number
    sql: ${TABLE}.dblRateSpec ;;
  }

  dimension: lng_volume_spec {
    type: number
    sql: ${TABLE}.lngVolumeSpec ;;
  }

  dimension: str_classification {
    type: string
    sql: ${TABLE}.strClassification ;;
  }

  dimension: str_classification2 {
    type: string
    sql: ${TABLE}.strClassification2 ;;
  }

  dimension: str_description {
    type: string
    sql: ${TABLE}.strDescription ;;
  }

  dimension: str_service_code {
    type: string
    sql: ${TABLE}.strServiceCode ;;
  }

  dimension: str_service_name {
    type: string
    sql: ${TABLE}.strServiceName ;;
  }

  dimension: str_sort_key {
    type: string
    sql: ${TABLE}.strSortKey ;;
  }

  dimension: str_unit_type {
    type: string
    sql: ${TABLE}.strUnitType ;;
  }

  measure: count {
    type: count
    drill_fields: [str_service_name]
  }
}
