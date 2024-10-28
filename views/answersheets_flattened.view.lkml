# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view
explore: answersheets_flattened {
  hidden: yes
    join: answersheets_flattened__answers {
      view_label: "Answersheets Flattened: Answers"
      sql: LEFT JOIN UNNEST(${answersheets_flattened.answers}) as answersheets_flattened__answers ;;
      relationship: one_to_many
    }
    join: answersheets_flattened__audit_fields {
      view_label: "Answersheets Flattened: Auditfields"
      sql: LEFT JOIN UNNEST(${answersheets_flattened.audit_fields}) as answersheets_flattened__audit_fields ;;
      relationship: one_to_many
    }
    join: answersheets_flattened__answers__answers_data {
      view_label: "Answersheets Flattened: Answers Answersdata"
      sql: LEFT JOIN UNNEST(${answersheets_flattened__answers.answers_data}) as answersheets_flattened__answers__answers_data ;;
      relationship: one_to_many
    }
    join: answersheets_flattened__answers__response_attachments {
      view_label: "Answersheets Flattened: Answers Responseattachments"
      sql: LEFT JOIN UNNEST(${answersheets_flattened__answers.response_attachments}) as answersheets_flattened__answers__response_attachments ;;
      relationship: one_to_many
    }
}
view: answersheets_flattened {
  sql_table_name: `iamtests-315719.mongodb_gep.answersheets_flattened` ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }
  dimension: _id {
    type: string
    sql: ${TABLE}._id ;;
  }
  dimension: _schemaver {
    type: number
    sql: ${TABLE}._schemaver ;;
  }
  dimension: answers {
    hidden: yes
    sql: ${TABLE}.answers ;;
  }
  dimension: audit_fields {
    hidden: yes
    sql: ${TABLE}.auditFields ;;
  }
  dimension: bpc {
    type: string
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
  dimension: document_id {
    type: string
    sql: ${TABLE}.documentId ;;
  }
  dimension: is_active {
    type: yesno
    sql: ${TABLE}.isActive ;;
  }
  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}.isDeleted ;;
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
  dimension: no_of_questions {
    type: number
    sql: ${TABLE}.noOfQuestions ;;
  }
  dimension: no_of_responses {
    type: number
    sql: ${TABLE}.noOfResponses ;;
  }
  dimension: parent_id {
    type: string
    sql: ${TABLE}.parent_id ;;
  }
  dimension: partner_code {
    type: number
    sql: ${TABLE}.partnerCode ;;
  }
  dimension: questionnaire_id {
    type: string
    sql: ${TABLE}.questionnaireId ;;
  }
  dimension: questionnaires_questionnaire_id {
    type: string
    sql: ${TABLE}.questionnaires_questionnaireId ;;
  }
  dimension: recalculate_completion_percentage {
    type: yesno
    sql: ${TABLE}.recalculateCompletionPercentage ;;
  }
  dimension: revision_cycle {
    type: number
    sql: ${TABLE}.revisionCycle ;;
  }
  dimension: root_id {
    type: string
    sql: ${TABLE}.root_id ;;
  }
  dimension_group: timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.Timestamp ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}

view: answersheets_flattened__answers {

  dimension: answers_data {
    hidden: yes
    sql: answersData ;;
  }
  dimension: answersheets_flattened__answers {
    type: string
    hidden: yes
    sql: answersheets_flattened__answers ;;
  }
  dimension: is_answered {
    type: string
    sql: isAnswered ;;
  }
  dimension: question_id {
    type: string
    sql: questionId ;;
  }
  dimension: response_attachment_comments {
    type: string
    sql: responseAttachmentComments ;;
  }
  dimension: response_attachments {
    hidden: yes
    sql: responseAttachments ;;
  }
}

view: answersheets_flattened__audit_fields {

  dimension: answersheets_flattened__audit_fields {
    type: string
    hidden: yes
    sql: answersheets_flattened__audit_fields ;;
  }
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
  dimension: transaction_scope_id {
    type: string
    sql: transactionScopeId ;;
  }
  dimension: ver {
    type: string
    sql: ver ;;
  }
}

view: answersheets_flattened__answers__answers_data {

  dimension: col_id {
    type: string
    sql: ${TABLE}.colId ;;
  }
  dimension: row_id {
    type: string
    sql: ${TABLE}.rowId ;;
  }
  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
  dimension: value_type {
    type: string
    sql: ${TABLE}.valueType ;;
  }
}

view: answersheets_flattened__answers__response_attachments {

  dimension: fileid {
    type: string
    sql: ${TABLE}.fileid ;;
  }
  dimension: filename {
    type: string
    sql: ${TABLE}.filename ;;
  }
}
