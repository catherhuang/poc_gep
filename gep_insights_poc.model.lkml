connection: "gep_mongodb_connection"
include: "/views/*.view.lkml"

# explore: documentrules_7 {
#   fields: [ALL_FIELDS*, -documentrules_7.team_member_lead_list2]}

explore: documentrules_1 {
  label: "Documentrules Demo"
  cancel_grouping_fields: [documentrules_1.guidelines
        ,documentrules_1.question000006es
        ,documentrules_1.pricesheets
        , documentrules_1.created_on
        , documentrules_1.modified_on]

  join: suppliers {
    view_label: "Suppliers"
    sql: LEFT JOIN UNNEST(json_query_array(${documentrules_1.suppliers})) as suppliers ;;
    relationship: one_to_many
  }

  join: audit_fields {
    view_label: "Audit Fields"
    sql: LEFT JOIN UNNEST(JSON_EXTRACT_ARRAY(${documentrules_1.audit_fields})) as audit_fields ;;
    relationship: one_to_many
  }

  join: document_status {
    view_label: "Document Status"
    sql: LEFT JOIN UNNEST(JSON_EXTRACT_ARRAY(${documentrules_1.document_status})) as document_status ;;
    relationship: one_to_many
  }

  join: rps_scan_details {
    view_label: "RPS Scan Details"
    sql: LEFT JOIN UNNEST(JSON_EXTRACT_ARRAY(${documentrules_1.rps_scan_details})) as rps_scan_details  ;;
    relationship: one_to_many
  }

  join: document_link_info {
    view_label: "Document Link Info"
    sql: LEFT JOIN UNNEST(JSON_EXTRACT_ARRAY(${documentrules_1.document_link_info})) as document_link_info  ;;
    relationship: one_to_many
  }
  join: document_timeline {
    view_label: "Document Timeline"
    sql: LEFT JOIN UNNEST(JSON_EXTRACT_ARRAY(${documentrules_1.document_timelines})) as document_timeline  ;;
    relationship: one_to_many
  }
  join: document_stakeholders {
    view_label: "Document Stakeholders"
    sql: LEFT JOIN UNNEST(JSON_EXTRACT_ARRAY(${documentrules_1.document_stakeholders})) as document_stakeholders  ;;
    relationship: one_to_many
  }
  # join: new_fields_demo {
  #   view_label: "New Field Demo"
  #   sql: LEFT JOIN UNNEST(JSON_EXTRACT_ARRAY(${documentrules_1.teamMemberLeadList2_hidden})) as new_fields_demo ;;
  #   relationship: one_to_many
  # }
}
