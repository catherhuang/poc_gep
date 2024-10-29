# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view

view: documentrules_flattened_dbt {
  sql_table_name: `iamtests-315719.mongodb_gep.documentrules_flattened_dbt` ;;

  dimension: _id {
    type: string
    sql: ${TABLE}._id ;;
  }
  dimension: _schemaver {
    type: string
    sql: ${TABLE}._schemaver ;;
  }
  dimension: audit_fields_created_by {
    type: string
    sql: ${TABLE}.auditFields_createdBy ;;
  }
  dimension: audit_fields_created_date_time {
    type: string
    sql: ${TABLE}.auditFields_createdDateTime ;;
  }
  dimension: audit_fields_modified_by {
    type: string
    sql: ${TABLE}.auditFields_modifiedBy ;;
  }
  dimension: audit_fields_modified_date_time {
    type: string
    sql: ${TABLE}.auditFields_modifiedDateTime ;;
  }
  dimension: audit_fields_transaction_scope_id {
    type: string
    sql: ${TABLE}.auditFields_transactionScopeId ;;
  }
  dimension: bpc {
    type: string
    sql: ${TABLE}.bpc ;;
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
  dimension: document_status {
    type: string
    sql: ${TABLE}.documentStatus ;;
  }
  dimension: document_timelines {
    hidden: yes
    sql: ${TABLE}.documentTimelines ;;
  }
  dimension: documents_document_id {
    type: string
    sql: ${TABLE}.documents_documentId ;;
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
  dimension: parent_id {
    type: string
    sql: ${TABLE}.parent_id ;;
  }
  dimension: rfx_source_type {
    type: string
    sql: ${TABLE}.rfxSourceType ;;
  }
  dimension: root_id {
    type: string
    sql: ${TABLE}.root_id ;;
  }
  dimension: rps_scan_details_is_scanned {
    type: string
    sql: ${TABLE}.rpsScanDetails_isScanned ;;
  }
  dimension: rps_scan_details_rps_file_id {
    type: string
    sql: ${TABLE}.rpsScanDetails_rpsFileId ;;
  }
  dimension: rps_scan_details_rps_file_name {
    type: string
    sql: ${TABLE}.rpsScanDetails_rpsFileName ;;
  }
  dimension: rps_scan_details_scan_supplier_count {
    type: string
    sql: ${TABLE}.rpsScanDetails_scanSupplierCount ;;
  }
  measure: count {
    type: count
    drill_fields: [rps_scan_details_rps_file_name]
  }
}

view: documentrules_flattened_dbt__document_timelines {

  dimension: created_by {
    type: string
    sql: createdBy ;;
  }
  dimension: created_on {
    type: string
    sql: createdOn ;;
  }
  dimension: documentrules_flattened_dbt__document_timelines {
    type: string
    hidden: yes
    sql: documentrules_flattened_dbt__document_timelines ;;
  }
  dimension: end_date_time {
    type: string
    sql: endDateTime ;;
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
    type: string
    sql: typeId ;;
  }
  dimension: visible_to_supplier {
    type: string
    sql: visibleToSupplier ;;
  }
}
