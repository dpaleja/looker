view: contract_data {
  sql_table_name: dbo.ContractData ;;
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

  dimension: action_eol {
    type: string
    sql: ${TABLE}.ActionEOL ;;
  }

  dimension: contract_amount {
    type: number
    sql: ${TABLE}.ContractAmount ;;
  }

  dimension: contract_attribute_id1 {
    type: number
    sql: ${TABLE}.ContractAttributeID1 ;;
  }

  dimension: contract_attribute_id2 {
    type: number
    sql: ${TABLE}.ContractAttributeID2 ;;
  }

  dimension: contract_attribute_id3 {
    type: number
    sql: ${TABLE}.ContractAttributeID3 ;;
  }

  dimension: contract_attribute_id4 {
    type: number
    sql: ${TABLE}.ContractAttributeID4 ;;
  }

  dimension: contract_attribute_id5 {
    type: number
    sql: ${TABLE}.ContractAttributeID5 ;;
  }

  dimension: contract_attribute_id6 {
    type: number
    sql: ${TABLE}.ContractAttributeID6 ;;
  }

  dimension: contract_code {
    type: string
    sql: ${TABLE}.ContractCode ;;
  }

  dimension: contract_osamount {
    type: number
    sql: ${TABLE}.ContractOSAmount ;;
  }

  dimension: contract_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ContractTypeID ;;
  }

  dimension_group: due {
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
    sql: ${TABLE}.DueDate ;;
  }

  dimension_group: end {
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
    sql: ${TABLE}.EndDate ;;
  }

  dimension: head_agreement_id {
    type: number
    sql: ${TABLE}.HeadAgreementID ;;
  }

  dimension: is_applied_accounting {
    type: string
    sql: ${TABLE}.IsAppliedAccounting ;;
  }

  dimension: is_calculate_by_asset {
    type: string
    sql: ${TABLE}.IsCalculateByAsset ;;
  }

  dimension: is_lease {
    type: string
    sql: ${TABLE}.IsLease ;;
  }

  dimension: lease_term {
    type: number
    sql: ${TABLE}.LeaseTerm ;;
  }

  dimension: owner {
    type: string
    sql: ${TABLE}.Owner ;;
  }

  dimension: owner_phone {
    type: string
    sql: ${TABLE}.OwnerPhone ;;
  }

  dimension: payment_amount {
    type: number
    sql: ${TABLE}.PaymentAmount ;;
  }

  dimension: payment_count {
    type: number
    sql: ${TABLE}.PaymentCount ;;
  }

  dimension: payment_cycle_type {
    type: number
    sql: ${TABLE}.PaymentCycleType ;;
  }

  dimension: payment_month {
    type: number
    sql: ${TABLE}.PaymentMonth ;;
  }

  dimension: payment_osamount {
    type: number
    sql: ${TABLE}.PaymentOSAmount ;;
  }

  dimension_group: reminder {
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
    sql: ${TABLE}.ReminderDate ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}.StartDate ;;
  }

  dimension: supplier_id {
    type: number
    sql: ${TABLE}.SupplierID ;;
  }

  dimension: supplier_name {
    type: string
    sql: ${TABLE}.SupplierName ;;
  }

  dimension: supplier_phone {
    type: string
    sql: ${TABLE}.SupplierPhone ;;
  }

  measure: count {
    type: count
    drill_fields: [id, supplier_name, contract_type.id, contract_type.name]
  }
}
