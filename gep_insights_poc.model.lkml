connection: "gep_mongodb_connection"
include: "/views/*.view.lkml"

 explore: flattened_documentrules {
  hidden: yes
  join: flattened_documentrules__suppliers {
    view_label: "Flattened Documentrules: Suppliers"
    sql: LEFT JOIN UNNEST(${flattened_documentrules.suppliers}) as flattened_documentrules__suppliers ;;
    relationship: one_to_many } }


 explore: documentrules {

   }


view: flattened_documentrules {
  sql_table_name: `iamtests-315719.mongodb_gep.flattened_documentrules` ;;


  # dimension: _dbt_processed_at {   type: string
  #   sql: ${TABLE}._dbt_processed_at ;; }
  # dimension: _id {   type: string
  #   sql: ${TABLE}._id ;; }
  # dimension: _source_json {   type: string
  #   sql: ${TABLE}._source_json ;; }
  # dimension: contractTerms_json {   type: string
  #   sql: ${TABLE}.contractTerms_json ;; }
  # dimension: created_by {   type: string
  #   sql: ${TABLE}.created_by ;; }
  # dimension: created_on {   type: string
  #   sql: ${TABLE}.created_on ;; }
  # dimension: document_link_info {   type: string
  #   sql: ${TABLE}.document_link_info ;; }
  # dimension: document_link_info.hierarchy {   type: string
  #   sql: ${TABLE}.document_link_info.hierarchy ;; }
  # dimension: document_link_info.raw_json {   type: string
  #   sql: ${TABLE}.document_link_info.raw_json ;; }
  # dimension: document_link_info.rfx_round_number {   type: string
  #   sql: ${TABLE}.document_link_info.rfx_round_number ;; }
  # dimension: document_link_info.root_id {   type: string
  #   sql: ${TABLE}.document_link_info.root_id ;; }
  # dimension: document_link_info.source_id {   type: string
  #   sql: ${TABLE}.document_link_info.source_id ;; }
  # dimension: document_status {   type: string
  #   sql: ${TABLE}.document_status ;; }
  # dimension: document_status.name {   type: string
  #   sql: ${TABLE}.document_status.name ;; }
  # dimension: document_status.raw_json {   type: string
  #   sql: ${TABLE}.document_status.raw_json ;; }
  # dimension: document_status.status_code {   type: string
  #   sql: ${TABLE}.document_status.status_code ;; }
  # dimension: document_status.status_name {   type: string
  #   sql: ${TABLE}.document_status.status_name ;; }
  # dimension: guidelines_json {   type: string
  #   sql: ${TABLE}.guidelines_json ;; }
  # dimension: is_deleted {   type: string
  #   sql: ${TABLE}.is_deleted ;; }
  # dimension: is_published {   type: string
  #   sql: ${TABLE}.is_published ;; }
  # dimension: is_silent_withdrawn {   type: string
  #   sql: ${TABLE}.is_silent_withdrawn ;; }
  # dimension: is_withdrawn {   type: string
  #   sql: ${TABLE}.is_withdrawn ;; }
  # dimension: pricesheets_json {   type: string
  #   sql: ${TABLE}.pricesheets_json ;; }
  # dimension: questionnaires_json {   type: string
  #   sql: ${TABLE}.questionnaires_json ;; }
  # dimension: rps_scan_details {   type: string
  #   sql: ${TABLE}.rps_scan_details ;; }
  # dimension: rps_scan_details.is_scanned {   type: string
  #   sql: ${TABLE}.rps_scan_details.is_scanned ;; }
  # dimension: rps_scan_details.raw_json {   type: string
  #   sql: ${TABLE}.rps_scan_details.raw_json ;; }
  # dimension: rps_scan_details.rps_file_id {   type: string
  #   sql: ${TABLE}.rps_scan_details.rps_file_id ;; }
  # dimension: rps_scan_details.rps_file_name {   type: string
  #   sql: ${TABLE}.rps_scan_details.rps_file_name ;; }
  # dimension: rps_scan_details.scan_supplier_count {   type: string
  #   sql: ${TABLE}.rps_scan_details.scan_supplier_count ;; }
  dimension: suppliers {   type: string
    sql: ${TABLE}.suppliers ;; }
  # dimension: suppliers.is_active {   type: string
  #   sql: ${TABLE}.suppliers.is_active ;; }
  # dimension: suppliers.raw_json {   type: string
  #   sql: ${TABLE}.suppliers.raw_json ;; }
  # dimension: suppliers.supplier_id {   type: string
  #   sql: ${TABLE}.suppliers.supplier_id ;; }
  # dimension: suppliers.supplier_name {   type: string
  #   sql: ${TABLE}.suppliers.supplier_name ;; }


  }


view: flattened_documentrules__suppliers {
  }
