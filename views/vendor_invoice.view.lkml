view: vendor_invoice {
  sql_table_name: dbo.VendorInvoice ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: apply_month_in_cc {
    type: number
    sql: ${TABLE}.ApplyMonthInCC ;;
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

  dimension: invoice_no {
    type: string
    sql: ${TABLE}.InvoiceNo ;;
  }

  dimension: process_status {
    type: number
    sql: ${TABLE}.ProcessStatus ;;
  }

  dimension_group: processed {
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
    sql: ${TABLE}.ProcessedDate ;;
  }

  dimension: vendor {
    type: string
    sql: ${TABLE}.Vendor ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
