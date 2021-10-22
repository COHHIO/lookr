# Looker API 3.1 Reference
#
# ### Authorization  The classic method of API authorization uses Looker **API3** credentials for authorization and access control. Looker admins can create API3 credentials on Looker's **Admin/Users** page.  API 4.0 adds additional ways to authenticate API requests, including OAuth and CORS requests.  For details, see [Looker API Authorization](https://looker.com/docs/r/api/authorization).   ### API Explorer  The API Explorer is a Looker-provided utility with many new and unique features for learning and using the Looker API and SDKs. It is a replacement for the 'api-docs' page currently provided on Looker instances.  For details, see the [API Explorer documentation](https://looker.com/docs/r/api/explorer).   ### Looker Language SDKs  The Looker API is a RESTful system that should be usable by any programming language capable of making HTTPS requests. SDKs for a variety of programming languages are also provided to streamline using the API. Looker has an OpenSource [sdk-codegen project](https://github.com/looker-open-source/sdk-codegen) that provides several language SDKs. Language SDKs generated by `sdk-codegen` have an Authentication manager that can automatically authenticate API requests when needed.  For details on available Looker SDKs, see [Looker API Client SDKs](https://looker.com/docs/r/api/client_sdks).   ### API Versioning  Future releases of Looker expand the latest API version release-by-release to securely expose more and more of the core power of the Looker platform to API client applications. API endpoints marked as \"beta\" may receive breaking changes without warning (but we will try to avoid doing that). Stable (non-beta) API endpoints should not receive breaking changes in future releases.  For details, see [Looker API Versioning](https://looker.com/docs/r/api/versioning).   ### Try It Out!  This section describes the existing 'api-docs' page available on Looker instances. We recommend using the [API Explorer](https://looker.com/docs/r/api/explorer) instead.  The 'api-docs' page served by the Looker instance includes 'Try It Out!' buttons for each API method. After logging in with API3 credentials, you can use the \"Try It Out!\" buttons to call the API directly from the documentation page to interactively explore API features and responses.  **NOTE**! With great power comes great responsibility: The \"Try It Out!\" button makes API calls to your live Looker instance. Be especially careful with destructive API operations such as `delete_user` or similar. There is no \"undo\" for API operations. (API Explorer's \"Run It\" feature requires a check mark before running API operations that can change data.)   ### In This Release  The following are a few examples of noteworthy items that have changed between API 3.0 and API 3.1. For more comprehensive coverage of API changes, please see the release notes for your Looker release.  ### Examples of new things added in API 3.1 (compared to API 3.0):  * [Dashboard construction](#!/3.1/Dashboard/) APIs * [Themes](#!/3.1/Theme/) and [custom color collections](#!/3.1/ColorCollection) APIs * Create and run [SQL Runner](#!/3.1/Query/run_sql_query) queries * Create and run [merged results](#!/3.1/Query/create_merge_query) queries * Create and modify [dashboard filters](#!/3.1/Dashboard/create_dashboard_filter) * Create and modify [password requirements](#!/3.1/Auth/password_config)  ### Deprecated in API 3.0  The following functions and properties have been deprecated in API 3.0.  They continue to exist and work in API 3.0 for the next several Looker releases but they have not been carried forward to API 3.1:  * Dashboard Prefetch functions * User access_filter functions * User API 1.0 credentials functions * Space.is_root and Space.is_user_root properties. Use Space.is_shared_root and Space.is_users_root instead.  ### Semantic changes in API 3.1:  * [all_looks()](#!/3.1/Look/all_looks) no longer includes soft-deleted looks, matching [all_dashboards()](#!/3.1/Dashboard/all_dashboards) behavior. You can find soft-deleted looks using [search_looks()](#!/3.1/Look/search_looks) with the `deleted` param set to True. * [all_spaces()](#!/3.1/Space/all_spaces) no longer includes duplicate items * [search_users()](#!/3.1/User/search_users) no longer accepts Y,y,1,0,N,n for Boolean params, only \"true\" and \"false\". * For greater client and network compatibility, [render_task_results](#!/3.1/RenderTask/render_task_results) now returns HTTP status **202 Accepted** instead of HTTP status **102 Processing** * [all_running_queries()](#!/3.1/Query/all_running_queries) and [kill_query](#!/3.1/Query/kill_query) functions have moved into the [Query](#!/3.1/Query/) function group.  The API Explorer can be used to [interactively compare](https://looker.com/docs/r/api/explorer#comparing_api_versions) the differences between API 3.1 and 4.0.   ### API and SDK Support Policies  Looker API versions and language SDKs have varying support levels. Please read the API and SDK [support policies](https://looker.com/docs/r/api/support-policy) for more information.   
#
# OpenAPI spec version: 3.1.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' Group Class
#'
#' @field can 
#' @field can_add_to_content_metadata 
#' @field contains_current_user 
#' @field external_group_id 
#' @field externally_managed 
#' @field id 
#' @field include_by_default 
#' @field name 
#' @field user_count 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Group <- R6::R6Class(
  'Group',
  public = list(
    `can` = NULL,
    `can_add_to_content_metadata` = NULL,
    `contains_current_user` = NULL,
    `external_group_id` = NULL,
    `externally_managed` = NULL,
    `id` = NULL,
    `include_by_default` = NULL,
    `name` = NULL,
    `user_count` = NULL,
    initialize = function(`can`, `can_add_to_content_metadata`, `contains_current_user`, `external_group_id`, `externally_managed`, `id`, `include_by_default`, `name`, `user_count`){
      if (!missing(`can`)) {
        self$`can` <- `can`
      }
      if (!missing(`can_add_to_content_metadata`)) {
        self$`can_add_to_content_metadata` <- `can_add_to_content_metadata`
      }
      if (!missing(`contains_current_user`)) {
        self$`contains_current_user` <- `contains_current_user`
      }
      if (!missing(`external_group_id`)) {
        stopifnot(is.character(`external_group_id`), length(`external_group_id`) == 1)
        self$`external_group_id` <- `external_group_id`
      }
      if (!missing(`externally_managed`)) {
        self$`externally_managed` <- `externally_managed`
      }
      if (!missing(`id`)) {
        stopifnot(is.numeric(`id`), length(`id`) == 1)
        self$`id` <- `id`
      }
      if (!missing(`include_by_default`)) {
        self$`include_by_default` <- `include_by_default`
      }
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
      if (!missing(`user_count`)) {
        stopifnot(is.numeric(`user_count`), length(`user_count`) == 1)
        self$`user_count` <- `user_count`
      }
    },
    toJSON = function() {
      GroupObject <- list()
      if (!is.null(self$`can`)) {
        GroupObject[['can']] <- self$`can`
      }
      if (!is.null(self$`can_add_to_content_metadata`)) {
        GroupObject[['can_add_to_content_metadata']] <- self$`can_add_to_content_metadata`
      }
      if (!is.null(self$`contains_current_user`)) {
        GroupObject[['contains_current_user']] <- self$`contains_current_user`
      }
      if (!is.null(self$`external_group_id`)) {
        GroupObject[['external_group_id']] <- self$`external_group_id`
      }
      if (!is.null(self$`externally_managed`)) {
        GroupObject[['externally_managed']] <- self$`externally_managed`
      }
      if (!is.null(self$`id`)) {
        GroupObject[['id']] <- self$`id`
      }
      if (!is.null(self$`include_by_default`)) {
        GroupObject[['include_by_default']] <- self$`include_by_default`
      }
      if (!is.null(self$`name`)) {
        GroupObject[['name']] <- self$`name`
      }
      if (!is.null(self$`user_count`)) {
        GroupObject[['user_count']] <- self$`user_count`
      }

      GroupObject
    },
    fromJSON = function(GroupJson) {
      GroupObject <- jsonlite::fromJSON(GroupJson)
      if (!is.null(GroupObject$`can`)) {
        self$`can` <- GroupObject$`can`
      }
      if (!is.null(GroupObject$`can_add_to_content_metadata`)) {
        self$`can_add_to_content_metadata` <- GroupObject$`can_add_to_content_metadata`
      }
      if (!is.null(GroupObject$`contains_current_user`)) {
        self$`contains_current_user` <- GroupObject$`contains_current_user`
      }
      if (!is.null(GroupObject$`external_group_id`)) {
        self$`external_group_id` <- GroupObject$`external_group_id`
      }
      if (!is.null(GroupObject$`externally_managed`)) {
        self$`externally_managed` <- GroupObject$`externally_managed`
      }
      if (!is.null(GroupObject$`id`)) {
        self$`id` <- GroupObject$`id`
      }
      if (!is.null(GroupObject$`include_by_default`)) {
        self$`include_by_default` <- GroupObject$`include_by_default`
      }
      if (!is.null(GroupObject$`name`)) {
        self$`name` <- GroupObject$`name`
      }
      if (!is.null(GroupObject$`user_count`)) {
        self$`user_count` <- GroupObject$`user_count`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "can": %s,
           "can_add_to_content_metadata": %s,
           "contains_current_user": %s,
           "external_group_id": %s,
           "externally_managed": %s,
           "id": %d,
           "include_by_default": %s,
           "name": %s,
           "user_count": %d
        }',
        self$`can`,
        self$`can_add_to_content_metadata`,
        self$`contains_current_user`,
        self$`external_group_id`,
        self$`externally_managed`,
        self$`id`,
        self$`include_by_default`,
        self$`name`,
        self$`user_count`
      )
    },
    fromJSONString = function(GroupJson) {
      GroupObject <- jsonlite::fromJSON(GroupJson)
      self$`can` <- GroupObject$`can`
      self$`can_add_to_content_metadata` <- GroupObject$`can_add_to_content_metadata`
      self$`contains_current_user` <- GroupObject$`contains_current_user`
      self$`external_group_id` <- GroupObject$`external_group_id`
      self$`externally_managed` <- GroupObject$`externally_managed`
      self$`id` <- GroupObject$`id`
      self$`include_by_default` <- GroupObject$`include_by_default`
      self$`name` <- GroupObject$`name`
      self$`user_count` <- GroupObject$`user_count`
    }
  )
)
