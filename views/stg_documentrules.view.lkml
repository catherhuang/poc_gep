# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view
explore: stg_documentrules {
  hidden: yes
    join: stg_documentrules__suppliers {
      view_label: "Stg Documentrules: Suppliers"
      sql: LEFT JOIN UNNEST(${stg_documentrules.suppliers}) as stg_documentrules__suppliers ;;
      relationship: one_to_many
    }
    join: stg_documentrules__guidelines {
      view_label: "Stg Documentrules: Guidelines"
      sql: LEFT JOIN UNNEST(${stg_documentrules.guidelines}) as stg_documentrules__guidelines ;;
      relationship: one_to_many
    }
    join: stg_documentrules__pricesheets {
      view_label: "Stg Documentrules: Pricesheets"
      sql: LEFT JOIN UNNEST(${stg_documentrules.pricesheets}) as stg_documentrules__pricesheets ;;
      relationship: one_to_many
    }
    join: stg_documentrules__contract_terms {
      view_label: "Stg Documentrules: Contract Terms"
      sql: LEFT JOIN UNNEST(${stg_documentrules.contract_terms}) as stg_documentrules__contract_terms ;;
      relationship: one_to_many
    }
    join: stg_documentrules__questionnaires {
      view_label: "Stg Documentrules: Questionnaires"
      sql: LEFT JOIN UNNEST(${stg_documentrules.questionnaires}) as stg_documentrules__questionnaires ;;
      relationship: one_to_many
    }
    join: stg_documentrules__document_timelines {
      view_label: "Stg Documentrules: Document Timelines"
      sql: LEFT JOIN UNNEST(${stg_documentrules.document_timelines}) as stg_documentrules__document_timelines ;;
      relationship: one_to_many
    }
    join: stg_documentrules__document_stakeholders {
      view_label: "Stg Documentrules: Document Stakeholders"
      sql: LEFT JOIN UNNEST(${stg_documentrules.document_stakeholders}) as stg_documentrules__document_stakeholders ;;
      relationship: one_to_many
    }
    join: stg_documentrules__suppliers__supplier_contacts {
      view_label: "Stg Documentrules: Suppliers Supplier Contacts"
      sql: LEFT JOIN UNNEST(${stg_documentrules__suppliers.supplier_contacts}) as stg_documentrules__suppliers__supplier_contacts ;;
      relationship: one_to_many
    }
}
view: stg_documentrules {
  sql_table_name: `iamtests-315719.mongodb_gep.stg_documentrules` ;;

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
  dimension: contract_terms {
    hidden: yes
    sql: ${TABLE}.contract_terms ;;
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
  dimension: document_id {
    type: string
    sql: ${TABLE}.document_id ;;
  }
  dimension: document_settings__access_df_before_accepting_guideline {
    type: yesno
    sql: ${TABLE}.document_settings.access_df_before_accepting_guideline ;;
    group_label: "Document Settings"
    group_item_label: "Access Df Before Accepting Guideline"
  }
  dimension: document_settings__allow_feedback_response_revision {
    type: yesno
    sql: ${TABLE}.document_settings.allow_feedback_response_revision ;;
    group_label: "Document Settings"
    group_item_label: "Allow Feedback Response Revision"
  }
  dimension: document_settings__confidential {
    type: yesno
    sql: ${TABLE}.document_settings.confidential ;;
    group_label: "Document Settings"
    group_item_label: "Confidential"
  }
  dimension: document_settings__diverse_suppliers {
    type: yesno
    sql: ${TABLE}.document_settings.diverse_suppliers ;;
    group_label: "Document Settings"
    group_item_label: "Diverse Suppliers"
  }
  dimension: document_settings__diverse_suppliers_comments {
    type: string
    sql: ${TABLE}.document_settings.diverse_suppliers_comments ;;
    group_label: "Document Settings"
    group_item_label: "Diverse Suppliers Comments"
  }
  dimension: document_settings__pricesheet_weightage {
    type: number
    sql: ${TABLE}.document_settings.pricesheet_weightage ;;
    group_label: "Document Settings"
    group_item_label: "Pricesheet Weightage"
  }
  dimension: document_settings__questionnaire_weightage {
    type: number
    sql: ${TABLE}.document_settings.questionnaire_weightage ;;
    group_label: "Document Settings"
    group_item_label: "Questionnaire Weightage"
  }
  dimension: document_settings__raw_json {
    type: string
    sql: ${TABLE}.document_settings.raw_json ;;
    group_label: "Document Settings"
    group_item_label: "Raw JSON"
  }
  dimension: document_stakeholders {
    hidden: yes
    sql: ${TABLE}.document_stakeholders ;;
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
  dimension: document_timelines {
    hidden: yes
    sql: ${TABLE}.document_timelines ;;
  }
  dimension: guidelines {
    hidden: yes
    sql: ${TABLE}.guidelines ;;
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
  dimension: modified_by {
    type: string
    sql: ${TABLE}.modified_by ;;
  }
  dimension_group: modified {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.modified_on ;;
  }
  dimension: parent_id {
    type: string
    sql: ${TABLE}.parent_id ;;
  }
  dimension: pricesheets {
    hidden: yes
    sql: ${TABLE}.pricesheets ;;
  }
  dimension: questionnaires {
    hidden: yes
    sql: ${TABLE}.questionnaires ;;
  }
  dimension: rfx_source_type {
    type: number
    sql: ${TABLE}.rfx_source_type ;;
  }
  dimension: root_id {
    type: string
    sql: ${TABLE}.root_id ;;
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
  dimension: source_hash {
    type: string
    sql: ${TABLE}.source_hash ;;
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

view: stg_documentrules__suppliers {

  dimension: is_guidelines_accepted {
    type: yesno
    sql: is_guidelines_accepted ;;
  }
  dimension: is_response_submitted {
    type: yesno
    sql: is_response_submitted ;;
  }
  dimension: legal_company_name {
    type: string
    sql: legal_company_name ;;
  }
  dimension: partner_code {
    type: number
    sql: partner_code ;;
  }
  dimension: raw_json {
    description:"model in the json section below"
    hidden: no
    type: string
    sql: raw_json ;;
  }

  dimension: status__name {
    type: string
    sql: ${TABLE}.status.name ;;
    group_label: "Status"
    group_item_label: "Name"
  }
  dimension: status__status_code {
    type: number
    sql: ${TABLE}.status.status_code ;;
    group_label: "Status"
    group_item_label: "Status Code"
  }
  dimension: status__status_name {
    type: string
    sql: ${TABLE}.status.status_name ;;
    group_label: "Status"
    group_item_label: "Status Name"
  }
  dimension: stg_documentrules__suppliers {
    type: string
    hidden: yes
    sql: stg_documentrules__suppliers ;;
  }
  dimension: supplier_contacts {
    hidden: yes
    sql: supplier_contacts ;;
  }
  ################################################# JSON #################################################
  dimension: client_supplier_code {
    label: "Client Supplier Code"
    sql: JSON_VALUE(${TABLE}.raw_json, '$.clientSupplierCode') ;;
  }
  dimension: pricesheets_assignments {
    label: "Pricesheets Assignments"
    sql: JSON_QUERY(${TABLE}.raw_json, '$.pricesheetsAssignments') ;;
  }
}

view: stg_documentrules__guidelines {

  dimension: stg_documentrules__guidelines {
    type: string
    sql: stg_documentrules__guidelines ;;
  }
}

view: stg_documentrules__pricesheets {

  dimension: stg_documentrules__pricesheets {
    type: string
    sql: stg_documentrules__pricesheets ;;
  }
}

view: stg_documentrules__contract_terms {

  dimension: stg_documentrules__contract_terms {
    type: string
    sql: stg_documentrules__contract_terms ;;
  }
}

view: stg_documentrules__questionnaires {

  dimension: stg_documentrules__questionnaires {
    type: string
    sql: stg_documentrules__questionnaires ;;
  }
}

view: stg_documentrules__document_timelines {

  dimension_group: end_date {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: end_date_time ;;
  }
  dimension: name {
    type: string
    sql: name ;;
  }
  dimension: raw_json {
    type: string
    sql: raw_json ;;
  }
  dimension_group: start_date {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: start_date_time ;;
  }
  dimension: stg_documentrules__document_timelines {
    type: string
    hidden: yes
    sql: stg_documentrules__document_timelines ;;
  }
  dimension: type_id {
    type: number
    sql: type_id ;;
  }
  dimension: visible_to_supplier {
    type: yesno
    sql: visible_to_supplier ;;
  }
}

view: stg_documentrules__document_stakeholders {

  dimension: contact_code {
    type: number
    sql: contact_code ;;
  }
  dimension: first_name {
    type: string
    sql: first_name ;;
  }
  dimension: invitation_status {
    type: string
    sql: invitation_status ;;
  }
  dimension: is_approver {
    type: yesno
    sql: is_approver ;;
  }
  dimension: last_name {
    type: string
    sql: last_name ;;
  }
  dimension: raw_json {
    type: string
    sql: raw_json ;;
  }
  dimension: role {
    type: number
    sql: role ;;
  }
  dimension: stg_documentrules__document_stakeholders {
    type: string
    hidden: yes
    sql: stg_documentrules__document_stakeholders ;;
  }
}

view: stg_documentrules__suppliers__supplier_contacts {

  dimension: contact_code {
    type: string
    sql: ${TABLE}.contact_code ;;
  }
  dimension: email_id {
    type: string
    sql: ${TABLE}.email_id ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension: role_id {
    type: number
    sql: ${TABLE}.role_id ;;
  }
}
