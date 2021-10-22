# Looker API 3.1 Reference
#
# ### Authorization  The classic method of API authorization uses Looker **API3** credentials for authorization and access control. Looker admins can create API3 credentials on Looker's **Admin/Users** page.  API 4.0 adds additional ways to authenticate API requests, including OAuth and CORS requests.  For details, see [Looker API Authorization](https://looker.com/docs/r/api/authorization).   ### API Explorer  The API Explorer is a Looker-provided utility with many new and unique features for learning and using the Looker API and SDKs. It is a replacement for the 'api-docs' page currently provided on Looker instances.  For details, see the [API Explorer documentation](https://looker.com/docs/r/api/explorer).   ### Looker Language SDKs  The Looker API is a RESTful system that should be usable by any programming language capable of making HTTPS requests. SDKs for a variety of programming languages are also provided to streamline using the API. Looker has an OpenSource [sdk-codegen project](https://github.com/looker-open-source/sdk-codegen) that provides several language SDKs. Language SDKs generated by `sdk-codegen` have an Authentication manager that can automatically authenticate API requests when needed.  For details on available Looker SDKs, see [Looker API Client SDKs](https://looker.com/docs/r/api/client_sdks).   ### API Versioning  Future releases of Looker expand the latest API version release-by-release to securely expose more and more of the core power of the Looker platform to API client applications. API endpoints marked as \"beta\" may receive breaking changes without warning (but we will try to avoid doing that). Stable (non-beta) API endpoints should not receive breaking changes in future releases.  For details, see [Looker API Versioning](https://looker.com/docs/r/api/versioning).   ### Try It Out!  This section describes the existing 'api-docs' page available on Looker instances. We recommend using the [API Explorer](https://looker.com/docs/r/api/explorer) instead.  The 'api-docs' page served by the Looker instance includes 'Try It Out!' buttons for each API method. After logging in with API3 credentials, you can use the \"Try It Out!\" buttons to call the API directly from the documentation page to interactively explore API features and responses.  **NOTE**! With great power comes great responsibility: The \"Try It Out!\" button makes API calls to your live Looker instance. Be especially careful with destructive API operations such as `delete_user` or similar. There is no \"undo\" for API operations. (API Explorer's \"Run It\" feature requires a check mark before running API operations that can change data.)   ### In This Release  The following are a few examples of noteworthy items that have changed between API 3.0 and API 3.1. For more comprehensive coverage of API changes, please see the release notes for your Looker release.  ### Examples of new things added in API 3.1 (compared to API 3.0):  * [Dashboard construction](#!/3.1/Dashboard/) APIs * [Themes](#!/3.1/Theme/) and [custom color collections](#!/3.1/ColorCollection) APIs * Create and run [SQL Runner](#!/3.1/Query/run_sql_query) queries * Create and run [merged results](#!/3.1/Query/create_merge_query) queries * Create and modify [dashboard filters](#!/3.1/Dashboard/create_dashboard_filter) * Create and modify [password requirements](#!/3.1/Auth/password_config)  ### Deprecated in API 3.0  The following functions and properties have been deprecated in API 3.0.  They continue to exist and work in API 3.0 for the next several Looker releases but they have not been carried forward to API 3.1:  * Dashboard Prefetch functions * User access_filter functions * User API 1.0 credentials functions * Space.is_root and Space.is_user_root properties. Use Space.is_shared_root and Space.is_users_root instead.  ### Semantic changes in API 3.1:  * [all_looks()](#!/3.1/Look/all_looks) no longer includes soft-deleted looks, matching [all_dashboards()](#!/3.1/Dashboard/all_dashboards) behavior. You can find soft-deleted looks using [search_looks()](#!/3.1/Look/search_looks) with the `deleted` param set to True. * [all_spaces()](#!/3.1/Space/all_spaces) no longer includes duplicate items * [search_users()](#!/3.1/User/search_users) no longer accepts Y,y,1,0,N,n for Boolean params, only \"true\" and \"false\". * For greater client and network compatibility, [render_task_results](#!/3.1/RenderTask/render_task_results) now returns HTTP status **202 Accepted** instead of HTTP status **102 Processing** * [all_running_queries()](#!/3.1/Query/all_running_queries) and [kill_query](#!/3.1/Query/kill_query) functions have moved into the [Query](#!/3.1/Query/) function group.  The API Explorer can be used to [interactively compare](https://looker.com/docs/r/api/explorer#comparing_api_versions) the differences between API 3.1 and 4.0.   ### API and SDK Support Policies  Looker API versions and language SDKs have varying support levels. Please read the API and SDK [support policies](https://looker.com/docs/r/api/support-policy) for more information.   
#
# OpenAPI spec version: 3.1.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' LDAPUser Class
#'
#' @field all_emails 
#' @field attributes 
#' @field email 
#' @field first_name 
#' @field groups 
#' @field last_name 
#' @field ldap_dn 
#' @field ldap_id 
#' @field roles 
#' @field can 
#' @field url 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
LDAPUser <- R6::R6Class(
  'LDAPUser',
  public = list(
    `all_emails` = NULL,
    `attributes` = NULL,
    `email` = NULL,
    `first_name` = NULL,
    `groups` = NULL,
    `last_name` = NULL,
    `ldap_dn` = NULL,
    `ldap_id` = NULL,
    `roles` = NULL,
    `can` = NULL,
    `url` = NULL,
    initialize = function(`all_emails`, `attributes`, `email`, `first_name`, `groups`, `last_name`, `ldap_dn`, `ldap_id`, `roles`, `can`, `url`){
      if (!missing(`all_emails`)) {
        stopifnot(is.list(`all_emails`), length(`all_emails`) != 0)
        lapply(`all_emails`, function(x) stopifnot(is.character(x)))
        self$`all_emails` <- `all_emails`
      }
      if (!missing(`attributes`)) {
        self$`attributes` <- `attributes`
      }
      if (!missing(`email`)) {
        stopifnot(is.character(`email`), length(`email`) == 1)
        self$`email` <- `email`
      }
      if (!missing(`first_name`)) {
        stopifnot(is.character(`first_name`), length(`first_name`) == 1)
        self$`first_name` <- `first_name`
      }
      if (!missing(`groups`)) {
        stopifnot(is.list(`groups`), length(`groups`) != 0)
        lapply(`groups`, function(x) stopifnot(is.character(x)))
        self$`groups` <- `groups`
      }
      if (!missing(`last_name`)) {
        stopifnot(is.character(`last_name`), length(`last_name`) == 1)
        self$`last_name` <- `last_name`
      }
      if (!missing(`ldap_dn`)) {
        stopifnot(is.character(`ldap_dn`), length(`ldap_dn`) == 1)
        self$`ldap_dn` <- `ldap_dn`
      }
      if (!missing(`ldap_id`)) {
        stopifnot(is.character(`ldap_id`), length(`ldap_id`) == 1)
        self$`ldap_id` <- `ldap_id`
      }
      if (!missing(`roles`)) {
        stopifnot(is.list(`roles`), length(`roles`) != 0)
        lapply(`roles`, function(x) stopifnot(is.character(x)))
        self$`roles` <- `roles`
      }
      if (!missing(`can`)) {
        self$`can` <- `can`
      }
      if (!missing(`url`)) {
        stopifnot(is.character(`url`), length(`url`) == 1)
        self$`url` <- `url`
      }
    },
    toJSON = function() {
      LDAPUserObject <- list()
      if (!is.null(self$`all_emails`)) {
        LDAPUserObject[['all_emails']] <- self$`all_emails`
      }
      if (!is.null(self$`attributes`)) {
        LDAPUserObject[['attributes']] <- self$`attributes`
      }
      if (!is.null(self$`email`)) {
        LDAPUserObject[['email']] <- self$`email`
      }
      if (!is.null(self$`first_name`)) {
        LDAPUserObject[['first_name']] <- self$`first_name`
      }
      if (!is.null(self$`groups`)) {
        LDAPUserObject[['groups']] <- self$`groups`
      }
      if (!is.null(self$`last_name`)) {
        LDAPUserObject[['last_name']] <- self$`last_name`
      }
      if (!is.null(self$`ldap_dn`)) {
        LDAPUserObject[['ldap_dn']] <- self$`ldap_dn`
      }
      if (!is.null(self$`ldap_id`)) {
        LDAPUserObject[['ldap_id']] <- self$`ldap_id`
      }
      if (!is.null(self$`roles`)) {
        LDAPUserObject[['roles']] <- self$`roles`
      }
      if (!is.null(self$`can`)) {
        LDAPUserObject[['can']] <- self$`can`
      }
      if (!is.null(self$`url`)) {
        LDAPUserObject[['url']] <- self$`url`
      }

      LDAPUserObject
    },
    fromJSON = function(LDAPUserJson) {
      LDAPUserObject <- jsonlite::fromJSON(LDAPUserJson)
      if (!is.null(LDAPUserObject$`all_emails`)) {
        self$`all_emails` <- LDAPUserObject$`all_emails`
      }
      if (!is.null(LDAPUserObject$`attributes`)) {
        self$`attributes` <- LDAPUserObject$`attributes`
      }
      if (!is.null(LDAPUserObject$`email`)) {
        self$`email` <- LDAPUserObject$`email`
      }
      if (!is.null(LDAPUserObject$`first_name`)) {
        self$`first_name` <- LDAPUserObject$`first_name`
      }
      if (!is.null(LDAPUserObject$`groups`)) {
        self$`groups` <- LDAPUserObject$`groups`
      }
      if (!is.null(LDAPUserObject$`last_name`)) {
        self$`last_name` <- LDAPUserObject$`last_name`
      }
      if (!is.null(LDAPUserObject$`ldap_dn`)) {
        self$`ldap_dn` <- LDAPUserObject$`ldap_dn`
      }
      if (!is.null(LDAPUserObject$`ldap_id`)) {
        self$`ldap_id` <- LDAPUserObject$`ldap_id`
      }
      if (!is.null(LDAPUserObject$`roles`)) {
        self$`roles` <- LDAPUserObject$`roles`
      }
      if (!is.null(LDAPUserObject$`can`)) {
        self$`can` <- LDAPUserObject$`can`
      }
      if (!is.null(LDAPUserObject$`url`)) {
        self$`url` <- LDAPUserObject$`url`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "all_emails": [%s],
           "attributes": %s,
           "email": %s,
           "first_name": %s,
           "groups": [%s],
           "last_name": %s,
           "ldap_dn": %s,
           "ldap_id": %s,
           "roles": [%s],
           "can": %s,
           "url": %s
        }',
        lapply(self$`all_emails`, function(x) paste(paste0('"', x, '"'), sep=",")),
        self$`attributes`,
        self$`email`,
        self$`first_name`,
        lapply(self$`groups`, function(x) paste(paste0('"', x, '"'), sep=",")),
        self$`last_name`,
        self$`ldap_dn`,
        self$`ldap_id`,
        lapply(self$`roles`, function(x) paste(paste0('"', x, '"'), sep=",")),
        self$`can`,
        self$`url`
      )
    },
    fromJSONString = function(LDAPUserJson) {
      LDAPUserObject <- jsonlite::fromJSON(LDAPUserJson)
      self$`all_emails` <- LDAPUserObject$`all_emails`
      self$`attributes` <- LDAPUserObject$`attributes`
      self$`email` <- LDAPUserObject$`email`
      self$`first_name` <- LDAPUserObject$`first_name`
      self$`groups` <- LDAPUserObject$`groups`
      self$`last_name` <- LDAPUserObject$`last_name`
      self$`ldap_dn` <- LDAPUserObject$`ldap_dn`
      self$`ldap_id` <- LDAPUserObject$`ldap_id`
      self$`roles` <- LDAPUserObject$`roles`
      self$`can` <- LDAPUserObject$`can`
      self$`url` <- LDAPUserObject$`url`
    }
  )
)
