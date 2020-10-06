view: data_update_setting {
  sql_table_name: dbo.DataUpdateSetting ;;

  dimension: update_cucharge_override {
    type: string
    sql: ${TABLE}.UpdateCUChargeOverride ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
