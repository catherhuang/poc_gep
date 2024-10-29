connection: "gep_mongodb_connection"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
# explore: order_items {
#   join: orders {
#     relationship: many_to_one
#     sql_on: ${orders.id} = ${order_items.order_id} ;;
#   }
#
#   join: users {
#     relationship: many_to_one
#     sql_on: ${users.id} = ${orders.user_id} ;;
#   }
# }

explore: documentrules_flattened {
  hidden: no
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

explore: flattened_documentrules {
  hidden: yes
  join: flattened_documentrules__suppliers {
    view_label: "Flattened Documentrules: Suppliers"
    sql: LEFT JOIN UNNEST(${flattened_documentrules.suppliers}) as flattened_documentrules__suppliers ;;
    relationship: one_to_many
  }
}

explore: documentrules {}

explore: documentrules_flattened_dbt {
  hidden: no
  description: "location not found in us? "
  join: documentrules_flattened_dbt__document_timelines {
    view_label: "Documentrules Flattened Dbt: Documenttimelines"
    sql: LEFT JOIN UNNEST(${documentrules_flattened_dbt.document_timelines}) as documentrules_flattened_dbt__document_timelines ;;
    relationship: one_to_many
  }
}
