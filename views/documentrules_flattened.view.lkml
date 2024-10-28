# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view
explore: documentrules_flattened {
  hidden: yes
    join: documentrules_flattened__suppliers {
      view_label: "Documentrules Flattened: Suppliers"
      sql: LEFT JOIN UNNEST(${documentrules_flattened.suppliers}) as documentrules_flattened__suppliers ;;
      relationship: one_to_many
    }
    join: documentrules_flattened__guidelines {
      view_label: "Documentrules Flattened: Guidelines"
      sql: LEFT JOIN UNNEST(${documentrules_flattened.guidelines}) as documentrules_flattened__guidelines ;;
      relationship: one_to_many
    }
    join: documentrules_flattened__pricesheets {
      view_label: "Documentrules Flattened: Pricesheets"
      sql: LEFT JOIN UNNEST(${documentrules_flattened.pricesheets}) as documentrules_flattened__pricesheets ;;
      relationship: one_to_many
    }
    join: documentrules_flattened__contract_terms {
      view_label: "Documentrules Flattened: Contractterms"
      sql: LEFT JOIN UNNEST(${documentrules_flattened.contract_terms}) as documentrules_flattened__contract_terms ;;
      relationship: one_to_many
    }
    join: documentrules_flattened__questionnaires {
      view_label: "Documentrules Flattened: Questionnaires"
      sql: LEFT JOIN UNNEST(${documentrules_flattened.questionnaires}) as documentrules_flattened__questionnaires ;;
      relationship: one_to_many
    }
    join: documentrules_flattened__document_timelines {
      view_label: "Documentrules Flattened: Documenttimelines"
      sql: LEFT JOIN UNNEST(${documentrules_flattened.document_timelines}) as documentrules_flattened__document_timelines ;;
      relationship: one_to_many
    }
    join: documentrules_flattened__team_member_quorum_list {
      view_label: "Documentrules Flattened: Teammemberquorumlist"
      sql: LEFT JOIN UNNEST(${documentrules_flattened.team_member_quorum_list}) as documentrules_flattened__team_member_quorum_list ;;
      relationship: one_to_many
    }
    join: documentrules_flattened__document_stakeholders {
      view_label: "Documentrules Flattened: Documentstakeholders"
      sql: LEFT JOIN UNNEST(${documentrules_flattened.document_stakeholders}) as documentrules_flattened__document_stakeholders ;;
      relationship: one_to_many
    }
    join: documentrules_flattened__negotiation_timelines {
      view_label: "Documentrules Flattened: Negotiationtimelines"
      sql: LEFT JOIN UNNEST(${documentrules_flattened.negotiation_timelines}) as documentrules_flattened__negotiation_timelines ;;
      relationship: one_to_many
    }
    join: documentrules_flattened__contract_terms_confirmation {
      view_label: "Documentrules Flattened: Contracttermsconfirmation"
      sql: LEFT JOIN UNNEST(${documentrules_flattened.contract_terms_confirmation}) as documentrules_flattened__contract_terms_confirmation ;;
      relationship: one_to_many
    }
}
view: documentrules_flattened {
  sql_table_name: `iamtests-315719.mongodb_gep.documentrules_flattened` ;;

  dimension: _id {
    type: string
    sql: ${TABLE}._id ;;
  }
  dimension: _schemaver {
    type: number
    sql: ${TABLE}._schemaver ;;
  }
  dimension: audit_fields__created_by {
    type: string
    sql: ${TABLE}.auditFields.createdBy ;;
    group_label: "Audit Fields"
    group_item_label: "Created By"
  }
  dimension_group: audit_fields__created_date {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.auditFields.createdDateTime ;;
  }
  dimension: audit_fields__modified_by {
    type: string
    sql: ${TABLE}.auditFields.modifiedBy ;;
    group_label: "Audit Fields"
    group_item_label: "Modified By"
  }
  dimension_group: audit_fields__modified_date {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.auditFields.modifiedDateTime ;;
  }
  dimension: audit_fields__transaction_scope_id {
    type: string
    sql: ${TABLE}.auditFields.transactionScopeId ;;
    group_label: "Audit Fields"
    group_item_label: "Transaction Scope ID"
  }
  dimension: bpc {
    type: number
    sql: ${TABLE}.bpc ;;
  }
  dimension: contract_terms {
    hidden: yes
    sql: ${TABLE}.contractTerms ;;
  }
  dimension: contract_terms_confirmation {
    hidden: yes
    sql: ${TABLE}.contractTermsConfirmation ;;
  }
  dimension: created_by {
    type: string
    sql: ${TABLE}.createdBy ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.createdOn ;;
  }
  dimension: document_id {
    type: string
    sql: ${TABLE}.documentId ;;
  }
  dimension: document_link_info__hierarchy {
    type: string
    sql: ${TABLE}.documentLinkInfo.hierarchy ;;
    group_label: "Document Link Info"
    group_item_label: "Hierarchy"
  }
  dimension: document_link_info__rfx_round_number {
    type: number
    sql: ${TABLE}.documentLinkInfo.rfxRoundNumber ;;
    group_label: "Document Link Info"
    group_item_label: "Rfx Round Number"
  }
  dimension: document_link_info__root_id {
    type: string
    sql: ${TABLE}.documentLinkInfo.rootId ;;
    group_label: "Document Link Info"
    group_item_label: "Root ID"
  }
  dimension: document_link_info__source_id {
    type: string
    sql: ${TABLE}.documentLinkInfo.sourceId ;;
    group_label: "Document Link Info"
    group_item_label: "Source ID"
  }
  dimension: document_settings {
    type: string
    sql: ${TABLE}.documentSettings ;;
  }
  dimension: document_stakeholders {
    hidden: yes
    sql: ${TABLE}.documentStakeholders ;;
  }
  dimension: document_status__name {
    type: string
    sql: ${TABLE}.documentStatus.name ;;
    group_label: "Document Status"
    group_item_label: "Name"
  }
  dimension: document_status__status_code {
    type: number
    sql: ${TABLE}.documentStatus.statusCode ;;
    group_label: "Document Status"
    group_item_label: "Status Code"
  }
  dimension: document_status__status_name {
    type: string
    sql: ${TABLE}.documentStatus.statusName ;;
    group_label: "Document Status"
    group_item_label: "Status Name"
  }
  dimension: document_timelines {
    hidden: yes
    sql: ${TABLE}.documentTimelines ;;
  }
  dimension: documents_document_id {
    type: string
    sql: ${TABLE}.documents_documentId ;;
  }
  dimension: guidelines {
    hidden: yes
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
  dimension_group: modified {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.modifiedOn ;;
  }
  dimension: negotiation_timelines {
    hidden: yes
    sql: ${TABLE}.negotiationTimelines ;;
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
    sql: ${TABLE}.rfxSourceType ;;
  }
  dimension: root_id {
    type: string
    sql: ${TABLE}.root_id ;;
  }
  dimension: rps_scan_details__is_scanned {
    type: string
    sql: ${TABLE}.rpsScanDetails.isScanned ;;
    group_label: "Rps Scan Details"
    group_item_label: "Is Scanned"
  }
  dimension: rps_scan_details__rps_file_id {
    type: string
    sql: ${TABLE}.rpsScanDetails.rpsFileId ;;
    group_label: "Rps Scan Details"
    group_item_label: "Rps File ID"
  }
  dimension: rps_scan_details__rps_file_name {
    type: string
    sql: ${TABLE}.rpsScanDetails.rpsFileName ;;
    group_label: "Rps Scan Details"
    group_item_label: "Rps File Name"
  }
  dimension: rps_scan_details__scan_supplier_count {
    type: number
    sql: ${TABLE}.rpsScanDetails.scanSupplierCount ;;
    group_label: "Rps Scan Details"
    group_item_label: "Scan Supplier Count"
  }
  dimension: suppliers {
    hidden: yes
    sql: ${TABLE}.suppliers ;;
  }
  dimension: team_member_quorum_list {
    hidden: yes
    sql: ${TABLE}.teamMemberQuorumList ;;
  }
  measure: count {
    type: count
    drill_fields: [document_status__name, document_status__status_name, rps_scan_details__rps_file_name]
  }
}

view: documentrules_flattened__suppliers {

  dimension: documentrules_flattened__suppliers {
    type: string
    sql: documentrules_flattened__suppliers ;;
  }
}

view: documentrules_flattened__guidelines {

  dimension: documentrules_flattened__guidelines {
    type: string
    sql: documentrules_flattened__guidelines ;;
  }
}

view: documentrules_flattened__pricesheets {

  dimension: documentrules_flattened__pricesheets {
    type: string
    sql: documentrules_flattened__pricesheets ;;
  }
}

view: documentrules_flattened__contract_terms {

  dimension: documentrules_flattened__contract_terms {
    type: string
    sql: documentrules_flattened__contract_terms ;;
  }
}

view: documentrules_flattened__questionnaires {

  dimension: documentrules_flattened__questionnaires {
    type: string
    sql: documentrules_flattened__questionnaires ;;
  }
}

view: documentrules_flattened__document_timelines {

  dimension: documentrules_flattened__document_timelines {
    type: string
    sql: documentrules_flattened__document_timelines ;;
  }
}

view: documentrules_flattened__team_member_quorum_list {

  dimension: documentrules_flattened__team_member_quorum_list {
    type: string
    sql: documentrules_flattened__team_member_quorum_list ;;
  }
}

view: documentrules_flattened__document_stakeholders {

  dimension: documentrules_flattened__document_stakeholders {
    type: string
    sql: documentrules_flattened__document_stakeholders ;;
  }
}

view: documentrules_flattened__negotiation_timelines {

  dimension: documentrules_flattened__negotiation_timelines {
    type: string
    sql: documentrules_flattened__negotiation_timelines ;;
  }
}

view: documentrules_flattened__contract_terms_confirmation {

  dimension: documentrules_flattened__contract_terms_confirmation {
    type: string
    sql: documentrules_flattened__contract_terms_confirmation ;;
  }
}
