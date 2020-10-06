view: orginal_vendor_invoice_detail {
  sql_table_name: dbo.OrginalVendorInvoiceDetail ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: asset_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.AssetID ;;
  }

  dimension: invoice_id {
    type: number
    sql: ${TABLE}.InvoiceID ;;
  }

  dimension: service_charge {
    type: string
    sql: ${TABLE}.ServiceCharge ;;
  }

  dimension: service_from {
    type: string
    sql: ${TABLE}.ServiceFrom ;;
  }

  dimension: service_item_id {
    type: string
    sql: ${TABLE}.ServiceItemID ;;
  }

  dimension: service_rate {
    type: string
    sql: ${TABLE}.ServiceRate ;;
  }

  dimension: service_to {
    type: string
    sql: ${TABLE}.ServiceTo ;;
  }

  dimension: service_type {
    type: string
    sql: ${TABLE}.ServiceType ;;
  }

  dimension: service_units {
    type: string
    sql: ${TABLE}.ServiceUnits ;;
  }

  dimension: user_defined_field1 {
    type: string
    sql: ${TABLE}.UserDefinedField1 ;;
  }

  dimension: user_defined_field2 {
    type: string
    sql: ${TABLE}.UserDefinedField2 ;;
  }

  dimension: user_defined_field3 {
    type: string
    sql: ${TABLE}.UserDefinedField3 ;;
  }

  dimension: user_defined_field4 {
    type: string
    sql: ${TABLE}.UserDefinedField4 ;;
  }

  measure: count {
    type: count
    drill_fields: [id, assets._old_asset_id, assets.asset_name]
  }
}
