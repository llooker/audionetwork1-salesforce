view: contact {
  sql_table_name: salesforce."sf_Contact" ;;

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

  dimension: account_id {
    type: string
    sql: ${TABLE}."AccountId" ;;
  }

  dimension: address__c {
    type: string
    sql: ${TABLE}."Address__c" ;;
  }

  dimension: attributes__type {
    type: string
    sql: ${TABLE}."attributes__type" ;;
  }

  dimension: contact_number__c {
    type: string
    sql: ${TABLE}."Contact_Number__c" ;;
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

  dimension: do_not_call {
    type: yesno
    sql: ${TABLE}."DoNotCall" ;;
  }

  dimension: do_not_contact_from_marketing__c {
    type: yesno
    sql: ${TABLE}."Do_Not_contact_from_Marketing__c" ;;
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

  dimension: has_opted_out_of_email {
    type: yesno
    sql: ${TABLE}."HasOptedOutOfEmail" ;;
  }

  dimension: has_opted_out_of_fax {
    type: yesno
    sql: ${TABLE}."HasOptedOutOfFax" ;;
  }

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}."IsDeleted" ;;
  }

  dimension: is_email_bounced {
    type: yesno
    sql: ${TABLE}."IsEmailBounced" ;;
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

  dimension: lead_source {
    type: string
    sql: ${TABLE}."LeadSource" ;;
  }

  dimension: legacy_contact_id__c {
    type: number
    value_format_name: id
    sql: ${TABLE}."Legacy_Contact_ID__c" ;;
  }

  dimension: mailing_address__country {
    type: string
    sql: ${TABLE}."MailingAddress__country" ;;
  }

  dimension: mailing_country {
    type: string
    sql: ${TABLE}."MailingCountry" ;;
  }

  dimension: main_city__c {
    type: string
    sql: ${TABLE}."Main_City__c" ;;
  }

  dimension: main_country__c {
    type: string
    sql: ${TABLE}."Main_Country__c" ;;
  }

  dimension: main_postcode__c {
    type: string
    sql: ${TABLE}."Main_Postcode__c" ;;
  }

  dimension: main_state_province__c {
    type: string
    sql: ${TABLE}."Main_State_Province__c" ;;
  }

  dimension: main_street__c {
    type: string
    sql: ${TABLE}."Main_Street__c" ;;
  }

  dimension: master_record_id {
    type: string
    sql: ${TABLE}."MasterRecordId" ;;
  }

  dimension: member_admin__c {
    type: yesno
    sql: ${TABLE}."Member_admin__c" ;;
  }

  dimension: mobile_phone {
    type: string
    sql: ${TABLE}."MobilePhone" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."Name" ;;
  }

  dimension: owner_id {
    type: string
    sql: ${TABLE}."OwnerId" ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}."Phone" ;;
  }

  dimension: photo_url {
    type: string
    sql: ${TABLE}."PhotoUrl" ;;
  }

  dimension: salutation {
    type: string
    sql: ${TABLE}."Salutation" ;;
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

  dimension: tier__c {
    type: string
    sql: ${TABLE}."Tier__c" ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}."Title" ;;
  }

  dimension: website_user__c {
    type: yesno
    sql: ${TABLE}."Website_user__c" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, last_name, first_name]
  }
}
