view: orginal_vendor_invoice {
  sql_table_name: dbo.OrginalVendorInvoice ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: account_name {
    type: string
    sql: ${TABLE}.AccountName ;;
  }

  dimension: apply_month_in_cc {
    type: number
    sql: ${TABLE}.ApplyMonthInCC ;;
  }

  dimension: invoice_date {
    type: string
    sql: ${TABLE}.InvoiceDate ;;
  }

  dimension: invoice_no {
    type: string
    sql: ${TABLE}.InvoiceNo ;;
  }

  dimension: process_status {
    type: number
    sql: ${TABLE}.ProcessStatus ;;
  }

  dimension: vendor {
    type: string
    sql: ${TABLE}.Vendor ;;
  }

  measure: count {
    type: count
    drill_fields: [id, account_name]
  }
}
