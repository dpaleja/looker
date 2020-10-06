view: invoice_details {
  sql_table_name: dbo.InvoiceDetails ;;

  dimension: account_name {
    type: string
    sql: ${TABLE}.AccountName ;;
  }

  dimension: account_owner_id {
    type: string
    sql: ${TABLE}.AccountOwnerId ;;
  }

  dimension: additional_info {
    type: string
    sql: ${TABLE}.AdditionalInfo ;;
  }

  dimension: availability_zone {
    type: string
    sql: ${TABLE}.AvailabilityZone ;;
  }

  dimension: billing_account_id {
    type: number
    sql: ${TABLE}.BillingAccountId ;;
  }

  dimension: billing_account_name {
    type: string
    sql: ${TABLE}.BillingAccountName ;;
  }

  dimension: billing_currency {
    type: string
    sql: ${TABLE}.BillingCurrency ;;
  }

  dimension_group: billing_period_end {
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
    sql: ${TABLE}.BillingPeriodEndDate ;;
  }

  dimension_group: billing_period_start {
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
    sql: ${TABLE}.BillingPeriodStartDate ;;
  }

  dimension: billing_profile_id {
    type: number
    sql: ${TABLE}.BillingProfileId ;;
  }

  dimension: billing_profile_name {
    type: string
    sql: ${TABLE}.BillingProfileName ;;
  }

  dimension: charge_type {
    type: string
    sql: ${TABLE}.ChargeType ;;
  }

  dimension: consumed_service {
    type: string
    sql: ${TABLE}.ConsumedService ;;
  }

  measure: cost {
    type: sum
    sql: ${TABLE}.Cost ;;
  }

  dimension: cost_center {
    type: string
    sql: ${TABLE}.CostCenter ;;
  }

  dimension_group: date {
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
    sql: ${TABLE}.Date ;;
  }

  measure: effective_price {
    type: sum
    sql: ${TABLE}.EffectivePrice ;;
  }

  dimension: frequency {
    type: string
    sql: ${TABLE}.Frequency ;;
  }

  dimension: invoice_section {
    type: string
    sql: ${TABLE}.InvoiceSection ;;
  }

  dimension: invoice_section_id {
    type: string
    sql: ${TABLE}.InvoiceSectionId ;;
  }

  dimension: is_azure_credit_eligible {
    type: string
    sql: ${TABLE}.IsAzureCreditEligible ;;
  }

  dimension: meter_category {
    type: string
    sql: ${TABLE}.MeterCategory ;;
  }

  dimension: meter_id {
    type: string
    sql: ${TABLE}.MeterId ;;
  }

  dimension: meter_name {
    type: string
    sql: ${TABLE}.MeterName ;;
  }

  dimension: meter_region {
    type: string
    sql: ${TABLE}.MeterRegion ;;
  }

  dimension: meter_sub_category {
    type: string
    sql: ${TABLE}.MeterSubCategory ;;
  }

  dimension: offer_id {
    type: string
    sql: ${TABLE}.OfferId ;;
  }

  dimension: part_number {
    type: string
    sql: ${TABLE}.PartNumber ;;
  }

  dimension: pay_gprice {
    type: number
    sql: ${TABLE}.PayGPrice ;;
  }

  dimension: plan_name {
    type: string
    sql: ${TABLE}.PlanName ;;
  }

  dimension: pricing_model {
    type: string
    sql: ${TABLE}.PricingModel ;;
  }

  dimension: product {
    type: string
    sql: ${TABLE}.Product ;;
  }

  dimension: product_order_id {
    type: string
    sql: ${TABLE}.ProductOrderId ;;
  }

  dimension: product_order_name {
    type: string
    sql: ${TABLE}.ProductOrderName ;;
  }

  dimension: publisher_name {
    type: string
    sql: ${TABLE}.PublisherName ;;
  }

  dimension: publisher_type {
    type: string
    sql: ${TABLE}.PublisherType ;;
  }

  measure: quantity {
    type: sum
    sql: ${TABLE}.Quantity ;;

  }

  dimension: reservation_id {
    type: string
    sql: ${TABLE}.ReservationId ;;
  }

  dimension: reservation_name {
    type: string
    sql: ${TABLE}.ReservationName ;;
  }

  dimension: resource_group {
    type: string
    sql: ${TABLE}.ResourceGroup ;;
  }

  dimension: resource_id {
    type: string
    sql: ${TABLE}.ResourceId ;;
  }

  dimension: resource_location {
    type: string
    sql: ${TABLE}.ResourceLocation ;;
  }

  dimension: resource_name {
    type: string
    sql: ${TABLE}.ResourceName ;;
  }

  dimension: service_family {
    type: string
    sql: ${TABLE}.ServiceFamily ;;
  }

  dimension: service_info1 {
    type: string
    sql: ${TABLE}.ServiceInfo1 ;;
  }

  dimension: service_info2 {
    type: string
    sql: ${TABLE}.ServiceInfo2 ;;
  }

  dimension: subscription_id {
    type: string
    sql: ${TABLE}.SubscriptionId ;;
  }

  dimension: subscription_name {
    type: string
    sql: ${TABLE}.SubscriptionName ;;
  }

  dimension: tags {
    type: string
    sql: ${TABLE}.Tags ;;
  }

  dimension: term {
    type: number
    sql: ${TABLE}.Term ;;
  }

  dimension: unit_of_measure {
    type: string
    sql: ${TABLE}.UnitOfMeasure ;;
  }

  dimension: unit_price {
    type: number
    sql: ${TABLE}.UnitPrice ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      billing_account_name,
      billing_profile_name,
      account_name,
      subscription_name,
      meter_name,
      resource_name,
      reservation_name,
      product_order_name,
      publisher_name,
      plan_name
    ]
  }
}
