view: account {
  sql_table_name: salesforce."sf_Account" ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."Id" ;;
  }

  dimension_group: _sdc_batched {
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
    sql: ${TABLE}."_sdc_batched_at" ;;
  }

  # dimension_group: _sdc_received {
  #   type: time
  #   timeframes: [
  #     raw,
  #     time,
  #     date,
  #     week,
  #     month,
  #     quarter,
  #     year
  #   ]
  #   sql: ${TABLE}."_sdc_received_at" ;;
  # }

  # dimension: _sdc_sequence {
  #   type: number
  #   sql: ${TABLE}."_sdc_sequence" ;;
  # }

  # dimension: _sdc_table_version {
  #   type: number
  #   sql: ${TABLE}."_sdc_table_version" ;;
  # }

  dimension: acc_country_name__c {
    type: string
    sql: ${TABLE}."AccCountryName__c" ;;
  }

  dimension: access_account_id__c {
    type: number
    sql: ${TABLE}."AccessAccountID__c" ;;
  }

  dimension: account_number {
    type: string
    sql: ${TABLE}."AccountNumber" ;;
  }

  dimension: account_number__c {
    type: string
    sql: ${TABLE}."Account_Number__c" ;;
  }

  dimension: account_on_hold__c {
    type: yesno
    sql: ${TABLE}."Account_On_Hold__c" ;;
  }

  dimension: account_phone_length__c {
    type: number
    sql: ${TABLE}."Account_Phone_Length__c" ;;
  }

  dimension: account_type__c {
    type: string
    sql: ${TABLE}."Account_Type__c" ;;
  }

  dimension: allowance__c {
    type: number
    sql: ${TABLE}."Allowance__c" ;;
  }

  dimension: annual_revenue {
    type: number
    sql: ${TABLE}."AnnualRevenue" ;;
  }

  dimension: attributes__type {
    type: string
    sql: ${TABLE}."attributes__type" ;;
  }

  dimension: billing_address__country {
    type: string
    sql: ${TABLE}."BillingAddress__country" ;;
  }

  dimension: billing_city__c {
    type: string
    sql: ${TABLE}."Billing_City__c" ;;
  }

  dimension: billing_country {
    type: string
    sql: ${TABLE}."BillingCountry" ;;
  }

  dimension: billing_country__c {
    type: string
    sql: ${TABLE}."Billing_Country__c" ;;
  }

  dimension: billing_postcode__c {
    type: string
    sql: ${TABLE}."Billing_Postcode__c" ;;
  }

  dimension: billing_state_province__c {
    type: string
    sql: ${TABLE}."Billing_State_Province__c" ;;
  }

  dimension: billing_street__c {
    type: string
    sql: ${TABLE}."Billing_Street__c" ;;
  }

  dimension: business_type__c {
    type: string
    sql: ${TABLE}."Business_Type__c" ;;
  }

  dimension: city__c {
    type: string
    sql: ${TABLE}."City__c" ;;
  }

  dimension: country__c {
    type: string
    sql: ${TABLE}."Country__c" ;;
  }

  dimension: created_by_id {
    type: string
    sql: ${TABLE}."CreatedById" ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}."CreatedDate" ;;
  }

  dimension: currency__c {
    type: string
    sql: ${TABLE}."Currency__c" ;;
  }

  dimension: currency_iso_code {
    type: string
    sql: ${TABLE}."CurrencyIsoCode" ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}."Description" ;;
  }

  dimension: freelancer__c {
    type: yesno
    sql: ${TABLE}."Freelancer__c" ;;
  }

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}."IsDeleted" ;;
  }

  dimension_group: last_activity {
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
    sql: ${TABLE}."LastActivityDate" ;;
  }

  dimension: last_modified_by_id {
    type: string
    sql: ${TABLE}."LastModifiedById" ;;
  }

  dimension_group: last_modified {
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
    sql: ${TABLE}."LastModifiedDate" ;;
  }

  dimension_group: last_referenced {
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
    sql: ${TABLE}."LastReferencedDate" ;;
  }

  dimension_group: last_viewed {
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
    sql: ${TABLE}."LastViewedDate" ;;
  }

  dimension: lead_source__c {
    type: string
    sql: ${TABLE}."Lead_Source__c" ;;
  }

  dimension: master_record_id {
    type: string
    sql: ${TABLE}."MasterRecordId" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."Name" ;;
  }

  dimension: online_member__c {
    type: yesno
    sql: ${TABLE}."Online_Member__c" ;;
  }

  dimension: owner_id {
    type: string
    sql: ${TABLE}."OwnerId" ;;
  }

  dimension: parent_id {
    type: string
    sql: ${TABLE}."ParentId" ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}."Phone" ;;
  }

  dimension: photo_url {
    type: string
    sql: ${TABLE}."PhotoUrl" ;;
  }

  dimension: po_number_required__c {
    type: yesno
    sql: ${TABLE}."PO_Number_Required__c" ;;
  }

  dimension: postcode__c {
    type: string
    sql: ${TABLE}."Postcode__c" ;;
  }

  dimension: previous_finance_id__c {
    type: string
    sql: ${TABLE}."Previous_Finance_Id__c" ;;
  }

  dimension: production_area__c {
    type: string
    sql: ${TABLE}."Production_Area__c" ;;
  }

  dimension: record_type_id {
    type: string
    sql: ${TABLE}."RecordTypeId" ;;
  }

  dimension: region__c {
    type: string
    sql: ${TABLE}."Region__c" ;;
  }

  dimension: remaining__c {
    type: number
    sql: ${TABLE}."Remaining__c" ;;
  }

  dimension: sage50_reference__c {
    type: string
    sql: ${TABLE}."Sage50Reference__c" ;;
  }

  dimension: sage50_reference_del__c {
    type: string
    sql: ${TABLE}."Sage50Reference_del__c" ;;
  }

  dimension: sales_region__c {
    type: string
    sql: ${TABLE}."Sales_Region__c" ;;
  }

  dimension: sapaccount_id__c {
    type: string
    sql: ${TABLE}."SAPAccountID__c" ;;
  }

  dimension: service_tier__c {
    type: string
    sql: ${TABLE}."Service_Tier__c" ;;
  }

  dimension: shipping_address__country {
    type: string
    sql: ${TABLE}."ShippingAddress__country" ;;
  }

  dimension: shipping_country {
    type: string
    sql: ${TABLE}."ShippingCountry" ;;
  }

  dimension: site_manager_id__c {
    type: string
    sql: ${TABLE}."Site_Manager_Id__c" ;;
  }

  dimension: state_province__c {
    type: string
    sql: ${TABLE}."State_Province__c" ;;
  }

  dimension: street__c {
    type: string
    sql: ${TABLE}."Street__c" ;;
  }

  dimension: sub_region__c {
    type: string
    sql: ${TABLE}."SubRegion__c" ;;
  }

  dimension: sub_source__c {
    type: string
    sql: ${TABLE}."Sub_Source__c" ;;
  }

  dimension_group: system_modstamp {
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
    sql: ${TABLE}."SystemModstamp" ;;
  }

  dimension: used__c {
    type: number
    sql: ${TABLE}."Used__c" ;;
  }

  dimension: vat_number__c {
    type: string
    sql: ${TABLE}."VAT_Number__c" ;;
  }

  dimension: website {
    type: string
    sql: ${TABLE}."Website" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
