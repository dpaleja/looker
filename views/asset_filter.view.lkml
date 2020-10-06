view: asset_filter {
  sql_table_name: dbo.AssetFilter ;;
  drill_fields: [asset_filter_id]

  dimension: asset_filter_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.AssetFilterID ;;
  }

  dimension: checked {
    type: string
    sql: ${TABLE}.Checked ;;
  }

  dimension: filter_type_id {
    type: string
    sql: ${TABLE}.FilterTypeID ;;
  }

  dimension: filter_value {
    type: string
    sql: ${TABLE}.FilterValue ;;
  }

  dimension: user_code {
    type: number
    sql: ${TABLE}.UserCode ;;
  }

  measure: count {
    type: count
    drill_fields: [asset_filter_id]
  }
}
