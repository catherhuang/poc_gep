explore: flattened_documentrules {
  hidden: yes
  join: flattened_documentrules__suppliers {
    view_label: "Flattened Documentrules: Suppliers"
    sql: LEFT JOIN UNNEST(${flattened_documentrules.suppliers}) as flattened_documentrules__suppliers ;;
    relationship: one_to_many } }


view: flattened_documentrules {
  sql_table_name: `iamtests-315719.mongodb_gep.flattened_documentrules` ;;


  dimension: _dbt_processed_at {
    type: date
    description: "_dbt_processed_at"
    sql: ${TABLE}._dbt_processed_at ;; }
  dimension: _id {
    type: string
    description: "_id"
    sql: ${TABLE}._id ;; }
  dimension: _source_json {
    type: string
    description: "_source_json"
    sql: ${TABLE}._source_json ;; }
  dimension: contractTerms_json {
    type: string
    description: "contractTerms_json"
    sql: ${TABLE}.contractTerms_json ;; }
  dimension: created_by {
    type: string
    description: "created_by"
    sql: ${TABLE}.created_by ;; }
  dimension: created_on {
    type: date
    description: "created_on"
    sql: ${TABLE}.created_on ;; }
  dimension: document_link_info {
    type: string
    description: "document_link_info"
    sql: ${TABLE}.document_link_info ;; }
  dimension: document_link_info.hierarchy {
    type: string
    description: "document_link_info.hierarchy"
    sql: ${TABLE}.document_link_info.hierarchy ;; }
  dimension: document_link_info.raw_json {
    type: string
    description: "document_link_info.raw_json"
    sql: ${TABLE}.document_link_info.raw_json ;; }
  dimension: document_link_info.rfx_round_number {
    type: string
    description: "document_link_info.rfx_round_number"
    sql: ${TABLE}.document_link_info.rfx_round_number ;; }
  dimension: document_link_info.root_id {
    type: string
    description: "document_link_info.root_id"
    sql: ${TABLE}.document_link_info.root_id ;; }
  dimension: document_link_info.source_id {
    type: string
    description: "document_link_info.source_id"
    sql: ${TABLE}.document_link_info.source_id ;; }
  dimension: document_status {
    type: string
    description: "document_status"
    sql: ${TABLE}.document_status ;; }
  dimension: document_status.name {
    type: string
    description: "document_status.name"
    sql: ${TABLE}.document_status.name ;; }
  dimension: document_status.raw_json {
    type: string
    description: "document_status.raw_json"
    sql: ${TABLE}.document_status.raw_json ;; }
  dimension: document_status.status_code {
    type: string
    description: "document_status.status_code"
    sql: ${TABLE}.document_status.status_code ;; }
  dimension: document_status.status_name {
    type: string
    description: "document_status.status_name"
    sql: ${TABLE}.document_status.status_name ;; }
  dimension: guidelines_json {
    type: string
    description: "guidelines_json"
    sql: ${TABLE}.guidelines_json ;; }
  dimension: is_deleted {
    type: yesno
    description: "is_deleted"
    sql: ${TABLE}.is_deleted ;; }
  dimension: is_published {
    type: yesno
    description: "is_published"
    sql: ${TABLE}.is_published ;; }
  dimension: is_silent_withdrawn {
    type: yesno
    description: "is_silent_withdrawn"
    sql: ${TABLE}.is_silent_withdrawn ;; }
  dimension: is_withdrawn {
    type: yesno
    description: "is_withdrawn"
    sql: ${TABLE}.is_withdrawn ;; }
  dimension: pricesheets_json {
    type: string
    description: "pricesheets_json"
    sql: ${TABLE}.pricesheets_json ;; }
  dimension: questionnaires_json {
    type: string
    description: "questionnaires_json"
    sql: ${TABLE}.questionnaires_json ;; }
  dimension: rps_scan_details {
    type: string
    description: "rps_scan_details"
    sql: ${TABLE}.rps_scan_details ;; }
  dimension: rps_scan_details.is_scanned {
    type: string
    description: "rps_scan_details.is_scanned"
    sql: ${TABLE}.rps_scan_details.is_scanned ;; }
  dimension: rps_scan_details.raw_json {
    type: string
    description: "rps_scan_details.raw_json"
    sql: ${TABLE}.rps_scan_details.raw_json ;; }
  dimension: rps_scan_details.rps_file_id {
    type: string
    description: "rps_scan_details.rps_file_id"
    sql: ${TABLE}.rps_scan_details.rps_file_id ;; }
  dimension: rps_scan_details.rps_file_name {
    type: string
    description: "rps_scan_details.rps_file_name"
    sql: ${TABLE}.rps_scan_details.rps_file_name ;; }
  dimension: rps_scan_details.scan_supplier_count {
    type: string
    description: "rps_scan_details.scan_supplier_count"
    sql: ${TABLE}.rps_scan_details.scan_supplier_count ;; }
  dimension: suppliers {
    type: string
    description: "suppliers"
    sql: ${TABLE}.suppliers ;; }
  dimension: suppliers.is_active {
    type: string
    description: "suppliers.is_active"
    sql: ${TABLE}.suppliers.is_active ;; }
  dimension: suppliers.raw_json {
    type: string
    description: "suppliers.raw_json"
    sql: ${TABLE}.suppliers.raw_json ;; }
  dimension: suppliers.supplier_id {
    type: string
    description: "suppliers.supplier_id"
    sql: ${TABLE}.suppliers.supplier_id ;; }
  dimension: suppliers.supplier_name {
    type: string
    description: "suppliers.supplier_name"
    sql: ${TABLE}.suppliers.supplier_name ;; }


}


view: flattened_documentrules__suppliers {
}
