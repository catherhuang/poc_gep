view: documentrules_1 {
  sql_table_name: `iamtests-315719.mongodb_gep_airbyte.documentrules_1` ;;
  view_label: "Documentrules"

  dimension: _ab_cdc_cursor {
    type: number
    sql: ${TABLE}._ab_cdc_cursor ;;
  }
  dimension: _ab_cdc_deleted_at {
    type: string
    sql: ${TABLE}._ab_cdc_deleted_at ;;
  }
  dimension: _ab_cdc_updated_at {
    type: string
    sql: ${TABLE}._ab_cdc_updated_at ;;
  }
  dimension_group: _airbyte_extracted {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}._airbyte_extracted_at ;;
  }
  dimension: _airbyte_generation_id {
    type: number
    sql: ${TABLE}._airbyte_generation_id ;;
  }
  dimension: _airbyte_meta {
    type: string
    sql: ${TABLE}._airbyte_meta ;;
  }
  dimension: _airbyte_raw_id {
    type: string
    sql: ${TABLE}._airbyte_raw_id ;;
  }
  dimension: _id {
    type: string
    sql: ${TABLE}._id ;;
  }
  dimension: _schemaver {
    type: number
    sql: ${TABLE}._schemaver ;;
  }
  dimension: allow_supplier_edit_commercial_columns {
    type: string
    sql: ${TABLE}.allowSupplierEditCommercialColumns ;;
  }
  dimension: audit_fields {
    type: string
    sql: ${TABLE}.auditFields ;;
  }
  dimension: bpc {
    type: number
    sql: ${TABLE}.bpc ;;
  }
  dimension: contract_language_terms {
    type: string
    sql: ${TABLE}.contractLanguageTerms ;;
  }
  dimension: contract_terms {
    type: string
    sql: ${TABLE}.contractTerms ;;
  }
  dimension: contract_terms_confirmation {
    type: string
    sql: ${TABLE}.contractTermsConfirmation ;;
  }
  dimension: contract_type_details {
    type: string
    sql: ${TABLE}.contractTypeDetails ;;
  }
  dimension: created_by {
    type: string
    sql: ${TABLE}.createdBy ;;
  }
  dimension: created_on {
    type: string
    sql: ${TABLE}.createdOn ;;
  }
  dimension_group: created {
    type: time
    sql: TIMESTAMP(${created_on}) ;;
    timeframes: [raw,date,week,month,year]
  }
  dimension: document_id {
    type: string
    sql: ${TABLE}.documentId ;;
  }
  dimension: document_link_info {
    type: string
    sql: ${TABLE}.documentLinkInfo ;;
  }
  dimension: document_settings {
    hidden: yes
    type: string
    sql: ${TABLE}.documentSettings ;;
  }
  dimension: document_stakeholders {
    hidden: yes
    type: string
    sql: ${TABLE}.documentStakeholders ;;
  }
  dimension: document_status {
    hidden: yes
    type: string
    sql: ${TABLE}.documentStatus ;;
  }
  dimension: document_timelines {
    hidden: yes
    type: string
    sql: ${TABLE}.documentTimelines ;;
  }
  dimension: documents_document_id {
    type: string
    sql: ${TABLE}.documents_documentId ;;
  }
  dimension: guidelines {
    type: string
    sql: TO_JSON_STRING(${TABLE}.guidelines);;
  }
  dimension: is_deleted {
    type: string
    sql: ${TABLE}.isDeleted ;;
  }
  dimension: is_published {
    type: string
    sql: ${TABLE}.isPublished ;;
  }
  dimension: is_silent_withdrawn {
    type: string
    sql: ${TABLE}.isSilentWithdrawn ;;
  }
  dimension: is_withdrawn {
    type: string
    sql: ${TABLE}.isWithdrawn ;;
  }
  dimension: location {
    type: string
    sql: ${TABLE}.location ;;
  }
  dimension: modified_by {
    type: string
    sql: ${TABLE}.modifiedBy ;;
  }
  dimension: modified_on {
    type: string
    hidden: yes
    sql: ${TABLE}.modifiedOn ;;
  }
  dimension_group: modified {
    type: time
    sql: timestamp(${modified_on}) ;;
    timeframes: [raw, date, week, month, year]
  }
  dimension: negotiation_timelines {
    type: string
    sql: ${TABLE}.negotiationTimelines ;;
  }
  dimension: parent_id {
    type: string
    sql: ${TABLE}.parent_id ;;
  }
  dimension: price_change {
    type: string
    sql: ${TABLE}.priceChange ;;
  }
  dimension: pricesheets {
    type: string
    sql: TO_JSON_STRING(${TABLE}.pricesheets) ;;
  }
  dimension: question000006es {
    type: string
    sql:  TO_JSON_STRING(${TABLE}.question000006es) ;;
  }
  dimension: rfx_source_type {
    type: number
    sql: ${TABLE}.rfxSourceType ;;
  }
  dimension: root_id {
    type: string
    sql: ${TABLE}.root_id ;;
  }
  dimension: rps_scan_details {
    type: string
    sql: ${TABLE}.rpsScanDetails ;;
  }
  dimension: shadow_supplier_access {
    type: string
    sql: ${TABLE}.shadowSupplierAccess ;;
  }
  dimension: suppliers {
    type: string
    sql: ${TABLE}.suppliers ;;
  }
  dimension: surrogate_bid_access {
    type: string
    sql: ${TABLE}.surrogateBidAccess ;;
  }
  dimension: team_member_quorum_list {
    type: string
    sql: ${TABLE}.teamMemberQuorumList ;;
  }
  dimension: tprm_rsa_id {
    type: string
    sql: ${TABLE}.tprmRsaId ;;
  }
  measure: count {
    type: count
  }
}

view: suppliers {
  dimension: client_supplier_code {
    type: string
    sql:  JSON_VALUE(suppliers, '$.clientSupplierCode') ;;
  }
  dimension: contact_code {
    type: string
    sql: JSON_VALUE(suppliers, '$.contactCode') ;;
  }
  dimension: created_by {
    type: string
    #sql: createdBy ;;
    sql: JSON_VALUE(suppliers.createdBY, '$.createdBy')  ;;
  }
  dimension: created_on {
    type: string
    sql: JSON_VALUE(suppliers.createdOn, '$.createdOn') ;;
  }
  dimension: suppliers {
    type: string
    hidden: yes
    sql: JSON_VALUE(suppliers, '$.suppliers') ;;
  }
  dimension: guidelines_accepted_by {
    type: string
    sql: JSON_VALUE(suppliers.guidelinesAcceptedBy, '$.guidelinesAcceptedBy') ;;
  }
  dimension: guidelines_accepted_on {
    type: string
    sql: JSON_VALUE(suppliers.guidelinesAcceptedOn, '$.guidelinesAcceptedOn') ;;
  }
  dimension: is_award_acknowledged {
    type: yesno
    sql: JSON_VALUE(suppliers.isAwardAcknowledge, '$.isAwardAcknowledged') ;;
  }
  dimension: is_commercial_acceptable {
    type: yesno
    sql: JSON_VALUE(suppliers.isCommercialAcceptable, '$.isCommercialAcceptable') ;;
  }
  dimension: is_contract_terms_accepted {
    type: yesno
    sql: JSON_VALUE(suppliers.isContractTermsAccepted, '$.isContractTermsAccepted') ;;
  }
  dimension: is_feedback_revised {
    type: yesno
    sql: JSON_VALUE(suppliers.isFeedbackRevised, '$.isFeedbackRevised') ;;
  }
  dimension: is_guidelines_accepted {
    type: yesno
    sql: JSON_VALUE(suppliers.isGuidelinesAccepted, '$.isGuidelinesAccepted') ;;
  }
  dimension: is_invitation_declined {
    type: yesno
    sql: JSON_VALUE(suppliers.isInvitationDeclined, '$.isInvitationDeclined') ;;
  }
  dimension: is_participation_confirmed {
    type: yesno
    sql: JSON_VALUE(suppliers.isParticipationConfirmed, '$.isParticipationConfirmed') ;;
  }
  dimension: is_permissible_check_required {
    type: yesno
    sql: JSON_VALUE(suppliers.isPermissibleCheckRequire, '$.isPermissibleCheckRequired') ;;
  }
  dimension: is_response_submitted {
    type: yesno
    sql: JSON_VALUE(suppliers, '$.suppliers.isResponseSubmitted') ;;
  }
  dimension: is_revised {
    type: yesno
    sql: JSON_VALUE(suppliers, '$.suppliers.isRevised') ;;
  }
  dimension: is_shortlisted {
    type: yesno
    sql: JSON_VALUE(suppliers, '$.suppliers.isShortlisted') ;;
  }
  dimension: is_shortlisted_for_feedback {
    type: yesno
    sql: JSON_VALUE(suppliers, '$.suppliers.isShortlistedForFeedback') ;;
  }
  dimension: is_shortlisted_for_two_env_bid {
    type: yesno
    sql: JSON_VALUE(suppliers, '$.suppliers.isShortlistedForTwoEnvBid') ;;
  }
  dimension: is_super_ecsl {
    type: yesno
    sql: JSON_VALUE(suppliers, '$.suppliers.isSuperECSL') ;;
  }
  dimension: is_technical_acceptable {
    type: yesno
    sql: JSON_VALUE(suppliers, '$.suppliers.isTechnicalAcceptable') ;;
  }
  dimension: legal_company_mask_name {
    type: string
    sql: JSON_VALUE(suppliers, '$.suppliers.legalCompanyMaskName') ;;
  }
  dimension: legal_company_name {
    type: string
    sql: JSON_VALUE(suppliers.legalCompanyName, '$.legalCompanyName') ;;
  }
  dimension: modified_by {
    type: string
    sql: JSON_VALUE(suppliers, '$.suppliers.modifiedBy') ;;
  }
  dimension: modified_on {
    type: string
    sql: JSON_VALUE(suppliers, '$.suppliers.modifiedOn') ;;
  }
  dimension: partner_code {
    type: number
    sql: JSON_VALUE(suppliers, '$.suppliers.partnerCode') ;;
  }
  dimension: pricesheets_assignments {
    hidden: yes
    sql: JSON_VALUE(suppliers, '$.pricesheetsAssignments') ;;
  }
  dimension: shortlisted_for_feedback_on {
    type: string
    sql: JSON_VALUE(suppliers.shortlistedForFeedbackOn, '$.shortlistedForFeedbackOn') ;;
  }
  dimension: source_type {
    type: number
    sql: JSON_VALUE(suppliers.sourceType, '$.sourceType') ;;
  }
  dimension: stakeholder_type {
    type: number
    sql: JSON_VALUE(suppliers.stakeholderType, '$stakeholderType') ;;
  }
  dimension: status__name {
    type: string
    sql:JSON_VALUE(suppliers.status, '$.name') ;;
    group_label: "Status"
    group_item_label: "Name"
  }
  dimension: status__status_code {
    type: number
    sql:JSON_VALUE(suppliers.status, '$.status_code');;
    group_label: "Status"
    group_item_label: "Status Code"
  }
  dimension: status__status_name {
    type: string
    sql:JSON_VALUE(suppliers.status, '$.status_name');;
    group_label: "Status"
    group_item_label: "Status Name"
  }
  dimension: status_updated_on {
    type: string
    sql: JSON_VALUE(suppliers, '$.suppliers.statusUpdatedOn') ;;
  }
  dimension: supplier_contacts {
    hidden: yes
    sql: JSON_VALUE(suppliers, '$.supplierContacts') ;;
  }
  measure: count {
    type: count
  }
}

view: audit_fields {
  dimension: created_by {
    type: string
    sql: TO_JSON_STRING(auditFields.createdBy) ;;
    group_item_label: "Created By"
  }
  dimension: created_date_time {
    type: string
    sql: TO_JSON_STRING(auditFields.createdDateTime) ;;
    group_item_label: "Created Date Time"
  }
  dimension: modified_by {
    type: string
    sql: TO_JSON_STRING(auditFields.modifiedBy) ;;
    group_item_label: "Modified By"
  }
  dimension: modified_date_time {
    type: string
    sql: TO_JSON_STRING(auditFields.modifiedDateTime) ;;
  }
  dimension: transaction_scope_id {
    type: string
    sql: TO_JSON_STRING(auditFields.transactionScopeId) ;;
    group_item_label: "Transaction Scope ID"
  }
  measure: count {
    type: count
  }
}

view: document_status {
  dimension: document_status__name {
    type: string
    sql: TO_JSON_STRING(documentStatus.name) ;;
    group_item_label: "Name"
  }
  dimension: document_status__status_code {
    type: number
    sql:  TO_JSON_STRING(documentStatus.statusCode) ;;
    group_item_label: "Status Code"
  }
  dimension: document_status__status_name {
    type: string
    sql: TO_JSON_STRING(documentStatus.statusName) ;;
    group_item_label: "Status Name"
  }
  measure: count {
    type: count
  }
}

view: rps_scan_details {
  dimension: rps_scan_details__is_scanned {
    type: yesno
    sql: TO_JSON_STRING(rpsScanDetails.isScanned) ;;
    group_item_label: "Is Scanned"
  }
  dimension: rps_scan_details__rps_file_id {
    type: string
    sql: TO_JSON_STRING(rpsScanDetails.rpsFileId) ;;
    group_item_label: "Rps File ID"
  }
  dimension: rps_scan_details__rps_file_name {
    type: string
    sql: TO_JSON_STRING(rpsScanDetails.rpsFileName) ;;
    group_item_label: "Rps File Name"
  }
  dimension: rps_scan_details__scan_supplier_count {
    type: number
    sql: TO_JSON_STRING(rpsScanDetails.scanSupplierCount) ;;
    group_item_label: "Scan Supplier Count"
  }
  measure: count {
    type: count
  }

}

view: document_link_info {
  dimension: hierarchy {
    type: string
    sql: TO_JSON_STRING(documentLinkInfo.hierarchy) ;;
  }
  dimension: rfx_round_number {
    type: number
    sql: TO_JSON_STRING(documentLinkInfo.rfxRoundNumber) ;;
  }
  dimension: root_id {
    type: string
    sql: TO_JSON_STRING(documentLinkInfo.rootId) ;;
  }
  dimension: source_id {
    type: string
    sql: TO_JSON_STRING(documentLinkInfo.sourceId) ;;
  }
  measure: count {
    type: count
  }
}

view: document_setting {
  dimension: dfbefore_accepting_guideline {
    type: yesno
    sql: TO_JSON_STRING(documentSettings.accessDFBeforeAcceptingGuideline) ;;
  }
  dimension: allow_feedback_response_revision {
    type: yesno
    sql: TO_JSON_STRING(documentSettings.allowFeedbackResponseRevision );;
  }
  dimension: confidential {
    type: yesno
    sql: TO_JSON_STRING(documentSettings.confidential) ;;
  }
  dimension: count_mandatory_guidelines {
    type: number
    sql: TO_JSON_STRING(documentSettings.countMandatoryGuidelines) ;;
  }
  dimension: currency_list {
    hidden: yes
    sql: TO_JSON_STRING(documentSettings.currencyList) ;;
  }
  dimension: diverse_suppliers {
    type: yesno
    sql: TO_JSON_STRING(documentSettings.diverseSuppliers) ;;
  }
  dimension: diverse_suppliers_comments {
    type: string
    sql: TO_JSON_STRING(documentSettings.diverseSuppliersComments);;
  }
  dimension: enable2_bid_envelope {
    type: yesno
    sql: TO_JSON_STRING(documentSettings.enable2BidEnvelope) ;;
  }
  dimension: enable_item_level_multicurrency {
    type: yesno
    sql:TO_JSON_STRING(documentSettings.enableItemLevelMulticurrency );;
  }
  dimension: enable_participation_confirmation_timeline {
    type: yesno
    sql: TO_JSON_STRING(documentSettings.enableParticipationConfirmationTimeline) ;;
  }
  dimension: document_settings__enable_public_rfx {
    type: yesno
    sql: TO_JSON_STRING(documentSettings.enablePublicRFx) ;;
  }
  dimension: document_settings__enable_scorecard_change_notification {
    type: yesno
    sql: TO_JSON_STRING(documentSettings.enableScorecardChangeNotification) ;;
  }
  dimension: document_settings__event_part {
    type: yesno
    sql: TO_JSON_STRING(documentSettings.eventPart) ;;

  }
  dimension: hide_section_before_confirm_part {
    type: yesno
    sql: TO_JSON_STRING(documentSettings.hideSectionBeforeConfirmPart) ;;
  }
  dimension: is_buyer_masked {
    type: yesno
    sql: TO_JSON_STRING(documentSettings.isBuyerMasked);;
  }
  dimension: is_feedback_published {
    type: yesno
    sql: TO_JSON_STRING(documentSettings.isFeedbackPublished) ;;
  }
  dimension:is_supplier_masked {
    type: yesno
    sql: TO_JSON_STRING(documentSettings.isSupplierMasked) ;;
  }
  dimension: link_price_sheets {
    type: yesno
    sql: TO_JSON_STRING(documentSettings.linkPriceSheets) ;;
  }
  dimension: mandatoryguideline {
    type: yesno
    sql: TO_JSON_STRING(documentSettings.mandatoryguideline) ;;
  }
  dimension:max_score_range {
    type: number
    sql:TO_JSON_STRING(documentSettings.maxScoreRange) ;;
  }
  dimension: min_score_range {
    type: number
    sql: TO_JSON_STRING(documentSettings.minScoreRange) ;;
  }
  dimension: multicurrency {
    type: yesno
    sql: TO_JSON_STRING(documentSettings.multicurrency) ;;
  }
  dimension: price_scoring {
    type: yesno
    sql: TO_JSON_STRING(documentSettings.priceScoring) ;;
  }
  dimension: price_scoring_instructions {
    type: string
    sql: TO_JSON_STRING(documentSettings.priceScoringInstructions) ;;
  }
  dimension: document_settings__pricesheet_weightage {
    type: string
    sql: TO_JSON_STRING(documentSettings.pricesheetWeightage) ;;
  }
  dimension: question000006e {
    type: yesno
    sql: TO_JSON_STRING(documentSettings.question000006e) ;;
  }
  dimension: question000006e_instructions {
    type: string
    sql: TO_JSON_STRING(documentSettings.question000006eInstructions) ;;
  }
  dimension: question000006e_weightage {
    type: string
    sql:  TO_JSON_STRING(documentSettings.question000006eWeightage) ;;
  }
  dimension: scoring_type {
    type: string
    sql: TO_JSON_STRING(documentSettings.scoringType) ;;
  }
  dimension: sealed {
    type: yesno
    sql: TO_JSON_STRING(documentSettings.sealed) ;;
  }
  dimension: skip_scoring {
    type: yesno
    sql: TO_JSON_STRING(documentSettings.skipScoring) ;;
  }
  dimension: suppliers_upload_attachments {
    type: yesno
    sql: TO_JSON_STRING(documentSettings.suppliersUploadAttachments) ;;
  }
  dimension: team_member_supplier_responses {
    type: yesno
    sql: TO_JSON_STRING(documentSettings.teamMemberSupplierResponses) ;;
  }
  dimension: training {
    type: yesno
    sql: TO_JSON_STRING(documentSettings.training) ;;
  }
  measure: count {
    type: count
  }
}

view: document_timeline {
  dimension: created_by {
    type: string
    sql: JSON_VALUE(document_timeline, '$.createdBy') ;;
  }
  dimension: created_on {
    type: string
    sql: JSON_VALUE(document_timeline, '$.createdOn') ;;
  }
  dimension: end_date_time {
    type: string
    sql: JSON_VALUE(document_timeline, '$.endDateTime') ;;
  }
  dimension: document_timelines {
    type: string
    hidden: yes
    sql: gep_gep_cdc_demo_documentrules__document_timelines ;;
  }
  dimension: modified_by {
    type: string
    sql: JSON_VALUE(document_timeline, '$.modifiedBy') ;;
  }
  dimension: modified_on {
    type: string
    sql: JSON_VALUE(document_timeline, '$.modifiedOn') ;;
  }
  dimension: name {
    type: string
    sql: JSON_VALUE(document_timeline, '$.name') ;;
  }
  dimension: start_date_time {
    type: string
    sql: JSON_VALUE(document_timeline, '$.startDateTime') ;;
  }
  dimension: type_id {
    type: number
    sql: JSON_VALUE(document_timeline, '$.typeId') ;;
  }
  dimension: visible_to_supplier {
    type: yesno
    sql: JSON_VALUE(document_timeline, '$.visibleToSupplier) ;;
  }
}

view: document_stakeholders {
  dimension: allow_supplier_contact {
    type: yesno
    sql: JSON_VALUE(documentStakeholders, '$.allowSupplierContact') ;;
  }
  dimension: co_authoring_access {
    type: number
    sql: JSON_VALUE(documentStakeholders, '$.coAuthoringAccess') ;;
  }
  dimension: co_authoring_assignments {
    hidden: yes
    sql: JSON_VALUE(documentStakeholders, '$.coAuthoringAssignments') ;;
  }
  dimension: commercial000007luation_access {
    type: number
    sql: JSON_VALUE(documentStakeholders, '$.commercial000007luationAccess') ;;
  }
  dimension: commercial000007luation_status {
    hidden: yes
    sql: JSON_VALUE(documentStakeholders, '$.commercial000007luationStatus') ;;
  }
  dimension: contact_code {
    type: number
    sql: JSON_VALUE(documentStakeholders, '$.contactCode') ;;
  }
  dimension: first_name {
    type: string
    sql: JSON_VALUE(documentStakeholders, '$.firstName') ;;
  }

  dimension: group_id {
    type: number
    sql: JSON_VALUE(documentStakeholders, '$.groupId') ;;
  }
  dimension: group_name {
    type: string
    sql: JSON_VALUE(documentStakeholders, '$.groupName') ;;
  }
  dimension: invitation_status {
    type: string
    sql: JSON_VALUE(documentStakeholders, '$.invitationStatus') ;;
  }
  dimension: invited_by {
    type: number
    sql: JSON_VALUE(documentStakeholders, '$.invitedBy') ;;
  }
  dimension: invited_on {
    type: string
    sql: JSON_VALUE(documentStakeholders, '$.invitedOn') ;;
  }
  dimension: is_approver {
    type: yesno
    sql: JSON_VALUE(documentStakeholders, '$.isApprover') ;;
  }
  dimension: last_name {
    type: string
    sql: JSON_VALUE(documentStakeholders, '$.lastName') ;;
  }
  dimension: full_name {
    type: string
    sql: concat(${first_name}, " ", ${last_name}) ;;
  }
  dimension: role {
    type: number
    sql: JSON_VALUE(documentStakeholders, '$.role') ;;
  }
  dimension: stakeholder_type {
    type: number
    sql: JSON_VALUE(documentStakeholders, '$.stakeholderType') ;;
  }
  dimension: technical000007luation_access {
    type: number
    sql: JSON_VALUE(documentStakeholders, '$.technical000007luationAccess') ;;
  }
  dimension: technical000007luation_status {
    hidden: yes
    sql: technical000007luationStatus ;;
  }
  dimension: x000007luation_access {
    type: number
    sql: JSON_VALUE(documentStakeholders, '$.x000007luationAccess') ;;
  }
  dimension: x000007luation_assignments {
    hidden: yes
    sql: x000007luationAssignments ;;
  }
  dimension: x000007luation_submitted_partner_codes__commercial_submitted_partner_codes {
    hidden: yes
    sql: ${TABLE}.x000007luationSubmittedPartnerCodes.commercialSubmittedPartnerCodes ;;
    group_label: "X000007luation Submitted Partner Codes"
    group_item_label: "Commercial Submitted Partner Codes"
  }
  dimension: x000007luation_submitted_partner_codes__general_submitted_partner_codes {
    hidden: yes
    sql: ${TABLE}.x000007luationSubmittedPartnerCodes.generalSubmittedPartnerCodes ;;
    group_label: "X000007luation Submitted Partner Codes"
    group_item_label: "General Submitted Partner Codes"
  }
  dimension: x000007luation_submitted_partner_codes__technical_submitted_partner_codes {
    hidden: yes
    sql: ${TABLE}.x000007luationSubmittedPartnerCodes.technicalSubmittedPartnerCodes ;;
    group_label: "X000007luation Submitted Partner Codes"
    group_item_label: "Technical Submitted Partner Codes"
  }
  measure: count {
    type: count
  }
}
