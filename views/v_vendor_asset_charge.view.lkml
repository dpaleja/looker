view: v_vendor_asset_charge {
  sql_table_name: dbo.vVendorAssetCharge ;;

  dimension: annual_charge {
    type: number
    sql: ${TABLE}.AnnualCharge ;;
  }

  dimension: annual_charge_approved {
    type: number
    sql: ${TABLE}.AnnualChargeApproved ;;
  }

  dimension: asset_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.AssetID ;;
  }

  dimension: month10_charge {
    type: number
    sql: ${TABLE}.Month10Charge ;;
  }

  dimension: month10_charge_approved {
    type: number
    sql: ${TABLE}.Month10ChargeApproved ;;
  }

  dimension: month11_charge {
    type: number
    sql: ${TABLE}.Month11Charge ;;
  }

  dimension: month11_charge_approved {
    type: number
    sql: ${TABLE}.Month11ChargeApproved ;;
  }

  dimension: month12_charge {
    type: number
    sql: ${TABLE}.Month12Charge ;;
  }

  dimension: month12_charge_approved {
    type: number
    sql: ${TABLE}.Month12ChargeApproved ;;
  }

  dimension: month1_charge {
    type: number
    sql: ${TABLE}.Month1Charge ;;
  }

  dimension: month1_charge_approved {
    type: number
    sql: ${TABLE}.Month1ChargeApproved ;;
  }

  dimension: month2_charge {
    type: number
    sql: ${TABLE}.Month2Charge ;;
  }

  dimension: month2_charge_approved {
    type: number
    sql: ${TABLE}.Month2ChargeApproved ;;
  }

  dimension: month3_charge {
    type: number
    sql: ${TABLE}.Month3Charge ;;
  }

  dimension: month3_charge_approved {
    type: number
    sql: ${TABLE}.Month3ChargeApproved ;;
  }

  dimension: month4_charge {
    type: number
    sql: ${TABLE}.Month4Charge ;;
  }

  dimension: month4_charge_approved {
    type: number
    sql: ${TABLE}.Month4ChargeApproved ;;
  }

  dimension: month5_charge {
    type: number
    sql: ${TABLE}.Month5Charge ;;
  }

  dimension: month5_charge_approved {
    type: number
    sql: ${TABLE}.Month5ChargeApproved ;;
  }

  dimension: month6_charge {
    type: number
    sql: ${TABLE}.Month6Charge ;;
  }

  dimension: month6_charge_approved {
    type: number
    sql: ${TABLE}.Month6ChargeApproved ;;
  }

  dimension: month7_charge {
    type: number
    sql: ${TABLE}.Month7Charge ;;
  }

  dimension: month7_charge_approved {
    type: number
    sql: ${TABLE}.Month7ChargeApproved ;;
  }

  dimension: month8_charge {
    type: number
    sql: ${TABLE}.Month8Charge ;;
  }

  dimension: month8_charge_approved {
    type: number
    sql: ${TABLE}.Month8ChargeApproved ;;
  }

  dimension: month9_charge {
    type: number
    sql: ${TABLE}.Month9Charge ;;
  }

  dimension: month9_charge_approved {
    type: number
    sql: ${TABLE}.Month9ChargeApproved ;;
  }

  measure: count {
    type: count
    drill_fields: [assets._old_asset_id, assets.asset_name]
  }
}
