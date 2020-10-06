view: contract_head_agreement {
  sql_table_name: dbo.ContractHeadAgreement ;;
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

  dimension: agreement_code {
    type: string
    sql: ${TABLE}.AgreementCode ;;
  }

  dimension: agreement_name {
    type: string
    sql: ${TABLE}.AgreementName ;;
  }

  dimension_group: commencement {
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
    sql: ${TABLE}.CommencementDate ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
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

  dimension_group: renewal {
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
    sql: ${TABLE}.RenewalDate ;;
  }

  measure: count {
    type: count
    drill_fields: [id, agreement_name]
  }
}
