view: vendor_invoice_import_log {
  sql_table_name: dbo.VendorInvoiceImportLog ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: invoice_code {
    type: string
    sql: ${TABLE}.InvoiceCode ;;
  }

  dimension_group: invoice {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.InvoiceDate ;;
  }

  dimension: invoice_file_name {
    type: string
    sql: ${TABLE}.InvoiceFileName ;;
  }

  dimension: object_type {
    type: number
    sql: ${TABLE}.ObjectType ;;
  }

  dimension_group: record {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.RecordDate ;;
  }

  dimension: successful {
    type: string
    sql: ${TABLE}.Successful ;;
  }

  dimension: template_name {
    type: string
    sql: ${TABLE}.TemplateName ;;
  }

  dimension: user {
    type: string
    sql: ${TABLE}."User" ;;
  }

  dimension: vendor_name {
    type: string
    sql: ${TABLE}.VendorName ;;
  }

  measure: count {
    type: count
    drill_fields: [id, template_name, invoice_file_name, vendor_name]
  }
}
