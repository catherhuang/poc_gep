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
  
  
  dimension: _dbt_processed_at { 
    type: TIMESTAMP
    description: "_dbt_processed_at"
    sql: ${TABLE}._dbt_processed_at ;; }
  dimension: _id { 
    type: STRING
    description: "_id"
    sql: ${TABLE}._id ;; }
  dimension: _source_json { 
    type: STRING
    description: "_source_json"
    sql: ${TABLE}._source_json ;; }
  dimension: contractTerms_json { 
    type: JSON
    description: "contractTerms_json"
    sql: ${TABLE}.contractTerms_json ;; }
  dimension: created_by { 
    type: STRING
    description: "created_by"
    sql: ${TABLE}.created_by ;; }
  dimension: created_on { 
    type: TIMESTAMP
    description: "created_on"
    sql: ${TABLE}.created_on ;; }
  dimension: document_link_info { 
    type: STRING
    description: "document_link_info"
    sql: ${TABLE}.document_link_info ;; }
  dimension: document_link_info.hierarchy { 
    type: STRING
    description: "document_link_info.hierarchy"
    sql: ${TABLE}.document_link_info.hierarchy ;; }
  dimension: document_link_info.raw_json { 
    type: STRING
    description: "document_link_info.raw_json"
    sql: ${TABLE}.document_link_info.raw_json ;; }
  dimension: document_link_info.rfx_round_number { 
    type: STRING
    description: "document_link_info.rfx_round_number"
    sql: ${TABLE}.document_link_info.rfx_round_number ;; }
  dimension: document_link_info.root_id { 
    type: STRING
    description: "document_link_info.root_id"
    sql: ${TABLE}.document_link_info.root_id ;; }
  dimension: document_link_info.source_id { 
    type: STRING
    description: "document_link_info.source_id"
    sql: ${TABLE}.document_link_info.source_id ;; }
  dimension: document_status { 
    type: STRING
    description: "document_status"
    sql: ${TABLE}.document_status ;; }
  dimension: document_status.name { 
    type: STRING
    description: "document_status.name"
    sql: ${TABLE}.document_status.name ;; }
  dimension: document_status.raw_json { 
    type: STRING
    description: "document_status.raw_json"
    sql: ${TABLE}.document_status.raw_json ;; }
  dimension: document_status.status_code { 
    type: STRING
    description: "document_status.status_code"
    sql: ${TABLE}.document_status.status_code ;; }
  dimension: document_status.status_name { 
    type: STRING
    description: "document_status.status_name"
    sql: ${TABLE}.document_status.status_name ;; }
  dimension: guidelines_json { 
    type: JSON
    description: "guidelines_json"
    sql: ${TABLE}.guidelines_json ;; }
  dimension: is_deleted { 
    type: BOOL
    description: "is_deleted"
    sql: ${TABLE}.is_deleted ;; }
  dimension: is_published { 
    type: BOOL
    description: "is_published"
    sql: ${TABLE}.is_published ;; }
  dimension: is_silent_withdrawn { 
    type: BOOL
    description: "is_silent_withdrawn"
    sql: ${TABLE}.is_silent_withdrawn ;; }
  dimension: is_withdrawn { 
    type: BOOL
    description: "is_withdrawn"
    sql: ${TABLE}.is_withdrawn ;; }
  dimension: pricesheets_json { 
    type: JSON
    description: "pricesheets_json"
    sql: ${TABLE}.pricesheets_json ;; }
  dimension: questionnaires_json { 
    type: JSON
    description: "questionnaires_json"
    sql: ${TABLE}.questionnaires_json ;; }
  dimension: rps_scan_details { 
    type: STRING
    description: "rps_scan_details"
    sql: ${TABLE}.rps_scan_details ;; }
  dimension: rps_scan_details.is_scanned { 
    type: STRING
    description: "rps_scan_details.is_scanned"
    sql: ${TABLE}.rps_scan_details.is_scanned ;; }
  dimension: rps_scan_details.raw_json { 
    type: STRING
    description: "rps_scan_details.raw_json"
    sql: ${TABLE}.rps_scan_details.raw_json ;; }
  dimension: rps_scan_details.rps_file_id { 
    type: STRING
    description: "rps_scan_details.rps_file_id"
    sql: ${TABLE}.rps_scan_details.rps_file_id ;; }
  dimension: rps_scan_details.rps_file_name { 
    type: STRING
    description: "rps_scan_details.rps_file_name"
    sql: ${TABLE}.rps_scan_details.rps_file_name ;; }
  dimension: rps_scan_details.scan_supplier_count { 
    type: STRING
    description: "rps_scan_details.scan_supplier_count"
    sql: ${TABLE}.rps_scan_details.scan_supplier_count ;; }
  dimension: suppliers { 
    type: STRING
    description: "suppliers"
    sql: ${TABLE}.suppliers ;; }
  dimension: suppliers.is_active { 
    type: STRING
    description: "suppliers.is_active"
    sql: ${TABLE}.suppliers.is_active ;; }
  dimension: suppliers.raw_json { 
    type: STRING
    description: "suppliers.raw_json"
    sql: ${TABLE}.suppliers.raw_json ;; }
  dimension: suppliers.supplier_id { 
    type: STRING
    description: "suppliers.supplier_id"
    sql: ${TABLE}.suppliers.supplier_id ;; }
  dimension: suppliers.supplier_name { 
    type: STRING
    description: "suppliers.supplier_name"
    sql: ${TABLE}.suppliers.supplier_name ;; }
  
  
  }


view: flattened_documentrules__suppliers {
  }
