view: import_save {
  sql_table_name: dbo.ImportSave ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: _old_id {
    type: number
    sql: ${TABLE}._Old_ID ;;
  }

  dimension: apply_month_in_cc {
    type: number
    sql: ${TABLE}.ApplyMonthInCC ;;
  }

  dimension: asset_key_id {
    type: number
    sql: ${TABLE}.AssetKeyId ;;
  }

  dimension: forecast_year_num {
    type: number
    sql: ${TABLE}.ForecastYearNum ;;
  }

  dimension: is_system {
    type: string
    sql: ${TABLE}.IsSystem ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: options {
    type: number
    sql: ${TABLE}.Options ;;
  }

  dimension: recalculate {
    type: string
    sql: ${TABLE}.Recalculate ;;
  }

  dimension: supplier_id {
    type: number
    sql: ${TABLE}.SupplierId ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.Type ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
