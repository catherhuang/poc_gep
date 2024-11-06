
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

view: +documentrules_1 {


}
