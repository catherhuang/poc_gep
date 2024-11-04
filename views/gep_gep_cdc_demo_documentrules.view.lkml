# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view
explore: gep_gep_cdc_demo_documentrules {
  label: "GEP CDD Document Rules Demo"
  hidden: yes
    join: gep_gep_cdc_demo_documentrules__suppliers {
      view_label: "Suppliers"
      sql: LEFT JOIN UNNEST(${gep_gep_cdc_demo_documentrules.suppliers}) as gep_gep_cdc_demo_documentrules__suppliers ;;
      relationship: one_to_many
    }
    join: gep_gep_cdc_demo_documentrules__guidelines {
      view_label: "Guidelines"
      sql: LEFT JOIN UNNEST(${gep_gep_cdc_demo_documentrules.guidelines}) as gep_gep_cdc_demo_documentrules__guidelines ;;
      relationship: one_to_many
    }
    join: gep_gep_cdc_demo_documentrules__pricesheets {
      view_label: "Pricesheets"
      sql: LEFT JOIN UNNEST(${gep_gep_cdc_demo_documentrules.pricesheets}) as gep_gep_cdc_demo_documentrules__pricesheets ;;
      relationship: one_to_many
    }
    join: gep_gep_cdc_demo_documentrules__contract_terms {
      view_label: "Contract Terms"
      sql: LEFT JOIN UNNEST(${gep_gep_cdc_demo_documentrules.contract_terms}) as gep_gep_cdc_demo_documentrules__contract_terms ;;
      relationship: one_to_many
    }
    join: gep_gep_cdc_demo_documentrules__question000006es {
      view_label: "Question000006es"
      sql: LEFT JOIN UNNEST(${gep_gep_cdc_demo_documentrules.question000006es}) as gep_gep_cdc_demo_documentrules__question000006es ;;
      relationship: one_to_many
    }
    join: gep_gep_cdc_demo_documentrules__document_timelines {
      view_label: "Document Timelines"
      sql: LEFT JOIN UNNEST(${gep_gep_cdc_demo_documentrules.document_timelines}) as gep_gep_cdc_demo_documentrules__document_timelines ;;
      relationship: one_to_many
    }
    join: gep_gep_cdc_demo_documentrules__surrogate_bid_access {
      view_label: "Surrogate Bid Access"
      sql: LEFT JOIN UNNEST(${gep_gep_cdc_demo_documentrules.surrogate_bid_access}) as gep_gep_cdc_demo_documentrules__surrogate_bid_access ;;
      relationship: one_to_many
    }
    join: gep_gep_cdc_demo_documentrules__team_member_quorum_list {
      view_label: "Team Member Quorum List"
      sql: LEFT JOIN UNNEST(${gep_gep_cdc_demo_documentrules.team_member_quorum_list}) as gep_gep_cdc_demo_documentrules__team_member_quorum_list ;;
      relationship: one_to_many
    }
    join: gep_gep_cdc_demo_documentrules__document_stakeholders {
      view_label: "Document Stakeholders"
      sql: LEFT JOIN UNNEST(${gep_gep_cdc_demo_documentrules.document_stakeholders}) as gep_gep_cdc_demo_documentrules__document_stakeholders ;;
      relationship: one_to_many
    }
    join: gep_gep_cdc_demo_documentrules__negotiation_timelines {
      view_label: "Negotiation Timelines"
      sql: LEFT JOIN UNNEST(${gep_gep_cdc_demo_documentrules.negotiation_timelines}) as gep_gep_cdc_demo_documentrules__negotiation_timelines ;;
      relationship: one_to_many
    }
    join: gep_gep_cdc_demo_documentrules__contract_terms_confirmation {
      view_label: "Contract Terms Confirmation"
      sql: LEFT JOIN UNNEST(${gep_gep_cdc_demo_documentrules.contract_terms_confirmation}) as gep_gep_cdc_demo_documentrules__contract_terms_confirmation ;;
      relationship: one_to_many
    }
    join: gep_gep_cdc_demo_documentrules__document_settings__currency_list {
      view_label: "Document Settings Currency List"
      sql: LEFT JOIN UNNEST(${gep_gep_cdc_demo_documentrules.document_settings__currency_list}) as gep_gep_cdc_demo_documentrules__document_settings__currency_list ;;
      relationship: one_to_many
    }
    join: gep_gep_cdc_demo_documentrules__suppliers__supplier_contacts {
      view_label: "Suppliers Contacts"
      sql: LEFT JOIN UNNEST(${gep_gep_cdc_demo_documentrules__suppliers.supplier_contacts}) as gep_gep_cdc_demo_documentrules__suppliers__supplier_contacts ;;
      relationship: one_to_many
    }
    join: gep_gep_cdc_demo_documentrules__suppliers__pricesheets_assignments {
      view_label: "Suppliers Pricesheets Assignments"
      sql: LEFT JOIN UNNEST(${gep_gep_cdc_demo_documentrules__suppliers.pricesheets_assignments}) as gep_gep_cdc_demo_documentrules__suppliers__pricesheets_assignments ;;
      relationship: one_to_many
    }
    join: gep_gep_cdc_demo_documentrules__document_stakeholders__co_authoring_assignments {
      view_label: "Document Stakeholders Co-Authoring Assignments"
      sql: LEFT JOIN UNNEST(${gep_gep_cdc_demo_documentrules__document_stakeholders.co_authoring_assignments}) as gep_gep_cdc_demo_documentrules__document_stakeholders__co_authoring_assignments ;;
      relationship: one_to_many
    }
    join: gep_gep_cdc_demo_documentrules__document_stakeholders__x000007luation_assignments {
      view_label: "Document Stakeholders X000007luation Assignments"
      sql: LEFT JOIN UNNEST(${gep_gep_cdc_demo_documentrules__document_stakeholders.x000007luation_assignments}) as gep_gep_cdc_demo_documentrules__document_stakeholders__x000007luation_assignments ;;
      relationship: one_to_many
    }
    join: gep_gep_cdc_demo_documentrules__document_stakeholders__technical000007luation_status {
      view_label: "Document Stakeholders Technical000007luation Status"
      sql: LEFT JOIN UNNEST(${gep_gep_cdc_demo_documentrules__document_stakeholders.technical000007luation_status}) as gep_gep_cdc_demo_documentrules__document_stakeholders__technical000007luation_status ;;
      relationship: one_to_many
    }
    join: gep_gep_cdc_demo_documentrules__document_stakeholders__commercial000007luation_status {
      view_label: "Document Stakeholders Commercial000007uation Status"
      sql: LEFT JOIN UNNEST(${gep_gep_cdc_demo_documentrules__document_stakeholders.commercial000007luation_status}) as gep_gep_cdc_demo_documentrules__document_stakeholders__commercial000007luation_status ;;
      relationship: one_to_many
    }
    join: gep_gep_cdc_demo_documentrules__document_stakeholders__x000007luation_submitted_partner_codes__general_submitted_partner_codes {
      view_label: "Document Stakeholders X000007luation Submitted Partnercodes  General Submitted Partner Codes"
      sql: LEFT JOIN UNNEST(${gep_gep_cdc_demo_documentrules__document_stakeholders.x000007luation_submitted_partner_codes__general_submitted_partner_codes}) as gep_gep_cdc_demo_documentrules__document_stakeholders__x000007luation_submitted_partner_codes__general_submitted_partner_codes ;;
      relationship: one_to_many
    }
    join: gep_gep_cdc_demo_documentrules__document_stakeholders__x000007luation_submitted_partner_codes__technical_submitted_partner_codes {
      view_label: "Document Stakeholders X000007luation Submitted Partner Codes  Technical Submitted Partnercodes"
      sql: LEFT JOIN UNNEST(${gep_gep_cdc_demo_documentrules__document_stakeholders.x000007luation_submitted_partner_codes__technical_submitted_partner_codes}) as gep_gep_cdc_demo_documentrules__document_stakeholders__x000007luation_submitted_partner_codes__technical_submitted_partner_codes ;;
      relationship: one_to_many
    }
    join: gep_gep_cdc_demo_documentrules__document_stakeholders__x000007luation_submitted_partner_codes__commercial_submitted_partner_codes {
      view_label: "Document Stakeholders  X000007luation Submitted Partner Codes Commercial Submitted Partner Codes"
      sql: LEFT JOIN UNNEST(${gep_gep_cdc_demo_documentrules__document_stakeholders.x000007luation_submitted_partner_codes__commercial_submitted_partner_codes}) as gep_gep_cdc_demo_documentrules__document_stakeholders__x000007luation_submitted_partner_codes__commercial_submitted_partner_codes ;;
      relationship: one_to_many
    }
}
view: gep_gep_cdc_demo_documentrules {
  sql_table_name: `iamtests-315719.mongodb_gep_kafka.gep_gep_cdc_demo_documentrules` ;;
  view_label: "Documentrules"

  dimension: _id {
    type: string
    primary_key: yes
    sql: ${TABLE}._id ;;
  }
  dimension: _schemaver {
    type: number
    sql: ${TABLE}._schemaver ;;
  }
  dimension: audit_fields__created_by {
    type: string
    sql: ${TABLE}.auditFields.createdBy ;;
    group_label: "Audit Fields"
    group_item_label: "Created By"
  }
  dimension: audit_fields__created_date_time {
    type: string
    sql: ${TABLE}.auditFields.createdDateTime ;;
    group_label: "Audit Fields"
    group_item_label: "Created Date Time"
  }
  dimension: audit_fields__modified_by {
    type: string
    sql: ${TABLE}.auditFields.modifiedBy ;;
    group_label: "Audit Fields"
    group_item_label: "Modified By"
  }
  dimension: audit_fields__modified_date_time {
    type: string
    sql: ${TABLE}.auditFields.modifiedDateTime ;;
    group_label: "Audit Fields"
    group_item_label: "Modified Date Time"
  }
  dimension: audit_fields__transaction_scope_id {
    type: string
    sql: ${TABLE}.auditFields.transactionScopeId ;;
    group_label: "Audit Fields"
    group_item_label: "Transaction Scope ID"
  }
  dimension: bpc {
    type: number
    sql: ${TABLE}.bpc ;;
  }
  dimension: contract_terms {
    hidden: yes
    sql: ${TABLE}.contractTerms ;;
  }
  dimension: contract_terms_confirmation {
    hidden: yes
    sql: ${TABLE}.contractTermsConfirmation ;;
  }
  dimension: created_by {
    type: string
    sql: ${TABLE}.createdBy ;;
  }
  dimension: created_on {
    type: string
    sql: ${TABLE}.createdOn ;;
  }
  dimension: document_id {
    type: string
    sql: ${TABLE}.documentId ;;
  }
  dimension: document_link_info__hierarchy {
    type: string
    sql: ${TABLE}.documentLinkInfo.hierarchy ;;
    group_label: "Document Link Info"
    group_item_label: "Hierarchy"
  }
  dimension: document_link_info__rfx_round_number {
    type: number
    sql: ${TABLE}.documentLinkInfo.rfxRoundNumber ;;
    group_label: "Document Link Info"
    group_item_label: "Rfx Round Number"
  }
  dimension: document_link_info__root_id {
    type: string
    sql: ${TABLE}.documentLinkInfo.rootId ;;
    group_label: "Document Link Info"
    group_item_label: "Root ID"
  }
  dimension: document_link_info__source_id {
    type: string
    sql: ${TABLE}.documentLinkInfo.sourceId ;;
    group_label: "Document Link Info"
    group_item_label: "Source ID"
  }
  dimension: document_settings__access_dfbefore_accepting_guideline {
    type: yesno
    sql: ${TABLE}.documentSettings.accessDFBeforeAcceptingGuideline ;;
    group_label: "Document Settings"
    group_item_label: "Access Dfbefore Accepting Guideline"
  }
  dimension: document_settings__allow_feedback_response_revision {
    type: yesno
    sql: ${TABLE}.documentSettings.allowFeedbackResponseRevision ;;
    group_label: "Document Settings"
    group_item_label: "Allow Feedback Response Revision"
  }
  dimension: document_settings__confidential {
    type: yesno
    sql: ${TABLE}.documentSettings.confidential ;;
    group_label: "Document Settings"
    group_item_label: "Confidential"
  }
  dimension: document_settings__count_mandatory_guidelines {
    type: number
    sql: ${TABLE}.documentSettings.countMandatoryGuidelines ;;
    group_label: "Document Settings"
    group_item_label: "Count Mandatory Guidelines"
  }
  dimension: document_settings__currency_list {
    hidden: yes
    sql: ${TABLE}.documentSettings.currencyList ;;
    group_label: "Document Settings"
    group_item_label: "Currency List"
  }
  dimension: document_settings__diverse_suppliers {
    type: yesno
    sql: ${TABLE}.documentSettings.diverseSuppliers ;;
    group_label: "Document Settings"
    group_item_label: "Diverse Suppliers"
  }
  dimension: document_settings__diverse_suppliers_comments {
    type: string
    sql: ${TABLE}.documentSettings.diverseSuppliersComments ;;
    group_label: "Document Settings"
    group_item_label: "Diverse Suppliers Comments"
  }
  dimension: document_settings__enable2_bid_envelope {
    type: yesno
    sql: ${TABLE}.documentSettings.enable2BidEnvelope ;;
    group_label: "Document Settings"
    group_item_label: "Enable2 Bid Envelope"
  }
  dimension: document_settings__enable_item_level_multicurrency {
    type: yesno
    sql: ${TABLE}.documentSettings.enableItemLevelMulticurrency ;;
    group_label: "Document Settings"
    group_item_label: "Enable Item Level Multicurrency"
  }
  dimension: document_settings__enable_participation_confirmation_timeline {
    type: yesno
    sql: ${TABLE}.documentSettings.enableParticipationConfirmationTimeline ;;
    group_label: "Document Settings"
    group_item_label: "Enable Participation Confirmation Timeline"
  }
  dimension: document_settings__enable_public_rfx {
    type: yesno
    sql: ${TABLE}.documentSettings.enablePublicRFx ;;
    group_label: "Document Settings"
    group_item_label: "Enable Public Rfx"
  }
  dimension: document_settings__enable_scorecard_change_notification {
    type: yesno
    sql: ${TABLE}.documentSettings.enableScorecardChangeNotification ;;
    group_label: "Document Settings"
    group_item_label: "Enable Scorecard Change Notification"
  }
  dimension: document_settings__event_part {
    type: yesno
    sql: ${TABLE}.documentSettings.eventPart ;;
    group_label: "Document Settings"
    group_item_label: "Event Part"
  }
  dimension: document_settings__hide_section_before_confirm_part {
    type: yesno
    sql: ${TABLE}.documentSettings.hideSectionBeforeConfirmPart ;;
    group_label: "Document Settings"
    group_item_label: "Hide Section Before Confirm Part"
  }
  dimension: document_settings__is_buyer_masked {
    type: yesno
    sql: ${TABLE}.documentSettings.isBuyerMasked ;;
    group_label: "Document Settings"
    group_item_label: "Is Buyer Masked"
  }
  dimension: document_settings__is_feedback_published {
    type: yesno
    sql: ${TABLE}.documentSettings.isFeedbackPublished ;;
    group_label: "Document Settings"
    group_item_label: "Is Feedback Published"
  }
  dimension: document_settings__is_supplier_masked {
    type: yesno
    sql: ${TABLE}.documentSettings.isSupplierMasked ;;
    group_label: "Document Settings"
    group_item_label: "Is Supplier Masked"
  }
  dimension: document_settings__link_price_sheets {
    type: yesno
    sql: ${TABLE}.documentSettings.linkPriceSheets ;;
    group_label: "Document Settings"
    group_item_label: "Link Price Sheets"
  }
  dimension: document_settings__mandatoryguideline {
    type: yesno
    sql: ${TABLE}.documentSettings.mandatoryguideline ;;
    group_label: "Document Settings"
    group_item_label: "Mandatoryguideline"
  }
  dimension: document_settings__max_score_range {
    type: number
    sql: ${TABLE}.documentSettings.maxScoreRange ;;
    group_label: "Document Settings"
    group_item_label: "Max Score Range"
  }
  dimension: document_settings__min_score_range {
    type: number
    sql: ${TABLE}.documentSettings.minScoreRange ;;
    group_label: "Document Settings"
    group_item_label: "Min Score Range"
  }
  dimension: document_settings__multicurrency {
    type: yesno
    sql: ${TABLE}.documentSettings.multicurrency ;;
    group_label: "Document Settings"
    group_item_label: "Multicurrency"
  }
  dimension: document_settings__price_scoring {
    type: yesno
    sql: ${TABLE}.documentSettings.priceScoring ;;
    group_label: "Document Settings"
    group_item_label: "Price Scoring"
  }
  dimension: document_settings__price_scoring_instructions {
    type: string
    sql: ${TABLE}.documentSettings.priceScoringInstructions ;;
    group_label: "Document Settings"
    group_item_label: "Price Scoring Instructions"
  }
  dimension: document_settings__pricesheet_weightage {
    type: string
    sql: ${TABLE}.documentSettings.pricesheetWeightage ;;
    group_label: "Document Settings"
    group_item_label: "Pricesheet Weightage"
  }
  dimension: document_settings__question000006e {
    type: yesno
    sql: ${TABLE}.documentSettings.question000006e ;;
    group_label: "Document Settings"
    group_item_label: "Question000006e"
  }
  dimension: document_settings__question000006e_instructions {
    type: string
    sql: ${TABLE}.documentSettings.question000006eInstructions ;;
    group_label: "Document Settings"
    group_item_label: "Question000006e Instructions"
  }
  dimension: document_settings__question000006e_weightage {
    type: string
    sql: ${TABLE}.documentSettings.question000006eWeightage ;;
    group_label: "Document Settings"
    group_item_label: "Question000006e Weightage"
  }
  dimension: document_settings__scoring_type {
    type: string
    sql: ${TABLE}.documentSettings.scoringType ;;
    group_label: "Document Settings"
    group_item_label: "Scoring Type"
  }
  dimension: document_settings__sealed {
    type: yesno
    sql: ${TABLE}.documentSettings.sealed ;;
    group_label: "Document Settings"
    group_item_label: "Sealed"
  }
  dimension: document_settings__skip_scoring {
    type: yesno
    sql: ${TABLE}.documentSettings.skipScoring ;;
    group_label: "Document Settings"
    group_item_label: "Skip Scoring"
  }
  dimension: document_settings__suppliers_upload_attachments {
    type: yesno
    sql: ${TABLE}.documentSettings.suppliersUploadAttachments ;;
    group_label: "Document Settings"
    group_item_label: "Suppliers Upload Attachments"
  }
  dimension: document_settings__team_member_supplier_responses {
    type: yesno
    sql: ${TABLE}.documentSettings.teamMemberSupplierResponses ;;
    group_label: "Document Settings"
    group_item_label: "Team Member Supplier Responses"
  }
  dimension: document_settings__training {
    type: yesno
    sql: ${TABLE}.documentSettings.training ;;
    group_label: "Document Settings"
    group_item_label: "Training"
  }
  dimension: document_stakeholders {
    hidden: yes
    sql: ${TABLE}.documentStakeholders ;;
  }
  dimension: document_status__name {
    type: string
    sql: ${TABLE}.documentStatus.name ;;
    group_label: "Document Status"
    group_item_label: "Name"
  }
  dimension: document_status__status_code {
    type: number
    sql: ${TABLE}.documentStatus.statusCode ;;
    group_label: "Document Status"
    group_item_label: "Status Code"
  }
  dimension: document_status__status_name {
    type: string
    sql: ${TABLE}.documentStatus.statusName ;;
    group_label: "Document Status"
    group_item_label: "Status Name"
  }
  dimension: document_timelines {
    hidden: yes
    sql: ${TABLE}.documentTimelines ;;
  }
  dimension: documents_document_id {
    type: string
    sql: ${TABLE}.documents_documentId ;;
  }
  dimension: guidelines {
    hidden: yes
    sql: ${TABLE}.guidelines ;;
  }
  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}.isDeleted ;;
  }
  dimension: is_published {
    type: yesno
    sql: ${TABLE}.isPublished ;;
  }
  dimension: is_silent_withdrawn {
    type: yesno
    sql: ${TABLE}.isSilentWithdrawn ;;
  }
  dimension: is_withdrawn {
    type: yesno
    sql: ${TABLE}.isWithdrawn ;;
  }
  dimension: life {
    type: string
    sql: ${TABLE}.life ;;
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
    sql: ${TABLE}.modifiedOn ;;
  }
  dimension: negotiation_timelines {
    hidden: yes
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
    hidden: yes
    sql: ${TABLE}.pricesheets ;;
  }
  dimension: question000006es {
    hidden: yes
    sql: ${TABLE}.question000006es ;;
  }
  dimension: rfx_source_type {
    type: number
    sql: ${TABLE}.rfxSourceType ;;
  }
  dimension: root_id {
    type: string
    sql: ${TABLE}.root_id ;;
  }
  dimension: rps_scan_details__is_scanned {
    type: yesno
    sql: ${TABLE}.rpsScanDetails.isScanned ;;
    group_label: "Rps Scan Details"
    group_item_label: "Is Scanned"
  }
  dimension: rps_scan_details__rps_file_id {
    type: string
    sql: ${TABLE}.rpsScanDetails.rpsFileId ;;
    group_label: "Rps Scan Details"
    group_item_label: "Rps File ID"
  }
  dimension: rps_scan_details__rps_file_name {
    type: string
    sql: ${TABLE}.rpsScanDetails.rpsFileName ;;
    group_label: "Rps Scan Details"
    group_item_label: "Rps File Name"
  }
  dimension: rps_scan_details__scan_supplier_count {
    type: number
    sql: ${TABLE}.rpsScanDetails.scanSupplierCount ;;
    group_label: "Rps Scan Details"
    group_item_label: "Scan Supplier Count"
  }
  dimension: suppliers {
    hidden: yes
    sql: ${TABLE}.suppliers ;;
  }
  dimension: surrogate_bid_access {
    hidden: yes
    sql: ${TABLE}.surrogateBidAccess ;;
  }
  dimension: team_member_lead_list {
    type: string
    sql: ${TABLE}.teamMemberLeadList ;;
  }
  dimension: team_member_quorum_list {
    hidden: yes
    sql: ${TABLE}.teamMemberQuorumList ;;
  }
  measure: count {
    type: count
    drill_fields: [document_status__name, document_status__status_name, rps_scan_details__rps_file_name]
  }
}

view: gep_gep_cdc_demo_documentrules__suppliers {

  dimension: client_supplier_code {
    type: string
    sql: clientSupplierCode ;;
  }
  dimension: contact_code {
    type: string
    sql: contactCode ;;
  }
  dimension: created_by {
    type: string
    #sql: createdBy ;;
    sql: gep_gep_cdc_demo_documentrules__suppliers.createdBy  ;;
  }
  dimension: created_on {
    type: string
    sql: gep_gep_cdc_demo_documentrules__suppliers.createdOn ;;
  }
  dimension: gep_gep_cdc_demo_documentrules__suppliers {
    type: string
    hidden: yes
    sql: gep_gep_cdc_demo_documentrules__suppliers ;;
  }
  dimension: guidelines_accepted_by {
    type: string
    sql: gep_gep_cdc_demo_documentrules__suppliers.guidelinesAcceptedBy ;;
  }
  dimension: guidelines_accepted_on {
    type: string
    sql: gep_gep_cdc_demo_documentrules__suppliers.guidelinesAcceptedOn ;;
  }
  dimension: is_award_acknowledged {
    type: yesno
    sql: gep_gep_cdc_demo_documentrules__suppliers.isAwardAcknowledged ;;
  }
  dimension: is_commercial_acceptable {
    type: yesno
    sql: gep_gep_cdc_demo_documentrules__suppliers.isCommercialAcceptable ;;
  }
  dimension: is_contract_terms_accepted {
    type: yesno
    sql: gep_gep_cdc_demo_documentrules__suppliers.isContractTermsAccepted ;;
  }
  dimension: is_feedback_revised {
    type: yesno
    sql: gep_gep_cdc_demo_documentrules__suppliers.isFeedbackRevised ;;
  }
  dimension: is_guidelines_accepted {
    type: yesno
    sql: gep_gep_cdc_demo_documentrules__suppliers.isGuidelinesAccepted ;;
  }
  dimension: is_invitation_declined {
    type: yesno
    sql: gep_gep_cdc_demo_documentrules__suppliers.isInvitationDeclined ;;
  }
  dimension: is_participation_confirmed {
    type: yesno
    sql: gep_gep_cdc_demo_documentrules__suppliers.isParticipationConfirmed ;;
  }
  dimension: is_permissible_check_required {
    type: yesno
    sql: gep_gep_cdc_demo_documentrules__suppliers.isPermissibleCheckRequired ;;
  }
  dimension: is_response_submitted {
    type: yesno
    sql: gep_gep_cdc_demo_documentrules__suppliers.isResponseSubmitted ;;
  }
  dimension: is_revised {
    type: yesno
    sql: gep_gep_cdc_demo_documentrules__suppliers.isRevised ;;
  }
  dimension: is_shortlisted {
    type: yesno
    sql: gep_gep_cdc_demo_documentrules__suppliers.isShortlisted ;;
  }
  dimension: is_shortlisted_for_feedback {
    type: yesno
    sql: gep_gep_cdc_demo_documentrules__suppliers.isShortlistedForFeedback ;;
  }
  dimension: is_shortlisted_for_two_env_bid {
    type: yesno
    sql: gep_gep_cdc_demo_documentrules__suppliers.isShortlistedForTwoEnvBid ;;
  }
  dimension: is_super_ecsl {
    type: yesno
    sql: gep_gep_cdc_demo_documentrules__suppliers.isSuperECSL ;;
  }
  dimension: is_technical_acceptable {
    type: yesno
    sql: gep_gep_cdc_demo_documentrules__suppliers.isTechnicalAcceptable ;;
  }
  dimension: legal_company_mask_name {
    type: string
    sql: gep_gep_cdc_demo_documentrules__suppliers.legalCompanyMaskName ;;
  }
  dimension: legal_company_name {
    type: string
    sql: gep_gep_cdc_demo_documentrules__suppliers.legalCompanyName ;;
  }
  dimension: modified_by {
    type: string
    sql: gep_gep_cdc_demo_documentrules__suppliers.modifiedBy ;;
  }
  dimension: modified_on {
    type: string
    sql: gep_gep_cdc_demo_documentrules__suppliers.modifiedOn ;;
  }
  dimension: partner_code {
    type: number
    sql: gep_gep_cdc_demo_documentrules__suppliers.partnerCode ;;
  }
  dimension: pricesheets_assignments {
    hidden: yes
    sql: pricesheetsAssignments ;;
  }
  dimension: shortlisted_for_feedback_on {
    type: string
    sql: gep_gep_cdc_demo_documentrules__suppliers.shortlistedForFeedbackOn ;;
  }
  dimension: source_type {
    type: number
    sql: gep_gep_cdc_demo_documentrules__suppliers.sourceType ;;
  }
  dimension: stakeholder_type {
    type: number
    sql: gep_gep_cdc_demo_documentrules__suppliers.stakeholderType ;;
  }
  dimension: status__name {
    type: string
    sql: ${TABLE}.status.name ;;
    group_label: "Status"
    group_item_label: "Name"
  }
  dimension: status__status_code {
    type: number
    sql: ${TABLE}.status.statusCode ;;
    group_label: "Status"
    group_item_label: "Status Code"
  }
  dimension: status__status_name {
    type: string
    sql: ${TABLE}.status.statusName ;;
    group_label: "Status"
    group_item_label: "Status Name"
  }
  dimension: status_updated_on {
    type: string
    sql: gep_gep_cdc_demo_documentrules__suppliers.statusUpdatedOn ;;
  }
  dimension: supplier_contacts {
    hidden: yes
    sql: supplierContacts ;;
  }
}

view: gep_gep_cdc_demo_documentrules__guidelines {

  dimension: gep_gep_cdc_demo_documentrules__guidelines {
    type: string
    sql: gep_gep_cdc_demo_documentrules__guidelines ;;
  }
}

view: gep_gep_cdc_demo_documentrules__pricesheets {

  dimension: gep_gep_cdc_demo_documentrules__pricesheets {
    type: string
    sql: gep_gep_cdc_demo_documentrules__pricesheets ;;
  }
}

view: gep_gep_cdc_demo_documentrules__contract_terms {

  dimension: gep_gep_cdc_demo_documentrules__contract_terms {
    type: string
    sql: gep_gep_cdc_demo_documentrules__contract_terms ;;
  }
}

view: gep_gep_cdc_demo_documentrules__question000006es {

  dimension: gep_gep_cdc_demo_documentrules__question000006es {
    type: string
    sql: gep_gep_cdc_demo_documentrules__question000006es ;;
  }
}

view: gep_gep_cdc_demo_documentrules__document_timelines {

  dimension: created_by {
    type: string
    sql: createdBy ;;
  }
  dimension: created_on {
    type: string
    sql: createdOn ;;
  }
  dimension: end_date_time {
    type: string
    sql: endDateTime ;;
  }
  dimension: gep_gep_cdc_demo_documentrules__document_timelines {
    type: string
    hidden: yes
    sql: gep_gep_cdc_demo_documentrules__document_timelines ;;
  }
  dimension: modified_by {
    type: string
    sql: modifiedBy ;;
  }
  dimension: modified_on {
    type: string
    sql: modifiedOn ;;
  }
  dimension: name {
    type: string
    sql: name ;;
  }
  dimension: start_date_time {
    type: string
    sql: startDateTime ;;
  }
  dimension: type_id {
    type: number
    sql: typeId ;;
  }
  dimension: visible_to_supplier {
    type: yesno
    sql: visibleToSupplier ;;
  }
}

view: gep_gep_cdc_demo_documentrules__surrogate_bid_access {

  dimension: gep_gep_cdc_demo_documentrules__surrogate_bid_access {
    label: "Surrogate Bid Access"
    type: string
    sql: gep_gep_cdc_demo_documentrules__surrogate_bid_access ;;
  }
}

view: gep_gep_cdc_demo_documentrules__team_member_quorum_list {

  dimension: gep_gep_cdc_demo_documentrules__team_member_quorum_list {
    label: "Team Member Quorum List"
    type: string
    sql: gep_gep_cdc_demo_documentrules__team_member_quorum_list ;;
  }
}

view: gep_gep_cdc_demo_documentrules__document_stakeholders {

  dimension: allow_supplier_contact {
    type: yesno
    sql: allowSupplierContact ;;
  }
  dimension: co_authoring_access {
    type: number
    sql: coAuthoringAccess ;;
  }
  dimension: co_authoring_assignments {
    hidden: yes
    sql: coAuthoringAssignments ;;
  }
  dimension: commercial000007luation_access {
    type: number
    sql: commercial000007luationAccess ;;
  }
  dimension: commercial000007luation_status {
    hidden: yes
    sql: commercial000007luationStatus ;;
  }
  dimension: contact_code {
    type: number
    sql: contactCode ;;
  }
  dimension: first_name {
    type: string
    sql: firstName ;;
  }
  dimension: gep_gep_cdc_demo_documentrules__document_stakeholders {
    type: string
    hidden: yes
    sql: gep_gep_cdc_demo_documentrules__document_stakeholders ;;
  }
  dimension: group_id {
    type: number
    sql: groupId ;;
  }
  dimension: group_name {
    type: string
    sql: groupName ;;
  }
  dimension: invitation_status {
    type: string
    sql: invitationStatus ;;
  }
  dimension: invited_by {
    type: number
    sql: invitedBy ;;
  }
  dimension: invited_on {
    type: string
    sql: invitedOn ;;
  }
  dimension: is_approver {
    type: yesno
    sql: isApprover ;;
  }
  dimension: last_name {
    type: string
    sql: lastName ;;
  }
  dimension: role {
    type: number
    sql: role ;;
  }
  dimension: stakeholder_type {
    type: number
    sql: stakeholderType ;;
  }
  dimension: technical000007luation_access {
    type: number
    sql: technical000007luationAccess ;;
  }
  dimension: technical000007luation_status {
    hidden: yes
    sql: technical000007luationStatus ;;
  }
  dimension: x000007luation_access {
    type: number
    sql: x000007luationAccess ;;
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
}

view: gep_gep_cdc_demo_documentrules__negotiation_timelines {

  dimension: negotiation_timelines {
    type: string
    sql: gep_gep_cdc_demo_documentrules__negotiation_timelines ;;
  }
}

view: gep_gep_cdc_demo_documentrules__contract_terms_confirmation {

  dimension: gep_gep_cdc_demo_documentrules__contract_terms_confirmation {
    type: string
    sql: gep_gep_cdc_demo_documentrules__contract_terms_confirmation ;;
  }
}

view: gep_gep_cdc_demo_documentrules__document_settings__currency_list {

  dimension: gep_gep_cdc_demo_documentrules__document_settings__currency_list {
    type: string
    sql: gep_gep_cdc_demo_documentrules__document_settings__currency_list ;;
  }
}

view: gep_gep_cdc_demo_documentrules__suppliers__supplier_contacts {

  dimension: contact_code {
    type: string
    sql: ${TABLE}.contactCode ;;
  }
  dimension: email_id {
    type: string
    sql: ${TABLE}.emailId ;;
  }
  dimension: invited_date {
    type: string
    sql: ${TABLE}.invitedDate ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension: role_id {
    type: number
    sql: ${TABLE}.roleId ;;
  }
  dimension: stakeholder_type {
    type: number
    sql: ${TABLE}.stakeholderType ;;
  }
}

view: gep_gep_cdc_demo_documentrules__suppliers__pricesheets_assignments {

  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
  }
  dimension: pricesheet_id {
    type: string
    sql: ${TABLE}.pricesheetId ;;
  }
}

view: gep_gep_cdc_demo_documentrules__document_stakeholders__co_authoring_assignments {

  dimension: gep_gep_cdc_demo_documentrules__document_stakeholders__co_authoring_assignments {
    type: string
    sql: gep_gep_cdc_demo_documentrules__document_stakeholders__co_authoring_assignments ;;
  }
}

view: gep_gep_cdc_demo_documentrules__document_stakeholders__x000007luation_assignments {

  dimension: gep_gep_cdc_demo_documentrules__document_stakeholders__x000007luation_assignments {
    type: string
    sql: gep_gep_cdc_demo_documentrules__document_stakeholders__x000007luation_assignments ;;
  }
}

view: gep_gep_cdc_demo_documentrules__document_stakeholders__technical000007luation_status {

  dimension: gep_gep_cdc_demo_documentrules__document_stakeholders__technical000007luation_status {
    type: string
    sql: gep_gep_cdc_demo_documentrules__document_stakeholders__technical000007luation_status ;;
  }
}

view: gep_gep_cdc_demo_documentrules__document_stakeholders__commercial000007luation_status {

  dimension: gep_gep_cdc_demo_documentrules__document_stakeholders__commercial000007luation_status {
    type: string
    sql: gep_gep_cdc_demo_documentrules__document_stakeholders__commercial000007luation_status ;;
  }
}

view: gep_gep_cdc_demo_documentrules__document_stakeholders__x000007luation_submitted_partner_codes__general_submitted_partner_codes {

  dimension: gep_gep_cdc_demo_documentrules__document_stakeholders__x000007luation_submitted_partner_codes__general_submitted_partner_codes {
    type: string
    sql: gep_gep_cdc_demo_documentrules__document_stakeholders__x000007luation_submitted_partner_codes__general_submitted_partner_codes ;;
  }
}

view: gep_gep_cdc_demo_documentrules__document_stakeholders__x000007luation_submitted_partner_codes__technical_submitted_partner_codes {

  dimension: gep_gep_cdc_demo_documentrules__document_stakeholders__x000007luation_submitted_partner_codes__technical_submitted_partner_codes {
    type: string
    sql: gep_gep_cdc_demo_documentrules__document_stakeholders__x000007luation_submitted_partner_codes__technical_submitted_partner_codes ;;
  }
}

view: gep_gep_cdc_demo_documentrules__document_stakeholders__x000007luation_submitted_partner_codes__commercial_submitted_partner_codes {

  dimension: gep_gep_cdc_demo_documentrules__document_stakeholders__x000007luation_submitted_partner_codes__commercial_submitted_partner_codes {
    type: string
    sql: gep_gep_cdc_demo_documentrules__document_stakeholders__x000007luation_submitted_partner_codes__commercial_submitted_partner_codes ;;
  }
}
