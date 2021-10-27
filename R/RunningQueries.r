# Looker API 4.0 (Beta) Reference
#
#  Welcome to the future! API 4.0 co-exists with APIs 3.1 and 3.0. (3.0 should no longer be used.) The \"beta\" tag means updates for API 4.0 may include breaking changes, but as always we will work to minimize them.  ### Authorization  The classic method of API authorization uses Looker **API3** credentials for authorization and access control. Looker admins can create API3 credentials on Looker's **Admin/Users** page.  API 4.0 adds additional ways to authenticate API requests, including OAuth and CORS requests.  For details, see [Looker API Authorization](https://looker.com/docs/r/api/authorization).   ### API Explorer  The API Explorer is a Looker-provided utility with many new and unique features for learning and using the Looker API and SDKs. It is a replacement for the 'api-docs' page currently provided on Looker instances.  For details, see the [API Explorer documentation](https://looker.com/docs/r/api/explorer).   ### Looker Language SDKs  The Looker API is a RESTful system that should be usable by any programming language capable of making HTTPS requests. SDKs for a variety of programming languages are also provided to streamline using the API. Looker has an OpenSource [sdk-codegen project](https://github.com/looker-open-source/sdk-codegen) that provides several language SDKs. Language SDKs generated by `sdk-codegen` have an Authentication manager that can automatically authenticate API requests when needed.  For details on available Looker SDKs, see [Looker API Client SDKs](https://looker.com/docs/r/api/client_sdks).   ### API Versioning  Future releases of Looker expand the latest API version release-by-release to securely expose more and more of the core power of the Looker platform to API client applications. API endpoints marked as \"beta\" may receive breaking changes without warning (but we will try to avoid doing that). Stable (non-beta) API endpoints should not receive breaking changes in future releases.  For details, see [Looker API Versioning](https://looker.com/docs/r/api/versioning).   ### In This Release  API 4.0 version was introduced so we can make adjustments to API functions, parameters, and response types to fix bugs and inconsistencies. These changes fall outside the bounds of non-breaking additive changes we can make to our stable API 3.1.  One benefit of these type adjustments in API 4.0 is dramatically better support for strongly typed languages like TypeScript, Kotlin, Swift, Go, C#, and more.  While API 3.1 is still the de-facto Looker API (\"current\", \"stable\", \"default\", etc), the bulk of our development activity has shifted to API 4.0, where all new features are added.  The API Explorer can be used to [interactively compare](https://looker.com/docs/r/api/explorer#comparing_api_versions) the differences between API 3.1 and 4.0.   ### API and SDK Support Policies  Looker API versions and language SDKs have varying support levels. Please read the API and SDK [support policies](https://looker.com/docs/r/api/support-policy) for more information.   
#
# OpenAPI spec version: 4.0.21.18
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' RunningQueries Class
#'
#' @field can 
#' @field id 
#' @field user 
#' @field query 
#' @field sql_query 
#' @field look 
#' @field created_at 
#' @field completed_at 
#' @field query_id 
#' @field source 
#' @field node_id 
#' @field slug 
#' @field query_task_id 
#' @field cache_key 
#' @field connection_name 
#' @field dialect 
#' @field connection_id 
#' @field message 
#' @field status 
#' @field runtime 
#' @field sql 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite parse_json toJSON
#' @export
RunningQueries <- R6::R6Class(
  'RunningQueries',
  public = list(
    `can` = NULL,
    `id` = NULL,
    `user` = NULL,
    `query` = NULL,
    `sql_query` = NULL,
    `look` = NULL,
    `created_at` = NULL,
    `completed_at` = NULL,
    `query_id` = NULL,
    `source` = NULL,
    `node_id` = NULL,
    `slug` = NULL,
    `query_task_id` = NULL,
    `cache_key` = NULL,
    `connection_name` = NULL,
    `dialect` = NULL,
    `connection_id` = NULL,
    `message` = NULL,
    `status` = NULL,
    `runtime` = NULL,
    `sql` = NULL,
    initialize = function(`can`, `id`, `user`, `query`, `sql_query`, `look`, `created_at`, `completed_at`, `query_id`, `source`, `node_id`, `slug`, `query_task_id`, `cache_key`, `connection_name`, `dialect`, `connection_id`, `message`, `status`, `runtime`, `sql`){
      if (!missing(`can`)) {
        self$`can` <- `can`
      }
      if (!missing(`id`)) {
        stopifnot(is.numeric(`id`), length(`id`) == 1)
        self$`id` <- `id`
      }
      if (!missing(`user`)) {
        stopifnot(R6::is.R6(`user`))
        self$`user` <- `user`
      }
      if (!missing(`query`)) {
        stopifnot(R6::is.R6(`query`))
        self$`query` <- `query`
      }
      if (!missing(`sql_query`)) {
        stopifnot(R6::is.R6(`sql_query`))
        self$`sql_query` <- `sql_query`
      }
      if (!missing(`look`)) {
        stopifnot(R6::is.R6(`look`))
        self$`look` <- `look`
      }
      if (!missing(`created_at`)) {
        stopifnot(is.character(`created_at`), length(`created_at`) == 1)
        self$`created_at` <- `created_at`
      }
      if (!missing(`completed_at`)) {
        stopifnot(is.character(`completed_at`), length(`completed_at`) == 1)
        self$`completed_at` <- `completed_at`
      }
      if (!missing(`query_id`)) {
        stopifnot(is.character(`query_id`), length(`query_id`) == 1)
        self$`query_id` <- `query_id`
      }
      if (!missing(`source`)) {
        stopifnot(is.character(`source`), length(`source`) == 1)
        self$`source` <- `source`
      }
      if (!missing(`node_id`)) {
        stopifnot(is.character(`node_id`), length(`node_id`) == 1)
        self$`node_id` <- `node_id`
      }
      if (!missing(`slug`)) {
        stopifnot(is.character(`slug`), length(`slug`) == 1)
        self$`slug` <- `slug`
      }
      if (!missing(`query_task_id`)) {
        stopifnot(is.character(`query_task_id`), length(`query_task_id`) == 1)
        self$`query_task_id` <- `query_task_id`
      }
      if (!missing(`cache_key`)) {
        stopifnot(is.character(`cache_key`), length(`cache_key`) == 1)
        self$`cache_key` <- `cache_key`
      }
      if (!missing(`connection_name`)) {
        stopifnot(is.character(`connection_name`), length(`connection_name`) == 1)
        self$`connection_name` <- `connection_name`
      }
      if (!missing(`dialect`)) {
        stopifnot(is.character(`dialect`), length(`dialect`) == 1)
        self$`dialect` <- `dialect`
      }
      if (!missing(`connection_id`)) {
        stopifnot(is.character(`connection_id`), length(`connection_id`) == 1)
        self$`connection_id` <- `connection_id`
      }
      if (!missing(`message`)) {
        stopifnot(is.character(`message`), length(`message`) == 1)
        self$`message` <- `message`
      }
      if (!missing(`status`)) {
        stopifnot(is.character(`status`), length(`status`) == 1)
        self$`status` <- `status`
      }
      if (!missing(`runtime`)) {
        stopifnot(is.numeric(`runtime`), length(`runtime`) == 1)
        self$`runtime` <- `runtime`
      }
      if (!missing(`sql`)) {
        stopifnot(is.character(`sql`), length(`sql`) == 1)
        self$`sql` <- `sql`
      }
    },
    toJSON = function() {
      RunningQueriesObject <- list()
      if (!is.null(self$`can`)) {
        RunningQueriesObject[['can']] <- self$`can`
      }
      if (!is.null(self$`id`)) {
        RunningQueriesObject[['id']] <- self$`id`
      }
      if (!is.null(self$`user`)) {
        RunningQueriesObject[['user']] <- self$`user`$toJSON()
      }
      if (!is.null(self$`query`)) {
        RunningQueriesObject[['query']] <- self$`query`$toJSON()
      }
      if (!is.null(self$`sql_query`)) {
        RunningQueriesObject[['sql_query']] <- self$`sql_query`$toJSON()
      }
      if (!is.null(self$`look`)) {
        RunningQueriesObject[['look']] <- self$`look`$toJSON()
      }
      if (!is.null(self$`created_at`)) {
        RunningQueriesObject[['created_at']] <- self$`created_at`
      }
      if (!is.null(self$`completed_at`)) {
        RunningQueriesObject[['completed_at']] <- self$`completed_at`
      }
      if (!is.null(self$`query_id`)) {
        RunningQueriesObject[['query_id']] <- self$`query_id`
      }
      if (!is.null(self$`source`)) {
        RunningQueriesObject[['source']] <- self$`source`
      }
      if (!is.null(self$`node_id`)) {
        RunningQueriesObject[['node_id']] <- self$`node_id`
      }
      if (!is.null(self$`slug`)) {
        RunningQueriesObject[['slug']] <- self$`slug`
      }
      if (!is.null(self$`query_task_id`)) {
        RunningQueriesObject[['query_task_id']] <- self$`query_task_id`
      }
      if (!is.null(self$`cache_key`)) {
        RunningQueriesObject[['cache_key']] <- self$`cache_key`
      }
      if (!is.null(self$`connection_name`)) {
        RunningQueriesObject[['connection_name']] <- self$`connection_name`
      }
      if (!is.null(self$`dialect`)) {
        RunningQueriesObject[['dialect']] <- self$`dialect`
      }
      if (!is.null(self$`connection_id`)) {
        RunningQueriesObject[['connection_id']] <- self$`connection_id`
      }
      if (!is.null(self$`message`)) {
        RunningQueriesObject[['message']] <- self$`message`
      }
      if (!is.null(self$`status`)) {
        RunningQueriesObject[['status']] <- self$`status`
      }
      if (!is.null(self$`runtime`)) {
        RunningQueriesObject[['runtime']] <- self$`runtime`
      }
      if (!is.null(self$`sql`)) {
        RunningQueriesObject[['sql']] <- self$`sql`
      }

      RunningQueriesObject
    },
    fromJSONObject = function(RunningQueriesJsonObject) {
      RunningQueriesObject <- RunningQueriesJsonObject #jsonlite::fromJSON(RunningQueriesJson, simplifyVector = FALSE)
      if (!is.null(RunningQueriesObject$`can`)) {
        self$`can` <- RunningQueriesObject$`can`
      }
      if (!is.null(RunningQueriesObject$`id`)) {
        self$`id` <- RunningQueriesObject$`id`
      }
      if (!is.null(RunningQueriesObject$`user`)) {
        userObject <- UserPublic$new()
        userObject$fromJSON(jsonlite::toJSON(RunningQueriesObject$user, auto_unbox = TRUE))
        self$`user` <- userObject
      }
      if (!is.null(RunningQueriesObject$`query`)) {
        queryObject <- Query$new()
        queryObject$fromJSON(jsonlite::toJSON(RunningQueriesObject$query, auto_unbox = TRUE))
        self$`query` <- queryObject
      }
      if (!is.null(RunningQueriesObject$`sql_query`)) {
        sql_queryObject <- SqlQuery$new()
        sql_queryObject$fromJSON(jsonlite::toJSON(RunningQueriesObject$sql_query, auto_unbox = TRUE))
        self$`sql_query` <- sql_queryObject
      }
      if (!is.null(RunningQueriesObject$`look`)) {
        lookObject <- LookBasic$new()
        lookObject$fromJSON(jsonlite::toJSON(RunningQueriesObject$look, auto_unbox = TRUE))
        self$`look` <- lookObject
      }
      if (!is.null(RunningQueriesObject$`created_at`)) {
        self$`created_at` <- RunningQueriesObject$`created_at`
      }
      if (!is.null(RunningQueriesObject$`completed_at`)) {
        self$`completed_at` <- RunningQueriesObject$`completed_at`
      }
      if (!is.null(RunningQueriesObject$`query_id`)) {
        self$`query_id` <- RunningQueriesObject$`query_id`
      }
      if (!is.null(RunningQueriesObject$`source`)) {
        self$`source` <- RunningQueriesObject$`source`
      }
      if (!is.null(RunningQueriesObject$`node_id`)) {
        self$`node_id` <- RunningQueriesObject$`node_id`
      }
      if (!is.null(RunningQueriesObject$`slug`)) {
        self$`slug` <- RunningQueriesObject$`slug`
      }
      if (!is.null(RunningQueriesObject$`query_task_id`)) {
        self$`query_task_id` <- RunningQueriesObject$`query_task_id`
      }
      if (!is.null(RunningQueriesObject$`cache_key`)) {
        self$`cache_key` <- RunningQueriesObject$`cache_key`
      }
      if (!is.null(RunningQueriesObject$`connection_name`)) {
        self$`connection_name` <- RunningQueriesObject$`connection_name`
      }
      if (!is.null(RunningQueriesObject$`dialect`)) {
        self$`dialect` <- RunningQueriesObject$`dialect`
      }
      if (!is.null(RunningQueriesObject$`connection_id`)) {
        self$`connection_id` <- RunningQueriesObject$`connection_id`
      }
      if (!is.null(RunningQueriesObject$`message`)) {
        self$`message` <- RunningQueriesObject$`message`
      }
      if (!is.null(RunningQueriesObject$`status`)) {
        self$`status` <- RunningQueriesObject$`status`
      }
      if (!is.null(RunningQueriesObject$`runtime`)) {
        self$`runtime` <- RunningQueriesObject$`runtime`
      }
      if (!is.null(RunningQueriesObject$`sql`)) {
        self$`sql` <- RunningQueriesObject$`sql`
      }
    },
    fromJSON = function(RunningQueriesJson) {
      RunningQueriesObject <- jsonlite::fromJSON(RunningQueriesJson, simplifyVector = FALSE)
      self$fromJSONObject(RunningQueriesObject)
    },
    toJSONString = function() {
       sprintf(
        '{
           "can": %s,
           "id": %d,
           "user": %s,
           "query": %s,
           "sql_query": %s,
           "look": %s,
           "created_at": %s,
           "completed_at": %s,
           "query_id": %s,
           "source": %s,
           "node_id": %s,
           "slug": %s,
           "query_task_id": %s,
           "cache_key": %s,
           "connection_name": %s,
           "dialect": %s,
           "connection_id": %s,
           "message": %s,
           "status": %s,
           "runtime": %d,
           "sql": %s
        }',
        self$`can`,
        self$`id`,
        self$`user`$toJSON(),
        self$`query`$toJSON(),
        self$`sql_query`$toJSON(),
        self$`look`$toJSON(),
        self$`created_at`,
        self$`completed_at`,
        self$`query_id`,
        self$`source`,
        self$`node_id`,
        self$`slug`,
        self$`query_task_id`,
        self$`cache_key`,
        self$`connection_name`,
        self$`dialect`,
        self$`connection_id`,
        self$`message`,
        self$`status`,
        self$`runtime`,
        self$`sql`
      )
    },
    fromJSONString = function(RunningQueriesJson) {
      RunningQueriesObject <- jsonlite::fromJSON(RunningQueriesJson, simplifyVector = FALSE)
      self$`can` <- RunningQueriesObject$`can`
      self$`id` <- RunningQueriesObject$`id`
      UserPublicObject <- UserPublic$new()
      self$`user` <- UserPublicObject$fromJSON(jsonlite::toJSON(RunningQueriesObject$user, auto_unbox = TRUE))
      QueryObject <- Query$new()
      self$`query` <- QueryObject$fromJSON(jsonlite::toJSON(RunningQueriesObject$query, auto_unbox = TRUE))
      SqlQueryObject <- SqlQuery$new()
      self$`sql_query` <- SqlQueryObject$fromJSON(jsonlite::toJSON(RunningQueriesObject$sql_query, auto_unbox = TRUE))
      LookBasicObject <- LookBasic$new()
      self$`look` <- LookBasicObject$fromJSON(jsonlite::toJSON(RunningQueriesObject$look, auto_unbox = TRUE))
      self$`created_at` <- RunningQueriesObject$`created_at`
      self$`completed_at` <- RunningQueriesObject$`completed_at`
      self$`query_id` <- RunningQueriesObject$`query_id`
      self$`source` <- RunningQueriesObject$`source`
      self$`node_id` <- RunningQueriesObject$`node_id`
      self$`slug` <- RunningQueriesObject$`slug`
      self$`query_task_id` <- RunningQueriesObject$`query_task_id`
      self$`cache_key` <- RunningQueriesObject$`cache_key`
      self$`connection_name` <- RunningQueriesObject$`connection_name`
      self$`dialect` <- RunningQueriesObject$`dialect`
      self$`connection_id` <- RunningQueriesObject$`connection_id`
      self$`message` <- RunningQueriesObject$`message`
      self$`status` <- RunningQueriesObject$`status`
      self$`runtime` <- RunningQueriesObject$`runtime`
      self$`sql` <- RunningQueriesObject$`sql`
    }
  )
)
