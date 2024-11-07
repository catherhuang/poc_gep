view: documentrules_1 {
  sql_table_name: `iamtests-315719.mongodb_gep_airbyte.documentrules_1` ;;

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
  dimension: document_id {
    type: string
    sql: ${TABLE}.documentId ;;
  }
  dimension: document_link_info {
    type: string
    sql: ${TABLE}.documentLinkInfo ;;
  }
  dimension: document_settings {
    type: string
    sql: ${TABLE}.documentSettings ;;
  }
  dimension: document_stakeholders {
    type: string
    sql: ${TABLE}.documentStakeholders ;;
  }
  dimension: document_status {
    type: string
    sql: ${TABLE}.documentStatus ;;
  }
  dimension: document_timelines {
    type: string
    sql: ${TABLE}.documentTimelines ;;
  }
  dimension: documents_document_id {
    type: string
    sql: ${TABLE}.documents_documentId ;;
  }
  dimension: guidelines {
    type: string
    sql: ${TABLE}.guidelines ;;
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
    sql: ${TABLE}.modifiedOn ;;
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
    sql: ${TABLE}.pricesheets ;;
  }
  dimension: question000006es {
    type: string
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
    sql: clientSupplierCode ;;
  }
  dimension: contact_code {
    type: string
    sql: contactCode ;;
  }
  dimension: created_by {
    type: string
    #sql: createdBy ;;
    sql: suppliers.createdBy  ;;
  }
  dimension: created_on {
    type: string
    sql: suppliers.createdOn ;;
  }
  dimension: suppliers {
    type: string
    hidden: yes
    sql: suppliers ;;
  }
  dimension: guidelines_accepted_by {
    type: string
    sql: suppliers.guidelinesAcceptedBy ;;
  }
  dimension: guidelines_accepted_on {
    type: string
    sql: suppliers.guidelinesAcceptedOn ;;
  }
  dimension: is_award_acknowledged {
    type: yesno
    sql: suppliers.isAwardAcknowledged ;;
  }
  dimension: is_commercial_acceptable {
    type: yesno
    sql: suppliers.isCommercialAcceptable ;;
  }
  dimension: is_contract_terms_accepted {
    type: yesno
    sql: suppliers.isContractTermsAccepted ;;
  }
  dimension: is_feedback_revised {
    type: yesno
    sql: suppliers.isFeedbackRevised ;;
  }
  dimension: is_guidelines_accepted {
    type: yesno
    sql: suppliers.isGuidelinesAccepted ;;
  }
  dimension: is_invitation_declined {
    type: yesno
    sql: suppliers.isInvitationDeclined ;;
  }
  dimension: is_participation_confirmed {
    type: yesno
    sql: suppliers.isParticipationConfirmed ;;
  }
  dimension: is_permissible_check_required {
    type: yesno
    sql: suppliers.isPermissibleCheckRequired ;;
  }
  dimension: is_response_submitted {
    type: yesno
    sql: suppliers.isResponseSubmitted ;;
  }
  dimension: is_revised {
    type: yesno
    sql: suppliers.isRevised ;;
  }
  dimension: is_shortlisted {
    type: yesno
    sql: suppliers.isShortlisted ;;
  }
  dimension: is_shortlisted_for_feedback {
    type: yesno
    sql: suppliers.isShortlistedForFeedback ;;
  }
  dimension: is_shortlisted_for_two_env_bid {
    type: yesno
    sql: suppliers.isShortlistedForTwoEnvBid ;;
  }
  dimension: is_super_ecsl {
    type: yesno
    sql: suppliers.isSuperECSL ;;
  }
  dimension: is_technical_acceptable {
    type: yesno
    sql: suppliers.isTechnicalAcceptable ;;
  }
  dimension: legal_company_mask_name {
    type: string
    sql: suppliers.legalCompanyMaskName ;;
  }
  dimension: legal_company_name {
    type: string
    sql: suppliers.legalCompanyName ;;
  }
  dimension: modified_by {
    type: string
    sql: suppliers.modifiedBy ;;
  }
  dimension: modified_on {
    type: string
    sql: suppliers.modifiedOn ;;
  }
  dimension: partner_code {
    type: number
    sql: suppliers.partnerCode ;;
  }
  dimension: pricesheets_assignments {
    hidden: yes
    sql: pricesheetsAssignments ;;
  }
  dimension: shortlisted_for_feedback_on {
    type: string
    sql: suppliers.shortlistedForFeedbackOn ;;
  }
  dimension: source_type {
    type: number
    sql: suppliers.sourceType ;;
  }
  dimension: stakeholder_type {
    type: number
    sql: suppliers.stakeholderType ;;
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
    sql: suppliers.statusUpdatedOn ;;
  }
  dimension: supplier_contacts {
    hidden: yes
    sql: supplierContacts ;;
  }
}
