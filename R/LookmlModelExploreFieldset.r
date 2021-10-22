# Looker API 3.1 Reference
#
# ### Authorization  The classic method of API authorization uses Looker **API3** credentials for authorization and access control. Looker admins can create API3 credentials on Looker's **Admin/Users** page.  API 4.0 adds additional ways to authenticate API requests, including OAuth and CORS requests.  For details, see [Looker API Authorization](https://looker.com/docs/r/api/authorization).   ### API Explorer  The API Explorer is a Looker-provided utility with many new and unique features for learning and using the Looker API and SDKs. It is a replacement for the 'api-docs' page currently provided on Looker instances.  For details, see the [API Explorer documentation](https://looker.com/docs/r/api/explorer).   ### Looker Language SDKs  The Looker API is a RESTful system that should be usable by any programming language capable of making HTTPS requests. SDKs for a variety of programming languages are also provided to streamline using the API. Looker has an OpenSource [sdk-codegen project](https://github.com/looker-open-source/sdk-codegen) that provides several language SDKs. Language SDKs generated by `sdk-codegen` have an Authentication manager that can automatically authenticate API requests when needed.  For details on available Looker SDKs, see [Looker API Client SDKs](https://looker.com/docs/r/api/client_sdks).   ### API Versioning  Future releases of Looker expand the latest API version release-by-release to securely expose more and more of the core power of the Looker platform to API client applications. API endpoints marked as \"beta\" may receive breaking changes without warning (but we will try to avoid doing that). Stable (non-beta) API endpoints should not receive breaking changes in future releases.  For details, see [Looker API Versioning](https://looker.com/docs/r/api/versioning).   ### Try It Out!  This section describes the existing 'api-docs' page available on Looker instances. We recommend using the [API Explorer](https://looker.com/docs/r/api/explorer) instead.  The 'api-docs' page served by the Looker instance includes 'Try It Out!' buttons for each API method. After logging in with API3 credentials, you can use the \"Try It Out!\" buttons to call the API directly from the documentation page to interactively explore API features and responses.  **NOTE**! With great power comes great responsibility: The \"Try It Out!\" button makes API calls to your live Looker instance. Be especially careful with destructive API operations such as `delete_user` or similar. There is no \"undo\" for API operations. (API Explorer's \"Run It\" feature requires a check mark before running API operations that can change data.)   ### In This Release  The following are a few examples of noteworthy items that have changed between API 3.0 and API 3.1. For more comprehensive coverage of API changes, please see the release notes for your Looker release.  ### Examples of new things added in API 3.1 (compared to API 3.0):  * [Dashboard construction](#!/3.1/Dashboard/) APIs * [Themes](#!/3.1/Theme/) and [custom color collections](#!/3.1/ColorCollection) APIs * Create and run [SQL Runner](#!/3.1/Query/run_sql_query) queries * Create and run [merged results](#!/3.1/Query/create_merge_query) queries * Create and modify [dashboard filters](#!/3.1/Dashboard/create_dashboard_filter) * Create and modify [password requirements](#!/3.1/Auth/password_config)  ### Deprecated in API 3.0  The following functions and properties have been deprecated in API 3.0.  They continue to exist and work in API 3.0 for the next several Looker releases but they have not been carried forward to API 3.1:  * Dashboard Prefetch functions * User access_filter functions * User API 1.0 credentials functions * Space.is_root and Space.is_user_root properties. Use Space.is_shared_root and Space.is_users_root instead.  ### Semantic changes in API 3.1:  * [all_looks()](#!/3.1/Look/all_looks) no longer includes soft-deleted looks, matching [all_dashboards()](#!/3.1/Dashboard/all_dashboards) behavior. You can find soft-deleted looks using [search_looks()](#!/3.1/Look/search_looks) with the `deleted` param set to True. * [all_spaces()](#!/3.1/Space/all_spaces) no longer includes duplicate items * [search_users()](#!/3.1/User/search_users) no longer accepts Y,y,1,0,N,n for Boolean params, only \"true\" and \"false\". * For greater client and network compatibility, [render_task_results](#!/3.1/RenderTask/render_task_results) now returns HTTP status **202 Accepted** instead of HTTP status **102 Processing** * [all_running_queries()](#!/3.1/Query/all_running_queries) and [kill_query](#!/3.1/Query/kill_query) functions have moved into the [Query](#!/3.1/Query/) function group.  The API Explorer can be used to [interactively compare](https://looker.com/docs/r/api/explorer#comparing_api_versions) the differences between API 3.1 and 4.0.   ### API and SDK Support Policies  Looker API versions and language SDKs have varying support levels. Please read the API and SDK [support policies](https://looker.com/docs/r/api/support-policy) for more information.   
#
# OpenAPI spec version: 3.1.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' LookmlModelExploreFieldset Class
#'
#' @field dimensions 
#' @field measures 
#' @field filters 
#' @field parameters 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
LookmlModelExploreFieldset <- R6::R6Class(
  'LookmlModelExploreFieldset',
  public = list(
    `dimensions` = NULL,
    `measures` = NULL,
    `filters` = NULL,
    `parameters` = NULL,
    initialize = function(`dimensions`, `measures`, `filters`, `parameters`){
      if (!missing(`dimensions`)) {
        stopifnot(is.list(`dimensions`), length(`dimensions`) != 0)
        lapply(`dimensions`, function(x) stopifnot(R6::is.R6(x)))
        self$`dimensions` <- `dimensions`
      }
      if (!missing(`measures`)) {
        stopifnot(is.list(`measures`), length(`measures`) != 0)
        lapply(`measures`, function(x) stopifnot(R6::is.R6(x)))
        self$`measures` <- `measures`
      }
      if (!missing(`filters`)) {
        stopifnot(is.list(`filters`), length(`filters`) != 0)
        lapply(`filters`, function(x) stopifnot(R6::is.R6(x)))
        self$`filters` <- `filters`
      }
      if (!missing(`parameters`)) {
        stopifnot(is.list(`parameters`), length(`parameters`) != 0)
        lapply(`parameters`, function(x) stopifnot(R6::is.R6(x)))
        self$`parameters` <- `parameters`
      }
    },
    toJSON = function() {
      LookmlModelExploreFieldsetObject <- list()
      if (!is.null(self$`dimensions`)) {
        LookmlModelExploreFieldsetObject[['dimensions']] <- lapply(self$`dimensions`, function(x) x$toJSON())
      }
      if (!is.null(self$`measures`)) {
        LookmlModelExploreFieldsetObject[['measures']] <- lapply(self$`measures`, function(x) x$toJSON())
      }
      if (!is.null(self$`filters`)) {
        LookmlModelExploreFieldsetObject[['filters']] <- lapply(self$`filters`, function(x) x$toJSON())
      }
      if (!is.null(self$`parameters`)) {
        LookmlModelExploreFieldsetObject[['parameters']] <- lapply(self$`parameters`, function(x) x$toJSON())
      }

      LookmlModelExploreFieldsetObject
    },
    fromJSON = function(LookmlModelExploreFieldsetJson) {
      LookmlModelExploreFieldsetObject <- jsonlite::fromJSON(LookmlModelExploreFieldsetJson)
      if (!is.null(LookmlModelExploreFieldsetObject$`dimensions`)) {
        self$`dimensions` <- lapply(LookmlModelExploreFieldsetObject$`dimensions`, function(x) {
          dimensionsObject <- LookmlModelExploreField$new()
          dimensionsObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          dimensionsObject
        })
      }
      if (!is.null(LookmlModelExploreFieldsetObject$`measures`)) {
        self$`measures` <- lapply(LookmlModelExploreFieldsetObject$`measures`, function(x) {
          measuresObject <- LookmlModelExploreField$new()
          measuresObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          measuresObject
        })
      }
      if (!is.null(LookmlModelExploreFieldsetObject$`filters`)) {
        self$`filters` <- lapply(LookmlModelExploreFieldsetObject$`filters`, function(x) {
          filtersObject <- LookmlModelExploreField$new()
          filtersObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          filtersObject
        })
      }
      if (!is.null(LookmlModelExploreFieldsetObject$`parameters`)) {
        self$`parameters` <- lapply(LookmlModelExploreFieldsetObject$`parameters`, function(x) {
          parametersObject <- LookmlModelExploreField$new()
          parametersObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          parametersObject
        })
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "dimensions": [%s],
           "measures": [%s],
           "filters": [%s],
           "parameters": [%s]
        }',
        lapply(self$`dimensions`, function(x) paste(x$toJSON(), sep=",")),
        lapply(self$`measures`, function(x) paste(x$toJSON(), sep=",")),
        lapply(self$`filters`, function(x) paste(x$toJSON(), sep=",")),
        lapply(self$`parameters`, function(x) paste(x$toJSON(), sep=","))
      )
    },
    fromJSONString = function(LookmlModelExploreFieldsetJson) {
      LookmlModelExploreFieldsetObject <- jsonlite::fromJSON(LookmlModelExploreFieldsetJson)
      self$`dimensions` <- lapply(LookmlModelExploreFieldsetObject$`dimensions`, function(x) LookmlModelExploreField$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self$`measures` <- lapply(LookmlModelExploreFieldsetObject$`measures`, function(x) LookmlModelExploreField$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self$`filters` <- lapply(LookmlModelExploreFieldsetObject$`filters`, function(x) LookmlModelExploreField$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self$`parameters` <- lapply(LookmlModelExploreFieldsetObject$`parameters`, function(x) LookmlModelExploreField$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
    }
  )
)
