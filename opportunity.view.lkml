view: opportunity {
  sql_table_name: salesforce."sf_Opportunity" ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."Id" ;;
    link: {
      label: "Salesforce"
      url: "https://audionetwork.my.salesforce.com/{{ value }}"
      icon_url: "http://www.salesforce.com/favicon.ico"
    }
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
    sql: ${TABLE}._sdc_batched_at ;;
  }

  dimension_group: _sdc_received {
    hidden: yes
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
    sql: ${TABLE}._sdc_received_at ;;
  }

  dimension: _sdc_sequence {
    type: number
    sql: ${TABLE}._sdc_sequence ;;
  }

  dimension: _sdc_table_version {
    type: number
    sql: ${TABLE}._sdc_table_version ;;
  }

  dimension: account_id {
    type: string
    sql: ${TABLE}."AccountId" ;;
  }

  dimension: amount {
    type: number
    sql: ${TABLE}."Amount" ;;
    value_format_name: gbp
  }

  dimension: attributes__type {
    type: string
    sql: ${TABLE}.attributes__type ;;
  }

  dimension: bespoke_licence_brand__c {
    type: string
    sql: ${TABLE}."Bespoke_Licence_Brand__c" ;;
  }

  dimension: bespoke_licence_production_title__c {
    type: string
    sql: ${TABLE}."Bespoke_Licence_Production_Title__c" ;;
  }

  dimension: bespoke_license__c {
    type: yesno
    sql: ${TABLE}."Bespoke_License__c" ;;
  }

  dimension: billing_contact__c {
    type: string
    sql: ${TABLE}."Billing_Contact__c" ;;
  }

  dimension: churn_reason__c {
    type: string
    sql: ${TABLE}."Churn_Reason__c" ;;
  }

  dimension_group: close {
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
    sql: ${TABLE}."CloseDate" ;;
  }

  dimension: reporting_period_year {
    group_label: "Close Dates"
    sql: CASE
         --Last Month
        WHEN  ${created_raw} >= date_trunc('month', current_date - interval '1' month)
        AND ${created_raw} < date_trunc('month', current_date)
        THEN 'Last Month'

        --Two Months Ago
        WHEN  ${created_raw} >= date_trunc('month', current_date - interval '2' month)
        AND ${created_raw} <    date_trunc('month', current_date - interval '1' month)
        THEN '2 Months Ago'

        -- WHEN  ${created_raw} >= date_trunc('month', ${opportunity_facts.best_month_in_12})
        -- AND ${created_raw} < date_trunc('month', ${opportunity_facts.best_month_in_12})
        WHEN ${created_raw} >= to_date('20160601','YYYYMMDD')
        AND ${created_raw} < to_date('20160631','YYYYMMDD')
         THEN 'Best in 12 Months'

        WHEN date_part('year',${close_raw}) = date_part('year',current_date)
        AND ${created_raw} < CURRENT_DATE
        THEN 'This Year to Date'

        WHEN date_part('year',${close_raw}) + 1 = date_part('year',current_date)
        AND date_part('DOY',${close_raw}) <= date_part('DOY',current_date)
        THEN 'Last Year to Date'

      END
       ;;
  }


  dimension: conga_filename__c {
    type: string
    sql: ${TABLE}."Conga_Filename__c" ;;
  }

  dimension: conga_signature_select__c {
    type: string
    sql: ${TABLE}."Conga_Signature_Select__c" ;;
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

  dimension: credit_note__c {
    type: yesno
    sql: ${TABLE}."Credit_Note__c" ;;
  }

  dimension: credit_note_reason__c {
    type: string
    sql: ${TABLE}."Credit_Note_Reason__c" ;;
  }

  dimension: credit_note_request_approval_status__c {
    type: string
    sql: ${TABLE}."Credit_Note_Request_Approval_Status__c" ;;
  }

  dimension: currency_iso_code {
    type: string
    sql: ${TABLE}."CurrencyIsoCode" ;;
  }

  dimension: customer_email_to_owner__c {
    type: yesno
    sql: ${TABLE}."Customer_Email_to_Owner__c" ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}."Description"
  }

  dimension: exclude_from_credit_note_processing__c {
    type: yesno
    sql: ${TABLE}."Exclude_from_Credit_Note_Processing__c" ;;
  }

  dimension: exclude_from_invoice_processing__c {
    type: yesno
    sql: ${TABLE}."Exclude_from_Invoice_Processing__c" ;;
  }

  dimension: exlude_from_credit_note_processing__c {
    type: yesno
    sql: ${TABLE}."Exlude_from_Credit_Note_Processing__c" ;;
  }

  dimension: expected_revenue {
    type: number
    sql: ${TABLE}."ExpectedRevenue" ;;
  }

  dimension: finance_verification_check_status__c {
    type: string
    sql: ${TABLE}."Finance_Verification_Check_Status__c" ;;
  }

  dimension: fiscal {
    type: string
    sql: ${TABLE}."Fiscal" ;;
  }

  dimension: fiscal_quarter {
    type: number
    sql: ${TABLE}."FiscalQuarter" ;;
  }

  dimension: fiscal_year {
    type: number
    sql: ${TABLE}."FiscalYear" ;;
  }

  dimension: forecast_category {
    type: string
    sql: ${TABLE}."ForecastCategory" ;;
  }

  dimension: forecast_category_name {
    type: string
    sql: ${TABLE}."ForecastCategoryName" ;;
  }

  dimension: has_opportunity_line_item {
    type: yesno
    sql: ${TABLE}."HasOpportunityLineItem";;
  }

  dimension: is_clone__c {
    type: yesno
    sql: ${TABLE}."Is_clone__c" ;;
  }

  dimension: is_closed {
    type: yesno
    sql: ${TABLE}."IsClosed" ;;
  }

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}."IsDeleted" ;;
  }

  dimension: is_private {
    type: yesno
    sql: ${TABLE}."IsPrivate" ;;
  }

  dimension: is_won {
    type: yesno
    sql: ${TABLE}."IsWon" ;;
  }

  dimension: job_number__c {
    type: string
    sql: ${TABLE}."Job_Number__c" ;;
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

  dimension: lead_source {
    type: string
    sql: ${TABLE}."LeadSource" ;;
  }

  dimension_group: legacy_invoice_date__c {
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
    sql: ${TABLE}."Legacy_Invoice_Date__c" ;;
  }

  dimension: legacy_invoice_number__c {
    type: string
    sql: ${TABLE}."LegacyInvoiceNumber__c" ;;
  }

  dimension: legacy_order_id__c {
    type: number
    value_format_name: id
    sql: ${TABLE}."Legacy_Order_ID__c" ;;
  }

  dimension: legal_entity__c {
    type: string
    sql: ${TABLE}."Legal_Entity__c" ;;
  }

  dimension: licence_attachment_id__c {
    type: string
    sql: ${TABLE}."Licence_AttachmentId__c" ;;
  }

  dimension: licence_contact__c {
    type: string
    sql: ${TABLE}."Licence_Contact__c" ;;
  }

  dimension_group: licence_end_date__c {
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
    sql: ${TABLE}."Licence_End_Date__c" ;;
  }

  dimension: licence_product_family__c {
    type: string
    sql: ${TABLE}."Licence_Product_Family__c" ;;
  }

  dimension_group: licence_start_date__c {
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
    sql: ${TABLE}."Licence_Start_Date__c" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."Name" ;;
  }

  dimension: number_of_bespoke_products__c {
    type: number
    sql: ${TABLE}."Number_of_Bespoke_Products__c" ;;
  }

  dimension: number_of_secondary_products__c {
    type: number
    sql: ${TABLE}."Number_of_Secondary_Products__c" ;;
  }

  dimension: opportunity_currency__c {
    type: string
    sql: ${TABLE}."Opportunity_Currency__c" ;;
  }

  dimension: opportunity_number__c {
    type: string
    sql: ${TABLE}."Opportunity_Number__c" ;;
  }

  dimension: owner_id {
    type: string
    sql: ${TABLE}."OwnerId" ;;
  }

  dimension: payment_term__c {
    type: string
    sql: ${TABLE}."Payment_term__c" ;;
  }

  dimension: po_details__c {
    type: string
    sql: ${TABLE}."PO_Details__c" ;;
  }

  dimension: pricebook2_id {
    type: string
    sql: ${TABLE}."Pricebook2Id" ;;
  }

  dimension: probability {
    type: number
    sql: ${TABLE}."Probability" ;;
  }

  dimension: proceed_to_order__c {
    type: yesno
    sql: ${TABLE}."Proceed_to_Order__c" ;;
  }

  dimension: product__c {
    type: string
    sql: ${TABLE}."Product__c" ;;
  }

  dimension: product_group__c {
    type: string
    sql: ${TABLE}."Product_Group__c" ;;
  }

  dimension: ready_for_credit_note_processing__c {
    type: yesno
    sql: ${TABLE}."Ready_for_Credit_Note_Processing__c" ;;
  }

  dimension: ready_for_invoice_processing__c {
    type: yesno
    sql: ${TABLE}."Ready_for_Invoice_Processing__c" ;;
  }

  dimension: record_type_id {
    type: string
    sql: ${TABLE}."RecordTypeId" ;;
  }

  dimension: region__c {
    type: string
    sql: ${TABLE}."Region__c" ;;
  }

  dimension: related_opportunities_count__c {
    type: number
    sql: ${TABLE}."Related_Opportunities_Count__c" ;;
  }

  dimension: related_opportunity__c {
    type: string
    sql: ${TABLE}."Related_Opportunity__c" ;;
  }

  dimension: revenue_stream__c {
    type: string
    sql: ${TABLE}."Revenue_Stream__c" ;;
  }

  dimension: sap_doc_number__c {
    type: string
    sql: ${TABLE}."SAP_Doc_Number__c" ;;
  }

  dimension_group: sap_document_date__c {
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
    sql: ${TABLE}."SAP_Document_Date__c" ;;
  }

  dimension: stage_name {
    type: string
    sql: ${TABLE}."StageName" ;;
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

  dimension: template_select__c {
    type: string
    sql: ${TABLE}."TemplateSelect__c" ;;
  }

  dimension: total_opportunity_quantity {
    type: number
    sql: ${TABLE}."TotalOpportunityQuantity" ;;
  }

  dimension: withholding_tax_applied__c {
    type: yesno
    sql: ${TABLE}."Withholding_tax_applied__c" ;;
  }

  dimension: witholding_tax_amount__c {
    type: number
    sql: ${TABLE}."Witholding_tax_amount__c" ;;
  }

  measure: sum_amount {
    type: sum
    value_format: "\"£\"0,\" K\""
    sql: ${amount};;
    drill_fields: [id, forecast_category_name, name, stage_name,licence_product_family__c, amount]
  }

  measure: count {
    type: count
    drill_fields: [id, forecast_category_name, name, stage_name, amount]
  }
}
