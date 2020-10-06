view: contract_supplier {
  sql_table_name: dbo.ContractSupplier ;;
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

  dimension: address {
    type: string
    sql: ${TABLE}.Address ;;
  }

  dimension: comments {
    type: string
    sql: ${TABLE}.Comments ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.Email ;;
  }

  dimension: main_contact {
    type: string
    sql: ${TABLE}.MainContact ;;
  }

  dimension: main_contact_phone {
    type: string
    sql: ${TABLE}.MainContactPhone ;;
  }

  dimension: secondary_contact {
    type: string
    sql: ${TABLE}.SecondaryContact ;;
  }

  dimension: secondary_contact_phone {
    type: string
    sql: ${TABLE}.SecondaryContactPhone ;;
  }

  dimension: supplier_name {
    type: string
    sql: ${TABLE}.SupplierName ;;
  }

  measure: count {
    type: count
    drill_fields: [id, supplier_name]
  }
}
