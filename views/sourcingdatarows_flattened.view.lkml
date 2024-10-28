# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view
explore: sourcingdatarows_flattened {
  hidden: yes
    join: sourcingdatarows_flattened__audit_fields {
      view_label: "Sourcingdatarows Flattened: Auditfields"
      sql: LEFT JOIN UNNEST(${sourcingdatarows_flattened.audit_fields}) as sourcingdatarows_flattened__audit_fields ;;
      relationship: one_to_many
    }
}
view: sourcingdatarows_flattened {
  sql_table_name: `iamtests-315719.mongodb_gep.sourcingdatarows_flattened` ;;

  dimension: _id {
    type: string
    sql: ${TABLE}._id ;;
  }
  dimension: _schemaver {
    type: number
    sql: ${TABLE}._schemaver ;;
  }
  dimension: answers {
    type: string
    sql: ${TABLE}.answers ;;
  }
  dimension: audit_fields {
    hidden: yes
    sql: ${TABLE}.auditFields ;;
  }
  dimension: bpc {
    type: number
    sql: ${TABLE}.bpc ;;
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
  dimension: formatting_data {
    type: string
    sql: ${TABLE}.formattingData ;;
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
  dimension: parent_id {
    type: string
    sql: ${TABLE}.parent_id ;;
  }
  dimension: price_sheet_id {
    type: string
    sql: ${TABLE}.priceSheetId ;;
  }
  dimension: root_id {
    type: string
    sql: ${TABLE}.root_id ;;
  }
  dimension: row_type {
    type: number
    sql: ${TABLE}.rowType ;;
  }
  dimension: sequence {
    type: number
    sql: ${TABLE}.sequence ;;
  }
  measure: count {
    type: count
  }
}

view: sourcingdatarows_flattened__audit_fields {

  dimension: created_by {
    type: string
    sql: createdBy ;;
  }
  dimension: created_date_time {
    type: string
    sql: createdDateTime ;;
  }
  dimension: modified_by {
    type: string
    sql: modifiedBy ;;
  }
  dimension: modified_date_time {
    type: string
    sql: modifiedDateTime ;;
  }
  dimension: sourcingdatarows_flattened__audit_fields {
    type: string
    hidden: yes
    sql: sourcingdatarows_flattened__audit_fields ;;
  }
  dimension: transaction_scope_id {
    type: string
    sql: transactionScopeId ;;
  }
  dimension: ver {
    type: string
    sql: ver ;;
  }
}
