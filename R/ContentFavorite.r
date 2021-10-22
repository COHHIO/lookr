# Looker API 3.1 Reference
#
# ### Authorization  The classic method of API authorization uses Looker **API3** credentials for authorization and access control. Looker admins can create API3 credentials on Looker's **Admin/Users** page.  API 4.0 adds additional ways to authenticate API requests, including OAuth and CORS requests.  For details, see [Looker API Authorization](https://looker.com/docs/r/api/authorization).   ### API Explorer  The API Explorer is a Looker-provided utility with many new and unique features for learning and using the Looker API and SDKs. It is a replacement for the 'api-docs' page currently provided on Looker instances.  For details, see the [API Explorer documentation](https://looker.com/docs/r/api/explorer).   ### Looker Language SDKs  The Looker API is a RESTful system that should be usable by any programming language capable of making HTTPS requests. SDKs for a variety of programming languages are also provided to streamline using the API. Looker has an OpenSource [sdk-codegen project](https://github.com/looker-open-source/sdk-codegen) that provides several language SDKs. Language SDKs generated by `sdk-codegen` have an Authentication manager that can automatically authenticate API requests when needed.  For details on available Looker SDKs, see [Looker API Client SDKs](https://looker.com/docs/r/api/client_sdks).   ### API Versioning  Future releases of Looker expand the latest API version release-by-release to securely expose more and more of the core power of the Looker platform to API client applications. API endpoints marked as \"beta\" may receive breaking changes without warning (but we will try to avoid doing that). Stable (non-beta) API endpoints should not receive breaking changes in future releases.  For details, see [Looker API Versioning](https://looker.com/docs/r/api/versioning).   ### Try It Out!  This section describes the existing 'api-docs' page available on Looker instances. We recommend using the [API Explorer](https://looker.com/docs/r/api/explorer) instead.  The 'api-docs' page served by the Looker instance includes 'Try It Out!' buttons for each API method. After logging in with API3 credentials, you can use the \"Try It Out!\" buttons to call the API directly from the documentation page to interactively explore API features and responses.  **NOTE**! With great power comes great responsibility: The \"Try It Out!\" button makes API calls to your live Looker instance. Be especially careful with destructive API operations such as `delete_user` or similar. There is no \"undo\" for API operations. (API Explorer's \"Run It\" feature requires a check mark before running API operations that can change data.)   ### In This Release  The following are a few examples of noteworthy items that have changed between API 3.0 and API 3.1. For more comprehensive coverage of API changes, please see the release notes for your Looker release.  ### Examples of new things added in API 3.1 (compared to API 3.0):  * [Dashboard construction](#!/3.1/Dashboard/) APIs * [Themes](#!/3.1/Theme/) and [custom color collections](#!/3.1/ColorCollection) APIs * Create and run [SQL Runner](#!/3.1/Query/run_sql_query) queries * Create and run [merged results](#!/3.1/Query/create_merge_query) queries * Create and modify [dashboard filters](#!/3.1/Dashboard/create_dashboard_filter) * Create and modify [password requirements](#!/3.1/Auth/password_config)  ### Deprecated in API 3.0  The following functions and properties have been deprecated in API 3.0.  They continue to exist and work in API 3.0 for the next several Looker releases but they have not been carried forward to API 3.1:  * Dashboard Prefetch functions * User access_filter functions * User API 1.0 credentials functions * Space.is_root and Space.is_user_root properties. Use Space.is_shared_root and Space.is_users_root instead.  ### Semantic changes in API 3.1:  * [all_looks()](#!/3.1/Look/all_looks) no longer includes soft-deleted looks, matching [all_dashboards()](#!/3.1/Dashboard/all_dashboards) behavior. You can find soft-deleted looks using [search_looks()](#!/3.1/Look/search_looks) with the `deleted` param set to True. * [all_spaces()](#!/3.1/Space/all_spaces) no longer includes duplicate items * [search_users()](#!/3.1/User/search_users) no longer accepts Y,y,1,0,N,n for Boolean params, only \"true\" and \"false\". * For greater client and network compatibility, [render_task_results](#!/3.1/RenderTask/render_task_results) now returns HTTP status **202 Accepted** instead of HTTP status **102 Processing** * [all_running_queries()](#!/3.1/Query/all_running_queries) and [kill_query](#!/3.1/Query/kill_query) functions have moved into the [Query](#!/3.1/Query/) function group.  The API Explorer can be used to [interactively compare](https://looker.com/docs/r/api/explorer#comparing_api_versions) the differences between API 3.1 and 4.0.   ### API and SDK Support Policies  Looker API versions and language SDKs have varying support levels. Please read the API and SDK [support policies](https://looker.com/docs/r/api/support-policy) for more information.   
#
# OpenAPI spec version: 3.1.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' ContentFavorite Class
#'
#' @field id 
#' @field user_id 
#' @field content_metadata_id 
#' @field look_id 
#' @field dashboard_id 
#' @field look 
#' @field dashboard 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ContentFavorite <- R6::R6Class(
  'ContentFavorite',
  public = list(
    `id` = NULL,
    `user_id` = NULL,
    `content_metadata_id` = NULL,
    `look_id` = NULL,
    `dashboard_id` = NULL,
    `look` = NULL,
    `dashboard` = NULL,
    initialize = function(`id`, `user_id`, `content_metadata_id`, `look_id`, `dashboard_id`, `look`, `dashboard`){
      if (!missing(`id`)) {
        stopifnot(is.numeric(`id`), length(`id`) == 1)
        self$`id` <- `id`
      }
      if (!missing(`user_id`)) {
        stopifnot(is.numeric(`user_id`), length(`user_id`) == 1)
        self$`user_id` <- `user_id`
      }
      if (!missing(`content_metadata_id`)) {
        stopifnot(is.numeric(`content_metadata_id`), length(`content_metadata_id`) == 1)
        self$`content_metadata_id` <- `content_metadata_id`
      }
      if (!missing(`look_id`)) {
        stopifnot(is.numeric(`look_id`), length(`look_id`) == 1)
        self$`look_id` <- `look_id`
      }
      if (!missing(`dashboard_id`)) {
        stopifnot(is.numeric(`dashboard_id`), length(`dashboard_id`) == 1)
        self$`dashboard_id` <- `dashboard_id`
      }
      if (!missing(`look`)) {
        stopifnot(R6::is.R6(`look`))
        self$`look` <- `look`
      }
      if (!missing(`dashboard`)) {
        stopifnot(R6::is.R6(`dashboard`))
        self$`dashboard` <- `dashboard`
      }
    },
    toJSON = function() {
      ContentFavoriteObject <- list()
      if (!is.null(self$`id`)) {
        ContentFavoriteObject[['id']] <- self$`id`
      }
      if (!is.null(self$`user_id`)) {
        ContentFavoriteObject[['user_id']] <- self$`user_id`
      }
      if (!is.null(self$`content_metadata_id`)) {
        ContentFavoriteObject[['content_metadata_id']] <- self$`content_metadata_id`
      }
      if (!is.null(self$`look_id`)) {
        ContentFavoriteObject[['look_id']] <- self$`look_id`
      }
      if (!is.null(self$`dashboard_id`)) {
        ContentFavoriteObject[['dashboard_id']] <- self$`dashboard_id`
      }
      if (!is.null(self$`look`)) {
        ContentFavoriteObject[['look']] <- self$`look`$toJSON()
      }
      if (!is.null(self$`dashboard`)) {
        ContentFavoriteObject[['dashboard']] <- self$`dashboard`$toJSON()
      }

      ContentFavoriteObject
    },
    fromJSON = function(ContentFavoriteJson) {
      ContentFavoriteObject <- jsonlite::fromJSON(ContentFavoriteJson)
      if (!is.null(ContentFavoriteObject$`id`)) {
        self$`id` <- ContentFavoriteObject$`id`
      }
      if (!is.null(ContentFavoriteObject$`user_id`)) {
        self$`user_id` <- ContentFavoriteObject$`user_id`
      }
      if (!is.null(ContentFavoriteObject$`content_metadata_id`)) {
        self$`content_metadata_id` <- ContentFavoriteObject$`content_metadata_id`
      }
      if (!is.null(ContentFavoriteObject$`look_id`)) {
        self$`look_id` <- ContentFavoriteObject$`look_id`
      }
      if (!is.null(ContentFavoriteObject$`dashboard_id`)) {
        self$`dashboard_id` <- ContentFavoriteObject$`dashboard_id`
      }
      if (!is.null(ContentFavoriteObject$`look`)) {
        lookObject <- LookBasic$new()
        lookObject$fromJSON(jsonlite::toJSON(ContentFavoriteObject$look, auto_unbox = TRUE))
        self$`look` <- lookObject
      }
      if (!is.null(ContentFavoriteObject$`dashboard`)) {
        dashboardObject <- DashboardBase$new()
        dashboardObject$fromJSON(jsonlite::toJSON(ContentFavoriteObject$dashboard, auto_unbox = TRUE))
        self$`dashboard` <- dashboardObject
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "id": %d,
           "user_id": %d,
           "content_metadata_id": %d,
           "look_id": %d,
           "dashboard_id": %d,
           "look": %s,
           "dashboard": %s
        }',
        self$`id`,
        self$`user_id`,
        self$`content_metadata_id`,
        self$`look_id`,
        self$`dashboard_id`,
        self$`look`$toJSON(),
        self$`dashboard`$toJSON()
      )
    },
    fromJSONString = function(ContentFavoriteJson) {
      ContentFavoriteObject <- jsonlite::fromJSON(ContentFavoriteJson)
      self$`id` <- ContentFavoriteObject$`id`
      self$`user_id` <- ContentFavoriteObject$`user_id`
      self$`content_metadata_id` <- ContentFavoriteObject$`content_metadata_id`
      self$`look_id` <- ContentFavoriteObject$`look_id`
      self$`dashboard_id` <- ContentFavoriteObject$`dashboard_id`
      LookBasicObject <- LookBasic$new()
      self$`look` <- LookBasicObject$fromJSON(jsonlite::toJSON(ContentFavoriteObject$look, auto_unbox = TRUE))
      DashboardBaseObject <- DashboardBase$new()
      self$`dashboard` <- DashboardBaseObject$fromJSON(jsonlite::toJSON(ContentFavoriteObject$dashboard, auto_unbox = TRUE))
    }
  )
)
