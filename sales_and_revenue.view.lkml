view: sales_and_revenue {
  derived_table: {
    sql: select salesforce."sf_Account"."Name" as Account,
      salesforce."sf_Account"."Production_Area__c" as Segment,
      oli."Product_Group__c" as Licence_Type,
      oli."Family" as Product,
      rh_sandbox."region_lookup"."region",
      rh_sandbox."region_lookup"."sub_region",
      salesforce."sf_Account"."Service_Tier__c" as Service_Level,
      account_owner."Name" as Account_Owner,
      opportunity_owner."Name" as Opportunity_Owner,
      date(salesforce."sf_Opportunity"."SAP_Document_Date__c") as sale_date,
      date_part('year', salesforce."sf_Opportunity"."SAP_Document_Date__c")*100 + date_part('month', salesforce."sf_Opportunity"."SAP_Document_Date__c") as yearmonth,
      case when salesforce."sf_Opportunity"."StageName" = 'Credit Note Issued' then oli."Quantity"*-1 else oli."Quantity" end as Licences_Sold,
      salesforce."sf_Opportunity"."Amount" as Revenue,
      salesforce."sf_Opportunity"."CurrencyIsoCode" as Currency,
      salesforce."sf_Opportunity"."Amount" / case when "sf_Opportunity"."CurrencyIsoCode" = 'GBP' then 1 else rh_sandbox."currency_lookup".conversionrate end as Rev_GBP,
      salesforce."sf_Opportunity"."StageName" as order_type,
      case when (credit_note."StageName" = 'Credit Note Issued' and (credit_note."Credit_Note_Reason__c" = 'Bought in error' or credit_note."Credit_Note_Reason__c" = 'Client Project(s) cancelled')) then 'Cancelled'
                    when credit_note."StageName" = 'Credit Note Issued' then 'Adjusted'
                      else 'NULL' end as order_status,
      case when (salesforce."sf_Opportunity"."StageName" = 'Credit Note Issued' and (salesforce."sf_Opportunity"."Credit_Note_Reason__c" = 'Bought in error' or salesforce."sf_Opportunity"."Credit_Note_Reason__c" = 'Client Project(s) cancelled')) then 'Cancellation'
                    else 'NULL' end as credit_note_type,
              case when to_char(salesforce."sf_Opportunity"."CloseDate", 'yyyy-mm-dd') = to_char(salesforce."sf_Account"."CreatedDate", 'yyyy-mm-dd') then 'New' else 'Existing' end as customer_type,
      salesforce."sf_Opportunity"."Id" as opp_id
      from
          (SELECT DISTINCT ON (a."Id") b."Quantity", b."CreatedDate", b."Id", b."IsDeleted", b."OpportunityId", "sf_Product2"."Product_Group__c", "sf_Product2"."Family", "sf_Product2"."Type__c"
          FROM salesforce."sf_Opportunity" as a
          INNER JOIN salesforce."sf_OpportunityLineItem" as b ON a."Id"=b."OpportunityId"
          left join salesforce."sf_Product2" on b."Product2Id"="sf_Product2"."Id"
          where   "sf_Product2"."Type__c" = 'License'                         -- excludes Fee (same as Family = None) and Non-Licence (removes Family = Creative and IT)
              and "sf_Product2"."Family" != 'Creative'
              and "sf_Product2"."Family" != 'Audio Only'
              and "sf_Product2"."Family" != 'None'
              and b."IsDeleted" = FALSE
          ORDER BY  a."Id", b."CreatedDate" desc) as oli -- note - takes only most recent opportunity line item as deleted records are still appearing in query
      left join salesforce."sf_Opportunity" on oli."OpportunityId"=salesforce."sf_Opportunity"."Id"
      left join salesforce."sf_Account" on salesforce."sf_Opportunity"."AccountId"=salesforce."sf_Account"."Id"
      left join salesforce."sf_User" as account_owner on salesforce."sf_Account"."OwnerId"=account_owner."Id"
      left join salesforce."sf_User" as opportunity_owner on salesforce."sf_Opportunity"."OwnerId"=opportunity_owner."Id"
      left join rh_sandbox."region_lookup" on salesforce."sf_Account"."Sales_Region__c"=rh_sandbox."region_lookup"."sales_region__c"
      left join rh_sandbox."currency_lookup" on (date(salesforce."sf_Opportunity"."SAP_Document_Date__c") || '-' || salesforce."sf_Opportunity"."CurrencyIsoCode")=rh_sandbox."currency_lookup"."join_code"
      left join (select "Id", "Related_Opportunity__c", "StageName", "Credit_Note_Reason__c" from salesforce."sf_Opportunity" where salesforce."sf_Opportunity"."StageName" = 'Credit Note Issued') as credit_note on "sf_Opportunity"."Id"=credit_note."Related_Opportunity__c"
      where   opportunity_owner."Name" != 'Anand Atwal'
              and opportunity_owner."Name" != 'Neelam Chohan'
              and opportunity_owner."Name" not like '%Test%'
              and opportunity_owner."Name" not like '%Jenny%'
              and (salesforce."sf_Opportunity"."StageName" = 'Closed Won'
              or salesforce."sf_Opportunity"."StageName" = 'Credit Note Issued')
      and date_part('year', salesforce."sf_Opportunity"."SAP_Document_Date__c") >= 2016
      order by Revenue desc;
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: account {
    type: string
    sql: ${TABLE}.account ;;
  }

  dimension: segment {
    type: string
    sql: ${TABLE}.segment ;;
  }

  dimension: licence_type {
    type: string
    sql: ${TABLE}.licence_type ;;
  }

  dimension: product {
    type: string
    sql: ${TABLE}.product ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: sub_region {
    type: string
    sql: ${TABLE}.sub_region ;;
  }

  dimension: service_level {
    type: string
    sql: ${TABLE}.service_level ;;
  }

  dimension: account_owner {
    type: string
    sql: ${TABLE}.account_owner ;;
  }

  dimension: opportunity_owner {
    type: string
    sql: ${TABLE}.opportunity_owner ;;
  }

  dimension: sale_date {
    type: date
    sql: ${TABLE}.sale_date ;;
  }

  dimension: yearmonth {
    type: number
    sql: ${TABLE}.yearmonth ;;
  }

  dimension: licences_sold {
    type: number
    sql: ${TABLE}.licences_sold ;;
  }

  dimension: revenue {
    type: number
    sql: ${TABLE}.revenue ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
  }

  dimension: rev_gbp {
    type: number
    sql: ${TABLE}.rev_gbp ;;
  }

  dimension: order_type {
    type: string
    sql: ${TABLE}.order_type ;;
  }

  dimension: order_status {
    type: string
    sql: ${TABLE}.order_status ;;
  }

  dimension: credit_note_type {
    type: string
    sql: ${TABLE}.credit_note_type ;;
  }

  dimension: customer_type {
    type: string
    sql: ${TABLE}.customer_type ;;
  }

  dimension: opp_id {
    type: string
    sql: ${TABLE}.opp_id ;;
  }

  set: detail {
    fields: [
      account,
      segment,
      licence_type,
      product,
      region,
      sub_region,
      service_level,
      account_owner,
      opportunity_owner,
      sale_date,
      yearmonth,
      licences_sold,
      revenue,
      currency,
      rev_gbp,
      order_type,
      order_status,
      credit_note_type,
      customer_type,
      opp_id
    ]
  }
}
