include: "documentrules_1.view"


view: new_fields_demo {
  dimension: addedOn {   type: string
    sql: JSON_EXTRACT_SCALAR(new_fields_demo, '$.addedOn') ;; }
  dimension: clientContactCode {   type: string
    sql: JSON_EXTRACT_SCALAR(new_fields_demo, '$.clientContactCode') ;; }
  dimension: contactCode {   type: string
    sql: JSON_EXTRACT_SCALAR(new_fields_demo, '$.contactCode') ;; }
  dimension: emailAddress {   type: string
    sql: JSON_EXTRACT_SCALAR(new_fields_demo, '$.emailAddress') ;; }
  dimension: firstName {   type: string
    sql: JSON_EXTRACT_SCALAR(new_fields_demo, '$.firstName') ;; }
  dimension: fullName {   type: string
    sql: JSON_EXTRACT_SCALAR(new_fields_demo, '$.fullName') ;; }
  dimension: fullNameAndEmailId {   type: string
    sql: JSON_EXTRACT_SCALAR(new_fields_demo, '$.fullNameAndEmailId') ;; }
  dimension: geptest {   type: string
    sql: JSON_EXTRACT_SCALAR(new_fields_demo, '$.geptest') ;; }
  dimension: isApprover {   type: string
    sql: JSON_EXTRACT_SCALAR(new_fields_demo, '$.isApprover') ;; }
  dimension: isDelegated {   type: string
    sql: JSON_EXTRACT_SCALAR(new_fields_demo, '$.isDelegated') ;; }
  dimension: isExistingTeamMember {   type: string
    sql: JSON_EXTRACT_SCALAR(new_fields_demo, '$.isExistingTeamMember') ;; }
  dimension: isRequestAssignee {   type: string
    sql: JSON_EXTRACT_SCALAR(new_fields_demo, '$.isRequestAssignee') ;; }
  dimension: isRequestAssigneeDisabled {   type: string
    sql: JSON_EXTRACT_SCALAR(new_fields_demo, '$.isRequestAssigneeDisabled') ;; }
  dimension: isRequestCoordinator {   type: string
    sql: JSON_EXTRACT_SCALAR(new_fields_demo, '$.isRequestCoordinator') ;; }
  dimension: isRequestCoordinatorDisabled {   type: string
    sql: JSON_EXTRACT_SCALAR(new_fields_demo, '$.isRequestCoordinatorDisabled') ;; }
  dimension: isRequestValidator {   type: string
    sql: JSON_EXTRACT_SCALAR(new_fields_demo, '$.isRequestValidator') ;; }
  dimension: isRequestValidatorDisabled {   type: string
    sql: JSON_EXTRACT_SCALAR(new_fields_demo, '$.isRequestValidatorDisabled') ;; }
  dimension: isRequestValidatorFromRule {   type: string
    sql: JSON_EXTRACT_SCALAR(new_fields_demo, '$.isRequestValidatorFromRule') ;; }
  dimension: isRoleEditable {   type: string
    sql: JSON_EXTRACT_SCALAR(new_fields_demo, '$.isRoleEditable') ;; }
  dimension: isSelectable {   type: string
    sql: JSON_EXTRACT_SCALAR(new_fields_demo, '$.isSelectable') ;; }
  dimension: isViewer {   type: string
    sql: JSON_EXTRACT_SCALAR(new_fields_demo, '$.isViewer') ;; }
  dimension: lastName {   type: string
    sql: JSON_EXTRACT_SCALAR(new_fields_demo, '$.lastName') ;; }
  dimension: manuallyAdded {   type: string
    sql: JSON_EXTRACT_SCALAR(new_fields_demo, '$.manuallyAdded') ;; }
  dimension: role {   type: string
    sql: JSON_EXTRACT_SCALAR(new_fields_demo, '$.role') ;; }
  dimension: userId {   type: string
    sql: JSON_EXTRACT_SCALAR(new_fields_demo, '$.userId') ;; }
  
  
  }


view: +documentrules_1 {
  dimension: teamMemberLeadList2 {   type: string
    sql: ${TABLE}.teamMemberLeadList2 ;; }
  
  
  }
