view: user {
  sql_table_name: salesforce."sf_User" ;;

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

  dimension: about_me {
    type: string
    sql: ${TABLE}."AboutMe" ;;
  }

  dimension: address__city {
    type: string
    sql: ${TABLE}."Address__city" ;;
  }

  dimension: address__country {
    type: string
    sql: ${TABLE}."Address__country" ;;
  }

  dimension: address__postal_code {
    type: string
    sql: ${TABLE}."Address__postalCode" ;;
  }

  dimension: address__state {
    type: string
    sql: ${TABLE}."Address__state" ;;
  }

  dimension: address__street {
    type: string
    sql: ${TABLE}."Address__street" ;;
  }

  dimension: alias {
    type: string
    sql: ${TABLE}."Alias" ;;
  }

  dimension: attributes__type {
    type: string
    sql: ${TABLE}."attributes__type" ;;
  }

  dimension: badge_text {
    type: string
    sql: ${TABLE}."BadgeText" ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}."City" ;;
  }

  dimension: community_nickname {
    type: string
    sql: ${TABLE}."CommunityNickname" ;;
  }

  dimension: company_name {
    type: string
    sql: ${TABLE}."CompanyName" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."Country" ;;
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

  dimension: default_currency_iso_code {
    type: string
    sql: ${TABLE}."DefaultCurrencyIsoCode" ;;
  }

  dimension: default_group_notification_frequency {
    type: string
    sql: ${TABLE}."DefaultGroupNotificationFrequency" ;;
  }

  dimension: default_legal_entity__c {
    type: string
    sql: ${TABLE}."Default_Legal_Entity__c" ;;
  }

  dimension: delegated_approver_id {
    type: string
    sql: ${TABLE}."DelegatedApproverId" ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}."Department" ;;
  }

  dimension: digest_frequency {
    type: string
    sql: ${TABLE}."DigestFrequency" ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}."Email" ;;
  }

  dimension: email_encoding_key {
    type: string
    sql: ${TABLE}."EmailEncodingKey" ;;
  }

  dimension: email_preferences_auto_bcc {
    type: yesno
    sql: ${TABLE}."EmailPreferencesAutoBcc" ;;
  }

  dimension: email_preferences_auto_bcc_stay_in_touch {
    type: yesno
    sql: ${TABLE}."EmailPreferencesAutoBccStayInTouch" ;;
  }

  dimension: email_preferences_stay_in_touch_reminder {
    type: yesno
    sql: ${TABLE}."EmailPreferencesStayInTouchReminder" ;;
  }

  dimension: employee_number {
    type: string
    sql: ${TABLE}."EmployeeNumber" ;;
  }

  dimension: et4ae5__exact_target_for_app_exchange_admin__c {
    type: yesno
    sql: ${TABLE}."et4ae5__ExactTargetForAppExchangeAdmin__c" ;;
  }

  dimension: et4ae5__exact_target_for_app_exchange_user__c {
    type: yesno
    sql: ${TABLE}."et4ae5__ExactTargetForAppExchangeUser__c" ;;
  }

  dimension: et4ae5__valid_exact_target_admin__c {
    type: yesno
    sql: ${TABLE}."et4ae5__ValidExactTargetAdmin__c" ;;
  }

  dimension: et4ae5__valid_exact_target_user__c {
    type: yesno
    sql: ${TABLE}."et4ae5__ValidExactTargetUser__c" ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}."FirstName" ;;
  }

  dimension: forecast_enabled {
    type: yesno
    sql: ${TABLE}."ForecastEnabled" ;;
  }

  dimension: full_photo_url {
    type: string
    sql: ${TABLE}."FullPhotoUrl" ;;
  }

  dimension: is_active {
    type: yesno
    sql: ${TABLE}."IsActive" ;;
  }

  dimension: language_locale_key {
    type: string
    sql: ${TABLE}."LanguageLocaleKey" ;;
  }

  dimension_group: last_login {
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
    sql: ${TABLE}."LastLoginDate" ;;
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

  dimension_group: last_password_change {
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
    sql: ${TABLE}."LastPasswordChangeDate" ;;
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

  dimension: locale_sid_key {
    type: string
    sql: ${TABLE}."LocaleSidKey" ;;
  }

  dimension: mobile_phone {
    type: string
    sql: ${TABLE}."MobilePhone" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."Name" ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}."Phone" ;;
  }

  dimension: postal_code {
    type: string
    sql: ${TABLE}."PostalCode" ;;
  }

  dimension: profile_id {
    type: string
    sql: ${TABLE}."ProfileId" ;;
  }

  dimension: receives_admin_info_emails {
    type: yesno
    sql: ${TABLE}."ReceivesAdminInfoEmails" ;;
  }

  dimension: receives_info_emails {
    type: yesno
    sql: ${TABLE}."ReceivesInfoEmails" ;;
  }

  dimension: region__c {
    type: string
    sql: ${TABLE}."Region__c" ;;
  }

  dimension: regions_picklist__c {
    type: string
    sql: ${TABLE}."Regions_Picklist__c" ;;
  }

  dimension: signature {
    type: string
    sql: ${TABLE}."Signature" ;;
  }

  dimension: small_photo_url {
    type: string
    sql: ${TABLE}."SmallPhotoUrl" ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}."State" ;;
  }

  dimension: street {
    type: string
    sql: ${TABLE}."Street" ;;
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

  dimension: time_zone_sid_key {
    type: string
    sql: ${TABLE}."TimeZoneSidKey" ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}."Title" ;;
  }

  dimension: user_permissions_avantgo_user {
    type: yesno
    sql: ${TABLE}."UserPermissionsAvantgoUser" ;;
  }

  dimension: user_permissions_call_center_auto_login {
    type: yesno
    sql: ${TABLE}."UserPermissionsCallCenterAutoLogin" ;;
  }

  dimension: user_permissions_chatter_answers_user {
    type: yesno
    sql: ${TABLE}."UserPermissionsChatterAnswersUser" ;;
  }

  dimension: user_permissions_interaction_user {
    type: yesno
    sql: ${TABLE}."UserPermissionsInteractionUser" ;;
  }

  dimension: user_permissions_knowledge_user {
    type: yesno
    sql: ${TABLE}."UserPermissionsKnowledgeUser" ;;
  }

  dimension: user_permissions_live_agent_user {
    type: yesno
    sql: ${TABLE}."UserPermissionsLiveAgentUser" ;;
  }

  dimension: user_permissions_marketing_user {
    type: yesno
    sql: ${TABLE}."UserPermissionsMarketingUser" ;;
  }

  dimension: user_permissions_mobile_user {
    type: yesno
    sql: ${TABLE}."UserPermissionsMobileUser" ;;
  }

  dimension: user_permissions_offline_user {
    type: yesno
    sql: ${TABLE}."UserPermissionsOfflineUser" ;;
  }

  dimension: user_permissions_sfcontent_user {
    type: yesno
    sql: ${TABLE}."UserPermissionsSFContentUser" ;;
  }

  dimension: user_permissions_support_user {
    type: yesno
    sql: ${TABLE}."UserPermissionsSupportUser" ;;
  }

  dimension: user_preferences_activity_reminders_popup {
    type: yesno
    sql: ${TABLE}."UserPreferencesActivityRemindersPopup" ;;
  }

  dimension: user_preferences_apex_pages_developer_mode {
    type: yesno
    sql: ${TABLE}."UserPreferencesApexPagesDeveloperMode" ;;
  }

  dimension: user_preferences_content_email_as_and_when {
    type: yesno
    sql: ${TABLE}."UserPreferencesContentEmailAsAndWhen" ;;
  }

  dimension: user_preferences_content_no_email {
    type: yesno
    sql: ${TABLE}."UserPreferencesContentNoEmail" ;;
  }

  dimension: user_preferences_dis_comment_after_like_email {
    type: yesno
    sql: ${TABLE}."UserPreferencesDisCommentAfterLikeEmail" ;;
  }

  dimension: user_preferences_dis_mentions_comment_email {
    type: yesno
    sql: ${TABLE}."UserPreferencesDisMentionsCommentEmail" ;;
  }

  dimension: user_preferences_dis_prof_post_comment_email {
    type: yesno
    sql: ${TABLE}."UserPreferencesDisProfPostCommentEmail" ;;
  }

  dimension: user_preferences_disable_all_feeds_email {
    type: yesno
    sql: ${TABLE}."UserPreferencesDisableAllFeedsEmail" ;;
  }

  dimension: user_preferences_disable_bookmark_email {
    type: yesno
    sql: ${TABLE}."UserPreferencesDisableBookmarkEmail" ;;
  }

  dimension: user_preferences_disable_change_comment_email {
    type: yesno
    sql: ${TABLE}."UserPreferencesDisableChangeCommentEmail" ;;
  }

  dimension: user_preferences_disable_endorsement_email {
    type: yesno
    sql: ${TABLE}."UserPreferencesDisableEndorsementEmail" ;;
  }

  dimension: user_preferences_disable_file_share_notifications_for_api {
    type: yesno
    sql: ${TABLE}."UserPreferencesDisableFileShareNotificationsForApi" ;;
  }

  dimension: user_preferences_disable_followers_email {
    type: yesno
    sql: ${TABLE}."UserPreferencesDisableFollowersEmail" ;;
  }

  dimension: user_preferences_disable_later_comment_email {
    type: yesno
    sql: ${TABLE}."UserPreferencesDisableLaterCommentEmail" ;;
  }

  dimension: user_preferences_disable_like_email {
    type: yesno
    sql: ${TABLE}."UserPreferencesDisableLikeEmail" ;;
  }

  dimension: user_preferences_disable_mentions_post_email {
    type: yesno
    sql: ${TABLE}."UserPreferencesDisableMentionsPostEmail" ;;
  }

  dimension: user_preferences_disable_message_email {
    type: yesno
    sql: ${TABLE}."UserPreferencesDisableMessageEmail" ;;
  }

  dimension: user_preferences_disable_profile_post_email {
    type: yesno
    sql: ${TABLE}."UserPreferencesDisableProfilePostEmail" ;;
  }

  dimension: user_preferences_disable_share_post_email {
    type: yesno
    sql: ${TABLE}."UserPreferencesDisableSharePostEmail" ;;
  }

  dimension: user_preferences_enable_auto_sub_for_feeds {
    type: yesno
    sql: ${TABLE}."UserPreferencesEnableAutoSubForFeeds" ;;
  }

  dimension: user_preferences_event_reminders_checkbox_default {
    type: yesno
    sql: ${TABLE}."UserPreferencesEventRemindersCheckboxDefault" ;;
  }

  dimension: user_preferences_hide_chatter_onboarding_splash {
    type: yesno
    sql: ${TABLE}."UserPreferencesHideChatterOnboardingSplash" ;;
  }

  dimension: user_preferences_hide_csndesktop_task {
    type: yesno
    sql: ${TABLE}."UserPreferencesHideCSNDesktopTask" ;;
  }

  dimension: user_preferences_hide_csnget_chatter_mobile_task {
    type: yesno
    sql: ${TABLE}."UserPreferencesHideCSNGetChatterMobileTask" ;;
  }

  dimension: user_preferences_hide_s1_browser_ui {
    type: yesno
    sql: ${TABLE}."UserPreferencesHideS1BrowserUI" ;;
  }

  dimension: user_preferences_hide_second_chatter_onboarding_splash {
    type: yesno
    sql: ${TABLE}."UserPreferencesHideSecondChatterOnboardingSplash" ;;
  }

  dimension: user_preferences_lightning_experience_preferred {
    type: yesno
    sql: ${TABLE}."UserPreferencesLightningExperiencePreferred" ;;
  }

  dimension: user_preferences_path_assistant_collapsed {
    type: yesno
    sql: ${TABLE}."UserPreferencesPathAssistantCollapsed" ;;
  }

  dimension: user_preferences_reminder_sound_off {
    type: yesno
    sql: ${TABLE}."UserPreferencesReminderSoundOff" ;;
  }

  dimension: user_preferences_show_city_to_external_users {
    type: yesno
    sql: ${TABLE}."UserPreferencesShowCityToExternalUsers" ;;
  }

  dimension: user_preferences_show_city_to_guest_users {
    type: yesno
    sql: ${TABLE}."UserPreferencesShowCityToGuestUsers" ;;
  }

  dimension: user_preferences_show_country_to_external_users {
    type: yesno
    sql: ${TABLE}."UserPreferencesShowCountryToExternalUsers" ;;
  }

  dimension: user_preferences_show_country_to_guest_users {
    type: yesno
    sql: ${TABLE}."UserPreferencesShowCountryToGuestUsers" ;;
  }

  dimension: user_preferences_show_email_to_external_users {
    type: yesno
    sql: ${TABLE}."UserPreferencesShowEmailToExternalUsers" ;;
  }

  dimension: user_preferences_show_fax_to_external_users {
    type: yesno
    sql: ${TABLE}."UserPreferencesShowFaxToExternalUsers" ;;
  }

  dimension: user_preferences_show_manager_to_external_users {
    type: yesno
    sql: ${TABLE}."UserPreferencesShowManagerToExternalUsers" ;;
  }

  dimension: user_preferences_show_mobile_phone_to_external_users {
    type: yesno
    sql: ${TABLE}."UserPreferencesShowMobilePhoneToExternalUsers" ;;
  }

  dimension: user_preferences_show_postal_code_to_external_users {
    type: yesno
    sql: ${TABLE}."UserPreferencesShowPostalCodeToExternalUsers" ;;
  }

  dimension: user_preferences_show_postal_code_to_guest_users {
    type: yesno
    sql: ${TABLE}."UserPreferencesShowPostalCodeToGuestUsers" ;;
  }

  dimension: user_preferences_show_profile_pic_to_guest_users {
    type: yesno
    sql: ${TABLE}."UserPreferencesShowProfilePicToGuestUsers" ;;
  }

  dimension: user_preferences_show_state_to_external_users {
    type: yesno
    sql: ${TABLE}."UserPreferencesShowStateToExternalUsers" ;;
  }

  dimension: user_preferences_show_state_to_guest_users {
    type: yesno
    sql: ${TABLE}."UserPreferencesShowStateToGuestUsers" ;;
  }

  dimension: user_preferences_show_street_address_to_external_users {
    type: yesno
    sql: ${TABLE}."UserPreferencesShowStreetAddressToExternalUsers" ;;
  }

  dimension: user_preferences_show_title_to_external_users {
    type: yesno
    sql: ${TABLE}."UserPreferencesShowTitleToExternalUsers" ;;
  }

  dimension: user_preferences_show_title_to_guest_users {
    type: yesno
    sql: ${TABLE}."UserPreferencesShowTitleToGuestUsers" ;;
  }

  dimension: user_preferences_show_work_phone_to_external_users {
    type: yesno
    sql: ${TABLE}."UserPreferencesShowWorkPhoneToExternalUsers" ;;
  }

  dimension: user_preferences_sort_feed_by_comment {
    type: yesno
    sql: ${TABLE}."UserPreferencesSortFeedByComment" ;;
  }

  dimension: user_preferences_task_reminders_checkbox_default {
    type: yesno
    sql: ${TABLE}."UserPreferencesTaskRemindersCheckboxDefault" ;;
  }

  dimension: user_role_id {
    type: string
    sql: ${TABLE}."UserRoleId" ;;
  }

  dimension: user_type {
    type: string
    sql: ${TABLE}."UserType" ;;
  }

  dimension: username {
    type: string
    sql: ${TABLE}."Username" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      username,
      name,
      last_name,
      first_name,
      company_name,
      community_nickname
    ]
  }
}
