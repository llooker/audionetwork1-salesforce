view: opportunity_line_item {
  sql_table_name: salesforce."sf_OpportunityLineItem" ;;

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

  dimension_group: _sdc_received {
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
    sql: ${TABLE}."_sdc_received_at" ;;
  }

  dimension: _sdc_sequence {
    type: number
    sql: ${TABLE}."_sdc_sequence" ;;
  }

  dimension: _sdc_table_version {
    type: number
    sql: ${TABLE}."_sdc_table_version" ;;
  }

  dimension: attributes__type {
    type: string
    sql: ${TABLE}."attributes__type" ;;
  }

  dimension: bespoke_license__c {
    type: yesno
    sql: ${TABLE}."Bespoke_License__c" ;;
  }

  dimension: brand__c {
    type: string
    sql: ${TABLE}."Brand__c" ;;
  }

  dimension: clock_number__c {
    type: string
    sql: ${TABLE}."Clock_Number__c" ;;
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

  dimension: episodes_productions_count__c {
    type: number
    sql: ${TABLE}."Episodes_Productions_Count__c" ;;
  }

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}."IsDeleted" ;;
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

  dimension: legacy_invoice_line_id__c {
    type: number
    value_format_name: id
    sql: ${TABLE}."Legacy_Invoice_Line_ID__c" ;;
  }

  dimension_group: license_end_date__c {
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
    sql: ${TABLE}."License_End_Date__c" ;;
  }

  dimension_group: license_start_date__c {
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
    sql: ${TABLE}."License_Start_Date__c" ;;
  }

  dimension: list_price {
    type: number
    sql: ${TABLE}."ListPrice" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."Name" ;;
  }

  dimension: name__c {
    type: string
    sql: ${TABLE}."Name__c" ;;
  }

  dimension: op_details__c {
    type: string
    sql: ${TABLE}."OP_Details__c" ;;
  }

  dimension: opportunity_id {
    type: string
    sql: ${TABLE}."OpportunityId" ;;
  }

  dimension: order_name__c {
    type: string
    sql: ${TABLE}."Order_Name__c" ;;
  }

  dimension: pricebook_entry_id {
    type: string
    sql: ${TABLE}."PricebookEntryId" ;;
  }

  dimension: product2_id {
    type: string
    sql: ${TABLE}."Product2Id" ;;
  }

  dimension: product_code {
    type: string
    sql: ${TABLE}."ProductCode" ;;
  }

  dimension: product_price__c {
    type: number
    sql: ${TABLE}."Product_Price__c" ;;
  }

  dimension: production_title__c {
    type: string
    sql: ${TABLE}."Production_Title__c" ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}."Quantity" ;;
  }

  dimension: sales_price__c {
    type: number
    sql: ${TABLE}."Sales_Price__c" ;;
  }

  dimension: subtotal {
    type: number
    sql: ${TABLE}."Subtotal" ;;
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

  dimension: total_price {
    type: number
    sql: ${TABLE}."TotalPrice" ;;
  }

  dimension: track_names__c {
    type: string
    sql: ${TABLE}."Track_Names__c" ;;
  }

  dimension: unit_price {
    type: number
    sql: ${TABLE}."UnitPrice" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
