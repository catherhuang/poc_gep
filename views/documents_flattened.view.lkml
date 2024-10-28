# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view
explore: documents_flattened {
  hidden: yes
    join: documents_flattened__attachments {
      view_label: "Documents Flattened: Attachments"
      sql: LEFT JOIN UNNEST(${documents_flattened.attachments}) as documents_flattened__attachments ;;
      relationship: one_to_many
    }
    join: documents_flattened__basic_detail__regions {
      view_label: "Documents Flattened: Basicdetail Regions"
      sql: LEFT JOIN UNNEST(${documents_flattened.basic_detail__regions}) as documents_flattened__basic_detail__regions ;;
      relationship: one_to_many
    }
    join: documents_flattened__basic_detail__categories {
      view_label: "Documents Flattened: Basicdetail Categories"
      sql: LEFT JOIN UNNEST(${documents_flattened.basic_detail__categories}) as documents_flattened__basic_detail__categories ;;
      relationship: one_to_many
    }
    join: documents_flattened__basic_detail__regions__parent_details {
      view_label: "Documents Flattened: Basicdetail Regions Parentdetails"
      sql: LEFT JOIN UNNEST(${documents_flattened__basic_detail__regions.parent_details}) as documents_flattened__basic_detail__regions__parent_details ;;
      relationship: one_to_many
    }
    join: documents_flattened__basic_detail__org_entities {
      view_label: "Documents Flattened: Basicdetail Orgentities"
      sql: LEFT JOIN UNNEST(${documents_flattened.basic_detail__org_entities}) as documents_flattened__basic_detail__org_entities ;;
      relationship: one_to_many
    }
    join: documents_flattened__basic_detail__categories__parent_details {
      view_label: "Documents Flattened: Basicdetail Categories Parentdetails"
      sql: LEFT JOIN UNNEST(${documents_flattened__basic_detail__categories.parent_details}) as documents_flattened__basic_detail__categories__parent_details ;;
      relationship: one_to_many
    }
    join: documents_flattened__basic_detail__org_entities__parent_details {
      view_label: "Documents Flattened: Basicdetail Orgentities Parentdetails"
      sql: LEFT JOIN UNNEST(${documents_flattened__basic_detail__org_entities.parent_details}) as documents_flattened__basic_detail__org_entities__parent_details ;;
      relationship: one_to_many
    }
}
view: documents_flattened {
  sql_table_name: `iamtests-315719.mongodb_gep.documents_flattened` ;;

  dimension: _id {
    type: string
    sql: ${TABLE}._id ;;
  }
  dimension: _schemaver {
    type: number
    sql: ${TABLE}._schemaver ;;
  }
  dimension: attachments {
    hidden: yes
    sql: ${TABLE}.attachments ;;
  }
  dimension: audit_fields__created_by {
    type: string
    sql: ${TABLE}.auditFields.createdBy ;;
    group_label: "Audit Fields"
    group_item_label: "Created By"
  }
  dimension: audit_fields__created_date_time {
    type: string
    sql: ${TABLE}.auditFields.createdDateTime ;;
    group_label: "Audit Fields"
    group_item_label: "Created Date Time"
  }
  dimension: audit_fields__modified_by {
    type: string
    sql: ${TABLE}.auditFields.modifiedBy ;;
    group_label: "Audit Fields"
    group_item_label: "Modified By"
  }
  dimension: audit_fields__modified_date_time {
    type: string
    sql: ${TABLE}.auditFields.modifiedDateTime ;;
    group_label: "Audit Fields"
    group_item_label: "Modified Date Time"
  }
  dimension: audit_fields__transaction_scope_id {
    type: string
    sql: ${TABLE}.auditFields.transactionScopeId ;;
    group_label: "Audit Fields"
    group_item_label: "Transaction Scope ID"
  }
  dimension: audit_fields__ver {
    type: number
    sql: ${TABLE}.auditFields.ver ;;
    group_label: "Audit Fields"
    group_item_label: "Ver"
  }
  dimension: author__contact_code {
    type: number
    sql: ${TABLE}.author.contactCode ;;
    group_label: "Author"
    group_item_label: "Contact Code"
  }
  dimension: author__email_address {
    type: string
    sql: ${TABLE}.author.emailAddress ;;
    group_label: "Author"
    group_item_label: "Email Address"
  }
  dimension: author__name {
    type: string
    sql: ${TABLE}.author.name ;;
    group_label: "Author"
    group_item_label: "Name"
  }
  dimension: author__user_id {
    type: number
    sql: ${TABLE}.author.userId ;;
    group_label: "Author"
    group_item_label: "User ID"
  }
  dimension: author__user_name {
    type: string
    sql: ${TABLE}.author.userName ;;
    group_label: "Author"
    group_item_label: "User Name"
  }
  dimension: basic_detail__categories {
    hidden: yes
    sql: ${TABLE}.basicDetail.categories ;;
    group_label: "Basic Detail"
    group_item_label: "Categories"
  }
  dimension: basic_detail__created_on_month {
    type: string
    sql: ${TABLE}.basicDetail.createdOnMonth ;;
    group_label: "Basic Detail"
    group_item_label: "Created on Month"
  }
  dimension: basic_detail__creation_type {
    type: string
    sql: ${TABLE}.basicDetail.creationType ;;
    group_label: "Basic Detail"
    group_item_label: "Creation Type"
  }
  dimension: basic_detail__currency__code {
    type: string
    sql: ${TABLE}.basicDetail.currency.code ;;
    group_label: "Basic Detail Currency"
    group_item_label: "Code"
  }
  dimension: basic_detail__currency__name {
    type: string
    sql: ${TABLE}.basicDetail.currency.name ;;
    group_label: "Basic Detail Currency"
    group_item_label: "Name"
  }
  dimension: basic_detail__description {
    type: string
    sql: ${TABLE}.basicDetail.description ;;
    group_label: "Basic Detail"
    group_item_label: "Description"
  }
  dimension: basic_detail__document_code {
    type: string
    sql: ${TABLE}.basicDetail.documentCode ;;
    group_label: "Basic Detail"
    group_item_label: "Document Code"
  }
  dimension: basic_detail__document_number {
    type: string
    sql: ${TABLE}.basicDetail.documentNumber ;;
    group_label: "Basic Detail"
    group_item_label: "Document Number"
  }
  dimension: basic_detail__document_type__code {
    type: number
    sql: ${TABLE}.basicDetail.documentType.code ;;
    group_label: "Basic Detail Document Type"
    group_item_label: "Code"
  }
  dimension: basic_detail__document_type__name {
    type: string
    sql: ${TABLE}.basicDetail.documentType.name ;;
    group_label: "Basic Detail Document Type"
    group_item_label: "Name"
  }
  dimension: basic_detail__name {
    type: string
    sql: ${TABLE}.basicDetail.name ;;
    group_label: "Basic Detail"
    group_item_label: "Name"
  }
  dimension: basic_detail__org_entities {
    hidden: yes
    sql: ${TABLE}.basicDetail.orgEntities ;;
    group_label: "Basic Detail"
    group_item_label: "Org Entities"
  }
  dimension: basic_detail__regions {
    hidden: yes
    sql: ${TABLE}.basicDetail.regions ;;
    group_label: "Basic Detail"
    group_item_label: "Regions"
  }
  dimension: bpc {
    type: number
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
  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}.isDeleted ;;
  }
  dimension: is_pricesheet_dirty {
    type: yesno
    sql: ${TABLE}.isPricesheetDirty ;;
  }
  dimension: is_template {
    type: yesno
    sql: ${TABLE}.isTemplate ;;
  }
  dimension: location {
    type: string
    sql: ${TABLE}.location ;;
  }
  measure: count {
    type: count
    drill_fields: [author__name, author__user_name, basic_detail__name, basic_detail__currency__name, basic_detail__document_type__name]
  }
}

view: documents_flattened__attachments {

  dimension: classification_type {
    type: string
    sql: classificationType ;;
  }
  dimension: created_by__buyer_partner_name {
    type: string
    sql: ${TABLE}.createdBy.buyerPartnerName ;;
    group_label: "Created By"
    group_item_label: "Buyer Partner Name"
  }
  dimension: created_by__contact_code {
    type: number
    sql: ${TABLE}.createdBy.contactCode ;;
    group_label: "Created By"
    group_item_label: "Contact Code"
  }
  dimension: created_by__email_address {
    type: string
    sql: ${TABLE}.createdBy.emailAddress ;;
    group_label: "Created By"
    group_item_label: "Email Address"
  }
  dimension: created_by__name {
    type: string
    sql: ${TABLE}.createdBy.name ;;
    group_label: "Created By"
    group_item_label: "Name"
  }
  dimension: created_by__user_id {
    type: number
    sql: ${TABLE}.createdBy.userId ;;
    group_label: "Created By"
    group_item_label: "User ID"
  }
  dimension: created_by__user_name {
    type: string
    sql: ${TABLE}.createdBy.userName ;;
    group_label: "Created By"
    group_item_label: "User Name"
  }
  dimension: created_on {
    type: string
    sql: createdOn ;;
  }
  dimension: documents_flattened__attachments {
    type: string
    hidden: yes
    sql: documents_flattened__attachments ;;
  }
  dimension: fileid {
    type: string
    sql: fileid ;;
  }
  dimension: filename {
    type: string
    sql: filename ;;
  }
  dimension: filesize {
    type: number
    sql: filesize ;;
  }
  dimension: is_deleted {
    type: yesno
    sql: isDeleted ;;
  }
  dimension: is_visible_to_supplier {
    type: yesno
    sql: isVisibleToSupplier ;;
  }
  dimension: sequence_no {
    type: number
    sql: sequenceNo ;;
  }
}

view: documents_flattened__basic_detail__regions {
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: display_name {
    type: string
    sql: ${TABLE}.displayName ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension: parent_details {
    hidden: yes
    sql: ${TABLE}.parentDetails ;;
  }
}

view: documents_flattened__basic_detail__categories {
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: display_name {
    type: string
    sql: ${TABLE}.displayName ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension: parent_details {
    hidden: yes
    sql: ${TABLE}.parentDetails ;;
  }
}

view: documents_flattened__basic_detail__regions__parent_details {

  dimension: documents_flattened__basic_detail__regions__parent_details {
    type: string
    sql: documents_flattened__basic_detail__regions__parent_details ;;
  }
}

view: documents_flattened__basic_detail__org_entities {

  dimension: display_name {
    type: string
    sql: ${TABLE}.displayName ;;
  }
  dimension: entity_code {
    type: string
    sql: ${TABLE}.entityCode ;;
  }
  dimension: entity_detail_code {
    type: string
    sql: ${TABLE}.entityDetailCode ;;
  }
  dimension: entity_detail_description {
    type: string
    sql: ${TABLE}.entityDetailDescription ;;
  }
  dimension: entity_name {
    type: string
    sql: ${TABLE}.entityName ;;
  }
  dimension: parent_details {
    hidden: yes
    sql: ${TABLE}.parentDetails ;;
  }
}

view: documents_flattened__basic_detail__categories__parent_details {

  dimension: documents_flattened__basic_detail__categories__parent_details {
    type: string
    sql: documents_flattened__basic_detail__categories__parent_details ;;
  }
}

view: documents_flattened__basic_detail__org_entities__parent_details {

  dimension: documents_flattened__basic_detail__org_entities__parent_details {
    type: string
    sql: documents_flattened__basic_detail__org_entities__parent_details ;;
  }
}
