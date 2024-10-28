# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view
# explore: flattened_documentrules {
#   hidden: yes
#     join: flattened_documentrules__suppliers {
#       view_label: "Flattened Documentrules: Suppliers"
#       sql: LEFT JOIN UNNEST(${flattened_documentrules.suppliers}) as flattened_documentrules__suppliers ;;
#       relationship: one_to_many
#     }
# }
view: flattened_documentrules {
  sql_table_name: `iamtests-315719.mongodb_gep.flattened_documentrules` ;;

  dimension_group: _dbt_processed {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}._dbt_processed_at ;;
  }
  dimension: _id {
    type: string
    sql: ${TABLE}._id ;;
  }
  dimension: _source_json {
    type: string
    sql: ${TABLE}._source_json ;;
  }
  dimension: contract_terms_json {
    type: string
    sql: ${TABLE}.contractTerms_json ;;
  }
  dimension: created_by {
    type: string
    sql: ${TABLE}.created_by ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_on ;;
  }
  dimension: document_link_info__hierarchy {
    type: string
    sql: ${TABLE}.document_link_info.hierarchy ;;
    group_label: "Document Link Info"
    group_item_label: "Hierarchy"
  }
  dimension: document_link_info__raw_json {
    type: string
    sql: ${TABLE}.document_link_info.raw_json ;;
    group_label: "Document Link Info"
    group_item_label: "Raw JSON"
  }
  dimension: document_link_info__rfx_round_number {
    type: number
    sql: ${TABLE}.document_link_info.rfx_round_number ;;
    group_label: "Document Link Info"
    group_item_label: "Rfx Round Number"
  }
  dimension: document_link_info__root_id {
    type: string
    sql: ${TABLE}.document_link_info.root_id ;;
    group_label: "Document Link Info"
    group_item_label: "Root ID"
  }
  dimension: document_link_info__source_id {
    type: string
    sql: ${TABLE}.document_link_info.source_id ;;
    group_label: "Document Link Info"
    group_item_label: "Source ID"
  }
  dimension: document_status__name {
    type: string
    sql: ${TABLE}.document_status.name ;;
    group_label: "Document Status"
    group_item_label: "Name"
  }
  dimension: document_status__raw_json {
    type: string
    sql: ${TABLE}.document_status.raw_json ;;
    group_label: "Document Status"
    group_item_label: "Raw JSON"
  }
  dimension: document_status__status_code {
    type: number
    sql: ${TABLE}.document_status.status_code ;;
    group_label: "Document Status"
    group_item_label: "Status Code"
  }
  dimension: document_status__status_name {
    type: string
    sql: ${TABLE}.document_status.status_name ;;
    group_label: "Document Status"
    group_item_label: "Status Name"
  }
  dimension: guidelines_json {
    type: string
    sql: ${TABLE}.guidelines_json ;;
  }
  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}.is_deleted ;;
  }
  dimension: is_published {
    type: yesno
    sql: ${TABLE}.is_published ;;
  }
  dimension: is_silent_withdrawn {
    type: yesno
    sql: ${TABLE}.is_silent_withdrawn ;;
  }
  dimension: is_withdrawn {
    type: yesno
    sql: ${TABLE}.is_withdrawn ;;
  }
  dimension: pricesheets_json {
    type: string
    sql: ${TABLE}.pricesheets_json ;;
  }
  dimension: questionnaires_json {
    type: string
    sql: ${TABLE}.questionnaires_json ;;
  }
  dimension: rps_scan_details__is_scanned {
    type: yesno
    sql: ${TABLE}.rps_scan_details.is_scanned ;;
    group_label: "Rps Scan Details"
    group_item_label: "Is Scanned"
  }
  dimension: rps_scan_details__raw_json {
    type: string
    sql: ${TABLE}.rps_scan_details.raw_json ;;
    group_label: "Rps Scan Details"
    group_item_label: "Raw JSON"
  }
  dimension: rps_scan_details__rps_file_id {
    type: string
    sql: ${TABLE}.rps_scan_details.rps_file_id ;;
    group_label: "Rps Scan Details"
    group_item_label: "Rps File ID"
  }
  dimension: rps_scan_details__rps_file_name {
    type: string
    sql: ${TABLE}.rps_scan_details.rps_file_name ;;
    group_label: "Rps Scan Details"
    group_item_label: "Rps File Name"
  }
  dimension: rps_scan_details__scan_supplier_count {
    type: number
    sql: ${TABLE}.rps_scan_details.scan_supplier_count ;;
    group_label: "Rps Scan Details"
    group_item_label: "Scan Supplier Count"
  }
  dimension: suppliers {
    hidden: yes
    sql: ${TABLE}.suppliers ;;
  }
  measure: count {
    type: count
    drill_fields: [document_status__name, document_status__status_name, rps_scan_details__rps_file_name]
  }
}

view: flattened_documentrules__suppliers {
  drill_fields: [supplier_id]

  dimension: supplier_id {
    primary_key: yes
    type: string
    sql: supplier_id ;;
  }
  dimension: flattened_documentrules__suppliers {
    type: string
    hidden: yes
    sql: flattened_documentrules__suppliers ;;
  }
  dimension: is_active {
    type: yesno
    sql: is_active ;;
  }
  dimension: raw_json {
    type: string
    sql: raw_json ;;
  }
  dimension: supplier_name {
    type: string
    sql: supplier_name ;;
  }
}
