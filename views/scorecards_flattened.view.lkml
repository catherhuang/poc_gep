# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view
explore: scorecards_flattened {
  hidden: yes
    join: scorecards_flattened__evaluators {
      view_label: "Scorecards Flattened: Evaluators"
      sql: LEFT JOIN UNNEST(${scorecards_flattened.evaluators}) as scorecards_flattened__evaluators ;;
      relationship: one_to_many
    }
    join: scorecards_flattened__pricesheets {
      view_label: "Scorecards Flattened: Pricesheets"
      sql: LEFT JOIN UNNEST(${scorecards_flattened.pricesheets}) as scorecards_flattened__pricesheets ;;
      relationship: one_to_many
    }
    join: scorecards_flattened__overall_score {
      view_label: "Scorecards Flattened: Overallscore"
      sql: LEFT JOIN UNNEST(${scorecards_flattened.overall_score}) as scorecards_flattened__overall_score ;;
      relationship: one_to_many
    }
    join: scorecards_flattened__questionnaires {
      view_label: "Scorecards Flattened: Questionnaires"
      sql: LEFT JOIN UNNEST(${scorecards_flattened.questionnaires}) as scorecards_flattened__questionnaires ;;
      relationship: one_to_many
    }
    join: scorecards_flattened__price_sheet_assigment {
      view_label: "Scorecards Flattened: Pricesheetassigment"
      sql: LEFT JOIN UNNEST(${scorecards_flattened.price_sheet_assigment}) as scorecards_flattened__price_sheet_assigment ;;
      relationship: one_to_many
    }
    join: scorecards_flattened__questionnaire_assignment {
      view_label: "Scorecards Flattened: Questionnaireassignment"
      sql: LEFT JOIN UNNEST(${scorecards_flattened.questionnaire_assignment}) as scorecards_flattened__questionnaire_assignment ;;
      relationship: one_to_many
    }
}
view: scorecards_flattened {
  sql_table_name: `iamtests-315719.mongodb_gep.scorecards_flattened` ;;
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
  dimension: audit_fields {
    type: string
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
  dimension: created_on {
    type: string
    sql: ${TABLE}.createdOn ;;
  }
  dimension: document_id {
    type: string
    sql: ${TABLE}.documentId ;;
  }
  dimension: evaluators {
    hidden: yes
    sql: ${TABLE}.evaluators ;;
  }
  dimension: is_default {
    type: yesno
    sql: ${TABLE}.isDefault ;;
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
  dimension: overall_score {
    hidden: yes
    sql: ${TABLE}.overallScore ;;
  }
  dimension: price_sheet_assigment {
    hidden: yes
    sql: ${TABLE}.priceSheetAssigment ;;
  }
  dimension: pricesheets {
    hidden: yes
    sql: ${TABLE}.pricesheets ;;
  }
  dimension: questionnaire_assignment {
    hidden: yes
    sql: ${TABLE}.questionnaireAssignment ;;
  }
  dimension: questionnaires {
    hidden: yes
    sql: ${TABLE}.questionnaires ;;
  }
  dimension_group: timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.Timestamp ;;
  }
  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}

view: scorecards_flattened__evaluators {
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: name {
    type: string
    sql: name ;;
  }
  dimension: scorecards_flattened__evaluators {
    type: string
    hidden: yes
    sql: scorecards_flattened__evaluators ;;
  }
}

view: scorecards_flattened__pricesheets {
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }
  dimension: scorecards_flattened__pricesheets {
    type: string
    hidden: yes
    sql: scorecards_flattened__pricesheets ;;
  }
  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }
}

view: scorecards_flattened__overall_score {

  dimension: scorecards_flattened__overall_score {
    type: string
    hidden: yes
    sql: scorecards_flattened__overall_score ;;
  }
  dimension: supplier_id {
    type: number
    sql: supplierId ;;
  }
  dimension: supplier_name {
    type: string
    sql: supplierName ;;
  }
}

view: scorecards_flattened__questionnaires {
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }
  dimension: scorecards_flattened__questionnaires {
    type: string
    hidden: yes
    sql: scorecards_flattened__questionnaires ;;
  }
  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }
}

view: scorecards_flattened__price_sheet_assigment {
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }
  dimension: is_assigned {
    type: yesno
    sql: isAssigned ;;
  }
  dimension: scorecards_flattened__price_sheet_assigment {
    type: string
    hidden: yes
    sql: scorecards_flattened__price_sheet_assigment ;;
  }
}

view: scorecards_flattened__questionnaire_assignment {
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }
  dimension: is_assigned {
    type: yesno
    sql: isAssigned ;;
  }
  dimension: scorecards_flattened__questionnaire_assignment {
    type: string
    hidden: yes
    sql: scorecards_flattened__questionnaire_assignment ;;
  }
}
