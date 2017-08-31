view: lead {
  sql_table_name: salesforce."sf_Lead" ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."Id" ;;
  }

  # dimension_group: _sdc_batched {
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
  #   sql: ${TABLE}."_sdc_batched_at" ;;
  # }

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

  dimension: address__country {
    type: string
    sql: ${TABLE}."Address__country" ;;
  }

  dimension: allow_lead_convert__c {
    type: yesno
    sql: ${TABLE}."Allow_Lead_Convert__c" ;;
  }

  dimension: attributes__type {
    type: string
    sql: ${TABLE}."attributes__type" ;;
  }

  dimension: city__c {
    type: string
    sql: ${TABLE}."City__c" ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}."Company" ;;
  }

  dimension: converted_account_id {
    type: string
    sql: ${TABLE}."ConvertedAccountId" ;;
  }

  dimension: converted_contact_id {
    type: string
    sql: ${TABLE}."ConvertedContactId" ;;
  }

  dimension_group: converted {
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
    sql: ${TABLE}."ConvertedDate" ;;
  }

  dimension: converted_opportunity_id {
    type: string
    sql: ${TABLE}."ConvertedOpportunityId" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."Country" ;;
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

  dimension: currency_iso_code {
    type: string
    sql: ${TABLE}."CurrencyIsoCode" ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}."Description" ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}."Email" ;;
  }

  dimension: et4ae5__has_opted_out_of_mobile__c {
    type: yesno
    sql: ${TABLE}."et4ae5__HasOptedOutOfMobile__c" ;;
  }

  dimension: et4ae5__mobile_country_code__c {
    type: string
    sql: ${TABLE}."et4ae5__Mobile_Country_Code__c" ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}."FirstName" ;;
  }

  dimension: freelancer__c {
    type: yesno
    sql: ${TABLE}."Freelancer__c" ;;
  }

  dimension: has_opted_out_of_email {
    type: yesno
    sql: ${TABLE}."HasOptedOutOfEmail" ;;
  }

  dimension: is_converted {
    type: yesno
    sql: ${TABLE}."IsConverted" ;;
  }

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}."IsDeleted" ;;
  }

  dimension: is_unread_by_owner {
    type: yesno
    sql: ${TABLE}."IsUnreadByOwner" ;;
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

  dimension: last_name {
    type: string
    sql: ${TABLE}."LastName" ;;
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

  dimension: lead_number__c {
    type: string
    sql: ${TABLE}."Lead_Number__c" ;;
  }

  dimension: lead_source {
    type: string
    sql: ${TABLE}."LeadSource" ;;
  }

  dimension: lead_source__c {
    type: string
    sql: ${TABLE}."Lead_Source__c" ;;
  }

  dimension: lead_type__c {
    type: string
    sql: ${TABLE}."Lead_Type__c" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."Name" ;;
  }

  dimension: owner_id {
    type: string
    sql: ${TABLE}."OwnerId" ;;
  }

  dimension: owner_region__c {
    type: string
    sql: ${TABLE}."Owner_Region__c" ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}."Phone" ;;
  }

  dimension: photo_url {
    type: string
    sql: ${TABLE}."PhotoUrl" ;;
  }

  dimension: postcode__c {
    type: string
    sql: ${TABLE}."Postcode__c" ;;
  }

  dimension: production_area__c {
    type: string
    sql: ${TABLE}."Production_Area__c" ;;
  }

  dimension: professional__c {
    type: yesno
    sql: ${TABLE}."Professional__c" ;;
  }

  dimension: region__c {
    type: string
    sql: ${TABLE}."Region__c" ;;
  }

  dimension: salutation {
    type: string
    sql: ${TABLE}."Salutation" ;;
  }

  dimension: state_province__c {
    type: string
    sql: ${TABLE}."State_Province__c" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."Status" ;;
  }

  dimension: street__c {
    type: string
    sql: ${TABLE}."Street__c" ;;
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

  dimension: title {
    type: string
    sql: ${TABLE}."Title" ;;
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
    drill_fields: [id, name, last_name, first_name]
  }
}
