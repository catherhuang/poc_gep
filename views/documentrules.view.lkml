


view: documentrules {
  sql_table_name: `iamtests-315719.mbettan.airbyte_after` ;;
  
  
  dimension: _ab_cdc_cursor {   type: number
    sql: ${TABLE}._ab_cdc_cursor ;; }
  dimension: _ab_cdc_deleted_at {   type: string
    sql: ${TABLE}._ab_cdc_deleted_at ;; }
  dimension: _ab_cdc_updated_at {   type: string
    sql: ${TABLE}._ab_cdc_updated_at ;; }
  dimension: _airbyte_generation_id {   type: number
    sql: ${TABLE}._airbyte_generation_id ;; }
  dimension: _airbyte_meta {   type: string
    sql: ${TABLE}._airbyte_meta ;; }
  dimension: _airbyte_raw_id {   type: string
    sql: ${TABLE}._airbyte_raw_id ;; }
  dimension: _id {   type: string
    sql: ${TABLE}._id ;; }
  dimension: _schemaver {   type: number
    sql: ${TABLE}._schemaver ;; }
  dimension: allow_supplier_edit_commercial_columns {   type: string
    sql: ${TABLE}.allowSupplierEditCommercialColumns ;; }
  dimension: audit_fields {   type: string
    sql: ${TABLE}.auditFields ;; }
  dimension: bpc {   type: number
    sql: ${TABLE}.bpc ;; }
  dimension: contract_language_terms {   type: string
    sql: ${TABLE}.contractLanguageTerms ;; }
  dimension: contract_terms {   type: string
    sql: ${TABLE}.contractTerms ;; }
  dimension: contract_terms_confirmation {   type: string
    sql: ${TABLE}.contractTermsConfirmation ;; }
  dimension: contract_type_details {   type: string
    sql: ${TABLE}.contractTypeDetails ;; }
  dimension: created_by {   type: string
    sql: ${TABLE}.createdBy ;; }
  dimension: created_on {   type: string
    sql: ${TABLE}.createdOn ;; }
  dimension: document_id {   type: string
    sql: ${TABLE}.documentId ;; }
  dimension: document_link_info {   type: string
    sql: ${TABLE}.documentLinkInfo ;; }
  dimension: document_settings {   type: string
    sql: ${TABLE}.documentSettings ;; }
  dimension: document_stakeholders {   type: string
    sql: ${TABLE}.documentStakeholders ;; }
  dimension: document_status {   type: string
    sql: ${TABLE}.documentStatus ;; }
  dimension: document_timelines {   type: string
    sql: ${TABLE}.documentTimelines ;; }
  dimension: documents_document_id {   type: string
    sql: ${TABLE}.documents_documentId ;; }
  dimension: guidelines {   type: string
    sql: ${TABLE}.guidelines ;; }
  dimension: is_deleted {   type: string
    sql: ${TABLE}.isDeleted ;; }
  dimension: is_published {   type: string
    sql: ${TABLE}.isPublished ;; }
  dimension: is_silent_withdrawn {   type: string
    sql: ${TABLE}.isSilentWithdrawn ;; }
  dimension: is_withdrawn {   type: string
    sql: ${TABLE}.isWithdrawn ;; }
  dimension: location {   type: string
    sql: ${TABLE}.location ;; }
  dimension: modified_by {   type: string
    sql: ${TABLE}.modifiedBy ;; }
  dimension: modified_on {   type: string
    sql: ${TABLE}.modifiedOn ;; }
  dimension: negotiation_timelines {   type: string
    sql: ${TABLE}.negotiationTimelines ;; }
  dimension: parent_id {   type: string
    sql: ${TABLE}.parent_id ;; }
  dimension: price_change {   type: string
    sql: ${TABLE}.priceChange ;; }
  dimension: pricesheets {   type: string
    sql: ${TABLE}.pricesheets ;; }
  dimension: question000006es {   type: string
    sql: ${TABLE}.question000006es ;; }
  dimension: rfx_source_type {   type: number
    sql: ${TABLE}.rfxSourceType ;; }
  dimension: root_id {   type: string
    sql: ${TABLE}.root_id ;; }
  dimension: rps_scan_details {   type: string
    sql: ${TABLE}.rpsScanDetails ;; }
  dimension: shadow_supplier_access {   type: string
    sql: ${TABLE}.shadowSupplierAccess ;; }
  dimension: suppliers {   type: string
    sql: ${TABLE}.suppliers ;; }
  dimension: surrogate_bid_access {   type: string
    sql: ${TABLE}.surrogateBidAccess ;; }
  dimension: team_member_quorum_list {   type: string
    sql: ${TABLE}.teamMemberQuorumList ;; }
  dimension: tprm_rsa_id {   type: string
    sql: ${TABLE}.tprmRsaId ;; }
  dimension_group: _airbyte_extracted { 
    type: time
    timeframes: [ raw, time, date, week, month, quarter, year,] 
    sql: ${TABLE}._airbyte_extracted_at ;; }
  
  }


view: +documentrules {
  dimension: 000007luationAccess {   type: string
    sql: ${TABLE}.000007luationAccess ;; }
  dimension: 000007luationAssignments {   type: string
    sql: ${TABLE}.000007luationAssignments ;; }
  dimension: 000007luationSubmittedPartnerCodes {   type: string
    sql: ${TABLE}.000007luationSubmittedPartnerCodes ;; }
  dimension: 000009luationAccess {   type: string
    sql: ${TABLE}.000009luationAccess ;; }
  dimension: 000009luationAssignments {   type: string
    sql: ${TABLE}.000009luationAssignments ;; }
  dimension: 000009luationSubmittedPartnerCodes {   type: string
    sql: ${TABLE}.000009luationSubmittedPartnerCodes ;; }
  dimension: _id {   type: string
    sql: ${TABLE}._id ;; }
  dimension: _schemaver {   type: string
    sql: ${TABLE}._schemaver ;; }
  dimension: accessDFBeforeAcceptingGuideline {   type: string
    sql: ${TABLE}.accessDFBeforeAcceptingGuideline ;; }
  dimension: accessKey {   type: string
    sql: ${TABLE}.accessKey ;; }
  dimension: accessMode {   type: string
    sql: ${TABLE}.accessMode ;; }
  dimension: accessedBy {   type: string
    sql: ${TABLE}.accessedBy ;; }
  dimension: accessedOn {   type: string
    sql: ${TABLE}.accessedOn ;; }
  dimension: addedOn {   type: string
    sql: ${TABLE}.addedOn ;; }
  dimension: allowCommerciallyAcceptable {   type: string
    sql: ${TABLE}.allowCommerciallyAcceptable ;; }
  dimension: allowFeedbackResponseRevision {   type: string
    sql: ${TABLE}.allowFeedbackResponseRevision ;; }
  dimension: allowSupplierContact {   type: string
    sql: ${TABLE}.allowSupplierContact ;; }
  dimension: allowSupplierEditCommercialColumns {   type: string
    sql: ${TABLE}.allowSupplierEditCommercialColumns ;; }
  dimension: allowTechnicallyAcceptable {   type: string
    sql: ${TABLE}.allowTechnicallyAcceptable ;; }
  dimension: auditFields {   type: string
    sql: ${TABLE}.auditFields ;; }
  dimension: bpc {   type: string
    sql: ${TABLE}.bpc ;; }
  dimension: buyerVersion {   type: string
    sql: ${TABLE}.buyerVersion ;; }
  dimension: clientContactCode {   type: string
    sql: ${TABLE}.clientContactCode ;; }
  dimension: clientSupplierCode {   type: string
    sql: ${TABLE}.clientSupplierCode ;; }
  dimension: coAuthoringAccess {   type: string
    sql: ${TABLE}.coAuthoringAccess ;; }
  dimension: coAuthoringAssignments {   type: string
    sql: ${TABLE}.coAuthoringAssignments ;; }
  dimension: comments {   type: string
    sql: ${TABLE}.comments ;; }
  dimension: commercial000007luationAccess {   type: string
    sql: ${TABLE}.commercial000007luationAccess ;; }
  dimension: commercial000007luationStatus {   type: string
    sql: ${TABLE}.commercial000007luationStatus ;; }
  dimension: commercial000009luationAccess {   type: string
    sql: ${TABLE}.commercial000009luationAccess ;; }
  dimension: commercial000009luationStatus {   type: string
    sql: ${TABLE}.commercial000009luationStatus ;; }
  dimension: commercialSubmittedPartnerCodes {   type: string
    sql: ${TABLE}.commercialSubmittedPartnerCodes ;; }
  dimension: commerciallyAcceptablePercentage {   type: string
    sql: ${TABLE}.commerciallyAcceptablePercentage ;; }
  dimension: confidential {   type: string
    sql: ${TABLE}.confidential ;; }
  dimension: contactCode {   type: string
    sql: ${TABLE}.contactCode ;; }
  dimension: contractLanguageTerms {   type: string
    sql: ${TABLE}.contractLanguageTerms ;; }
  dimension: contractSubType {   type: string
    sql: ${TABLE}.contractSubType ;; }
  dimension: contractTerms {   type: string
    sql: ${TABLE}.contractTerms ;; }
  dimension: contractTermsConfirmation {   type: string
    sql: ${TABLE}.contractTermsConfirmation ;; }
  dimension: contractType {   type: string
    sql: ${TABLE}.contractType ;; }
  dimension: contractTypeDetails {   type: string
    sql: ${TABLE}.contractTypeDetails ;; }
  dimension: count {   type: string
    sql: ${TABLE}.count ;; }
  dimension: countMandatoryGuidelines {   type: string
    sql: ${TABLE}.countMandatoryGuidelines ;; }
  dimension: createdBy {   type: string
    sql: ${TABLE}.createdBy ;; }
  dimension: createdDateTime {   type: string
    sql: ${TABLE}.createdDateTime ;; }
  dimension: createdOn {   type: string
    sql: ${TABLE}.createdOn ;; }
  dimension: currency {   type: string
    sql: ${TABLE}.currency ;; }
  dimension: currencyCode {   type: string
    sql: ${TABLE}.currencyCode ;; }
  dimension: currencyList {   type: string
    sql: ${TABLE}.currencyList ;; }
  dimension: defaultLanguageTerms {   type: string
    sql: ${TABLE}.defaultLanguageTerms ;; }
  dimension: disableEventAwarding {   type: string
    sql: ${TABLE}.disableEventAwarding ;; }
  dimension: displayName {   type: string
    sql: ${TABLE}.displayName ;; }
  dimension: diverseSuppliers {   type: string
    sql: ${TABLE}.diverseSuppliers ;; }
  dimension: diverseSuppliersComments {   type: string
    sql: ${TABLE}.diverseSuppliersComments ;; }
  dimension: documentId {   type: string
    sql: ${TABLE}.documentId ;; }
  dimension: documentLinkInfo {   type: string
    sql: ${TABLE}.documentLinkInfo ;; }
  dimension: documentSettings {   type: string
    sql: ${TABLE}.documentSettings ;; }
  dimension: documentStakeholders {   type: string
    sql: ${TABLE}.documentStakeholders ;; }
  dimension: documentStatus {   type: string
    sql: ${TABLE}.documentStatus ;; }
  dimension: documentTimelines {   type: string
    sql: ${TABLE}.documentTimelines ;; }
  dimension: documents_documentId {   type: string
    sql: ${TABLE}.documents_documentId ;; }
  dimension: emailAddress {   type: string
    sql: ${TABLE}.emailAddress ;; }
  dimension: emailId {   type: string
    sql: ${TABLE}.emailId ;; }
  dimension: enable2BidEnvelope {   type: string
    sql: ${TABLE}.enable2BidEnvelope ;; }
  dimension: enableItemLevelMulticurrency {   type: string
    sql: ${TABLE}.enableItemLevelMulticurrency ;; }
  dimension: enableParticipationConfirmationTimeline {   type: string
    sql: ${TABLE}.enableParticipationConfirmationTimeline ;; }
  dimension: enablePublicRFx {   type: string
    sql: ${TABLE}.enablePublicRFx ;; }
  dimension: enableRowGroupingInPricesheet {   type: string
    sql: ${TABLE}.enableRowGroupingInPricesheet ;; }
  dimension: enableScorecardChangeNotification {   type: string
    sql: ${TABLE}.enableScorecardChangeNotification ;; }
  dimension: enableSurrogateBidOnDocument {   type: string
    sql: ${TABLE}.enableSurrogateBidOnDocument ;; }
  dimension: endDateTime {   type: string
    sql: ${TABLE}.endDateTime ;; }
  dimension: eventPart {   type: string
    sql: ${TABLE}.eventPart ;; }
  dimension: exchangeRate {   type: string
    sql: ${TABLE}.exchangeRate ;; }
  dimension: fileId {   type: string
    sql: ${TABLE}.fileId ;; }
  dimension: fileName {   type: string
    sql: ${TABLE}.fileName ;; }
  dimension: fileSize {   type: string
    sql: ${TABLE}.fileSize ;; }
  dimension: firstName {   type: string
    sql: ${TABLE}.firstName ;; }
  dimension: fullName {   type: string
    sql: ${TABLE}.fullName ;; }
  dimension: fullNameAndEmailId {   type: string
    sql: ${TABLE}.fullNameAndEmailId ;; }
  dimension: generalSubmittedPartnerCodes {   type: string
    sql: ${TABLE}.generalSubmittedPartnerCodes ;; }
  dimension: groupId {   type: string
    sql: ${TABLE}.groupId ;; }
  dimension: groupName {   type: string
    sql: ${TABLE}.groupName ;; }
  dimension: guidelines {   type: string
    sql: ${TABLE}.guidelines ;; }
  dimension: guidelinesAcceptedBy {   type: string
    sql: ${TABLE}.guidelinesAcceptedBy ;; }
  dimension: guidelinesAcceptedOn {   type: string
    sql: ${TABLE}.guidelinesAcceptedOn ;; }
  dimension: hideSectionBeforeConfirmPart {   type: string
    sql: ${TABLE}.hideSectionBeforeConfirmPart ;; }
  dimension: hierarchy {   type: string
    sql: ${TABLE}.hierarchy ;; }
  dimension: id {   type: string
    sql: ${TABLE}.id ;; }
  dimension: invitationStatus {   type: string
    sql: ${TABLE}.invitationStatus ;; }
  dimension: invitedBy {   type: string
    sql: ${TABLE}.invitedBy ;; }
  dimension: invitedDate {   type: string
    sql: ${TABLE}.invitedDate ;; }
  dimension: invitedOn {   type: string
    sql: ${TABLE}.invitedOn ;; }
  dimension: isApprover {   type: string
    sql: ${TABLE}.isApprover ;; }
  dimension: isAwardAcknowledged {   type: string
    sql: ${TABLE}.isAwardAcknowledged ;; }
  dimension: isBuyer {   type: string
    sql: ${TABLE}.isBuyer ;; }
  dimension: isBuyerMasked {   type: string
    sql: ${TABLE}.isBuyerMasked ;; }
  dimension: isCommercialAcceptable {   type: string
    sql: ${TABLE}.isCommercialAcceptable ;; }
  dimension: isContractTermsAccepted {   type: string
    sql: ${TABLE}.isContractTermsAccepted ;; }
  dimension: isDelegated {   type: string
    sql: ${TABLE}.isDelegated ;; }
  dimension: isDeleted {   type: string
    sql: ${TABLE}.isDeleted ;; }
  dimension: isExistingTeamMember {   type: string
    sql: ${TABLE}.isExistingTeamMember ;; }
  dimension: isFeedbackPublished {   type: string
    sql: ${TABLE}.isFeedbackPublished ;; }
  dimension: isFeedbackRevised {   type: string
    sql: ${TABLE}.isFeedbackRevised ;; }
  dimension: isGuidelinesAccepted {   type: string
    sql: ${TABLE}.isGuidelinesAccepted ;; }
  dimension: isInvitationDeclined {   type: string
    sql: ${TABLE}.isInvitationDeclined ;; }
  dimension: isLocked {   type: string
    sql: ${TABLE}.isLocked ;; }
  dimension: isParticipationConfirmed {   type: string
    sql: ${TABLE}.isParticipationConfirmed ;; }
  dimension: isPermissibleCheckRequired {   type: string
    sql: ${TABLE}.isPermissibleCheckRequired ;; }
  dimension: isPublished {   type: string
    sql: ${TABLE}.isPublished ;; }
  dimension: isRequestAssignee {   type: string
    sql: ${TABLE}.isRequestAssignee ;; }
  dimension: isRequestAssigneeDisabled {   type: string
    sql: ${TABLE}.isRequestAssigneeDisabled ;; }
  dimension: isRequestCoordinator {   type: string
    sql: ${TABLE}.isRequestCoordinator ;; }
  dimension: isRequestCoordinatorDisabled {   type: string
    sql: ${TABLE}.isRequestCoordinatorDisabled ;; }
  dimension: isRequestValidator {   type: string
    sql: ${TABLE}.isRequestValidator ;; }
  dimension: isRequestValidatorDisabled {   type: string
    sql: ${TABLE}.isRequestValidatorDisabled ;; }
  dimension: isRequestValidatorFromRule {   type: string
    sql: ${TABLE}.isRequestValidatorFromRule ;; }
  dimension: isResponseSubmitted {   type: string
    sql: ${TABLE}.isResponseSubmitted ;; }
  dimension: isRevised {   type: string
    sql: ${TABLE}.isRevised ;; }
  dimension: isRoleEditable {   type: string
    sql: ${TABLE}.isRoleEditable ;; }
  dimension: isScanned {   type: string
    sql: ${TABLE}.isScanned ;; }
  dimension: isSelectable {   type: string
    sql: ${TABLE}.isSelectable ;; }
  dimension: isSelected {   type: string
    sql: ${TABLE}.isSelected ;; }
  dimension: isShortlisted {   type: string
    sql: ${TABLE}.isShortlisted ;; }
  dimension: isShortlistedForFeedback {   type: string
    sql: ${TABLE}.isShortlistedForFeedback ;; }
  dimension: isShortlistedForTwoEnvBid {   type: string
    sql: ${TABLE}.isShortlistedForTwoEnvBid ;; }
  dimension: isSilentWithdrawn {   type: string
    sql: ${TABLE}.isSilentWithdrawn ;; }
  dimension: isSuperECSL {   type: string
    sql: ${TABLE}.isSuperECSL ;; }
  dimension: isSupplierMasked {   type: string
    sql: ${TABLE}.isSupplierMasked ;; }
  dimension: isTechnicalAcceptable {   type: string
    sql: ${TABLE}.isTechnicalAcceptable ;; }
  dimension: isTprmShortlisted {   type: string
    sql: ${TABLE}.isTprmShortlisted ;; }
  dimension: isViewer {   type: string
    sql: ${TABLE}.isViewer ;; }
  dimension: isWithdrawn {   type: string
    sql: ${TABLE}.isWithdrawn ;; }
  dimension: language {   type: string
    sql: ${TABLE}.language ;; }
  dimension: languageTemplateId {   type: string
    sql: ${TABLE}.languageTemplateId ;; }
  dimension: languageTemplateName {   type: string
    sql: ${TABLE}.languageTemplateName ;; }
  dimension: languageTemplateNumber {   type: string
    sql: ${TABLE}.languageTemplateNumber ;; }
  dimension: lastName {   type: string
    sql: ${TABLE}.lastName ;; }
  dimension: legalCompanyMaskName {   type: string
    sql: ${TABLE}.legalCompanyMaskName ;; }
  dimension: legalCompanyName {   type: string
    sql: ${TABLE}.legalCompanyName ;; }
  dimension: lineGroupAssignments {   type: string
    sql: ${TABLE}.lineGroupAssignments ;; }
  dimension: linkPriceSheets {   type: string
    sql: ${TABLE}.linkPriceSheets ;; }
  dimension: location {   type: string
    sql: ${TABLE}.location ;; }
  dimension: mandatoryguideline {   type: string
    sql: ${TABLE}.mandatoryguideline ;; }
  dimension: manuallyAdded {   type: string
    sql: ${TABLE}.manuallyAdded ;; }
  dimension: maxScoreRange {   type: string
    sql: ${TABLE}.maxScoreRange ;; }
  dimension: minScoreRange {   type: string
    sql: ${TABLE}.minScoreRange ;; }
  dimension: modifiedBy {   type: string
    sql: ${TABLE}.modifiedBy ;; }
  dimension: modifiedDateTime {   type: string
    sql: ${TABLE}.modifiedDateTime ;; }
  dimension: modifiedOn {   type: string
    sql: ${TABLE}.modifiedOn ;; }
  dimension: multicurrency {   type: string
    sql: ${TABLE}.multicurrency ;; }
  dimension: name {   type: string
    sql: ${TABLE}.name ;; }
  dimension: negotiationTimelines {   type: string
    sql: ${TABLE}.negotiationTimelines ;; }
  dimension: parent_id {   type: string
    sql: ${TABLE}.parent_id ;; }
  dimension: partnerCode {   type: string
    sql: ${TABLE}.partnerCode ;; }
  dimension: priceChange {   type: string
    sql: ${TABLE}.priceChange ;; }
  dimension: priceScoring {   type: string
    sql: ${TABLE}.priceScoring ;; }
  dimension: priceScoringInstructions {   type: string
    sql: ${TABLE}.priceScoringInstructions ;; }
  dimension: pricesheetId {   type: string
    sql: ${TABLE}.pricesheetId ;; }
  dimension: pricesheetWeightage {   type: string
    sql: ${TABLE}.pricesheetWeightage ;; }
  dimension: pricesheets {   type: string
    sql: ${TABLE}.pricesheets ;; }
  dimension: pricesheetsAssignments {   type: string
    sql: ${TABLE}.pricesheetsAssignments ;; }
  dimension: question000006e {   type: string
    sql: ${TABLE}.question000006e ;; }
  dimension: question000006eInstructions {   type: string
    sql: ${TABLE}.question000006eInstructions ;; }
  dimension: question000006eWeightage {   type: string
    sql: ${TABLE}.question000006eWeightage ;; }
  dimension: question000006es {   type: string
    sql: ${TABLE}.question000006es ;; }
  dimension: quoromCommercial000007luation {   type: string
    sql: ${TABLE}.quoromCommercial000007luation ;; }
  dimension: quoromTechnical000007luation {   type: string
    sql: ${TABLE}.quoromTechnical000007luation ;; }
  dimension: responseSubmittedOn {   type: string
    sql: ${TABLE}.responseSubmittedOn ;; }
  dimension: rfxRoundNumber {   type: string
    sql: ${TABLE}.rfxRoundNumber ;; }
  dimension: rfxSourceType {   type: string
    sql: ${TABLE}.rfxSourceType ;; }
  dimension: role {   type: string
    sql: ${TABLE}.role ;; }
  dimension: roleId {   type: string
    sql: ${TABLE}.roleId ;; }
  dimension: rootId {   type: string
    sql: ${TABLE}.rootId ;; }
  dimension: root_id {   type: string
    sql: ${TABLE}.root_id ;; }
  dimension: rpsFileId {   type: string
    sql: ${TABLE}.rpsFileId ;; }
  dimension: rpsFileName {   type: string
    sql: ${TABLE}.rpsFileName ;; }
  dimension: rpsScanDetails {   type: string
    sql: ${TABLE}.rpsScanDetails ;; }
  dimension: scanSupplierCount {   type: string
    sql: ${TABLE}.scanSupplierCount ;; }
  dimension: scoringType {   type: string
    sql: ${TABLE}.scoringType ;; }
  dimension: sealed {   type: string
    sql: ${TABLE}.sealed ;; }
  dimension: shadowSupplierAccess {   type: string
    sql: ${TABLE}.shadowSupplierAccess ;; }
  dimension: shortlistedForFeedbackOn {   type: string
    sql: ${TABLE}.shortlistedForFeedbackOn ;; }
  dimension: skipScoring {   type: string
    sql: ${TABLE}.skipScoring ;; }
  dimension: sourceId {   type: string
    sql: ${TABLE}.sourceId ;; }
  dimension: sourceType {   type: string
    sql: ${TABLE}.sourceType ;; }
  dimension: stakeholderType {   type: string
    sql: ${TABLE}.stakeholderType ;; }
  dimension: startDateTime {   type: string
    sql: ${TABLE}.startDateTime ;; }
  dimension: status {   type: string
    sql: ${TABLE}.status ;; }
  dimension: statusCode {   type: string
    sql: ${TABLE}.statusCode ;; }
  dimension: statusName {   type: string
    sql: ${TABLE}.statusName ;; }
  dimension: statusUpdatedOn {   type: string
    sql: ${TABLE}.statusUpdatedOn ;; }
  dimension: summarySheetModifiedOn {   type: string
    sql: ${TABLE}.summarySheetModifiedOn ;; }
  dimension: supplierContacts {   type: string
    sql: ${TABLE}.supplierContacts ;; }
  dimension: supplierDocumentStatus {   type: string
    sql: ${TABLE}.supplierDocumentStatus ;; }
  dimension: supplierLanguageTerms {   type: string
    sql: ${TABLE}.supplierLanguageTerms ;; }
  dimension: supplierLegalCompanyName {   type: string
    sql: ${TABLE}.supplierLegalCompanyName ;; }
  dimension: supplierVersion {   type: string
    sql: ${TABLE}.supplierVersion ;; }
  dimension: suppliers {   type: string
    sql: ${TABLE}.suppliers ;; }
  dimension: suppliersUploadAttachments {   type: string
    sql: ${TABLE}.suppliersUploadAttachments ;; }
  dimension: surrogateBidAccess {   type: string
    sql: ${TABLE}.surrogateBidAccess ;; }
  dimension: surrogateBy {   type: string
    sql: ${TABLE}.surrogateBy ;; }
  dimension: surrogateByName {   type: string
    sql: ${TABLE}.surrogateByName ;; }
  dimension: taskId {   type: string
    sql: ${TABLE}.taskId ;; }
  dimension: teamMemberLeadList {   type: string
    sql: ${TABLE}.teamMemberLeadList ;; }
  dimension: teamMemberQuormEnable {   type: string
    sql: ${TABLE}.teamMemberQuormEnable ;; }
  dimension: teamMemberQuorumList {   type: string
    sql: ${TABLE}.teamMemberQuorumList ;; }
  dimension: teamMemberQuorumType {   type: string
    sql: ${TABLE}.teamMemberQuorumType ;; }
  dimension: teamMemberSupplierResponses {   type: string
    sql: ${TABLE}.teamMemberSupplierResponses ;; }
  dimension: technical000007luationAccess {   type: string
    sql: ${TABLE}.technical000007luationAccess ;; }
  dimension: technical000007luationStatus {   type: string
    sql: ${TABLE}.technical000007luationStatus ;; }
  dimension: technical000009luationAccess {   type: string
    sql: ${TABLE}.technical000009luationAccess ;; }
  dimension: technical000009luationStatus {   type: string
    sql: ${TABLE}.technical000009luationStatus ;; }
  dimension: technicalSubmittedPartnerCodes {   type: string
    sql: ${TABLE}.technicalSubmittedPartnerCodes ;; }
  dimension: technicallyAcceptablePercentage {   type: string
    sql: ${TABLE}.technicallyAcceptablePercentage ;; }
  dimension: tprmRsaId {   type: string
    sql: ${TABLE}.tprmRsaId ;; }
  dimension: training {   type: string
    sql: ${TABLE}.training ;; }
  dimension: transactionScopeId {   type: string
    sql: ${TABLE}.transactionScopeId ;; }
  dimension: typeId {   type: string
    sql: ${TABLE}.typeId ;; }
  dimension: userId {   type: string
    sql: ${TABLE}.userId ;; }
  dimension: ver {   type: string
    sql: ${TABLE}.ver ;; }
  dimension: version {   type: string
    sql: ${TABLE}.version ;; }
  dimension: visibleToSupplier {   type: string
    sql: ${TABLE}.visibleToSupplier ;; }
  
  
  }
