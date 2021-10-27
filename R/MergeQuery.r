# Looker API 4.0 (Beta) Reference
#
#  Welcome to the future! API 4.0 co-exists with APIs 3.1 and 3.0. (3.0 should no longer be used.) The \"beta\" tag means updates for API 4.0 may include breaking changes, but as always we will work to minimize them.  ### Authorization  The classic method of API authorization uses Looker **API3** credentials for authorization and access control. Looker admins can create API3 credentials on Looker's **Admin/Users** page.  API 4.0 adds additional ways to authenticate API requests, including OAuth and CORS requests.  For details, see [Looker API Authorization](https://looker.com/docs/r/api/authorization).   ### API Explorer  The API Explorer is a Looker-provided utility with many new and unique features for learning and using the Looker API and SDKs. It is a replacement for the 'api-docs' page currently provided on Looker instances.  For details, see the [API Explorer documentation](https://looker.com/docs/r/api/explorer).   ### Looker Language SDKs  The Looker API is a RESTful system that should be usable by any programming language capable of making HTTPS requests. SDKs for a variety of programming languages are also provided to streamline using the API. Looker has an OpenSource [sdk-codegen project](https://github.com/looker-open-source/sdk-codegen) that provides several language SDKs. Language SDKs generated by `sdk-codegen` have an Authentication manager that can automatically authenticate API requests when needed.  For details on available Looker SDKs, see [Looker API Client SDKs](https://looker.com/docs/r/api/client_sdks).   ### API Versioning  Future releases of Looker expand the latest API version release-by-release to securely expose more and more of the core power of the Looker platform to API client applications. API endpoints marked as \"beta\" may receive breaking changes without warning (but we will try to avoid doing that). Stable (non-beta) API endpoints should not receive breaking changes in future releases.  For details, see [Looker API Versioning](https://looker.com/docs/r/api/versioning).   ### In This Release  API 4.0 version was introduced so we can make adjustments to API functions, parameters, and response types to fix bugs and inconsistencies. These changes fall outside the bounds of non-breaking additive changes we can make to our stable API 3.1.  One benefit of these type adjustments in API 4.0 is dramatically better support for strongly typed languages like TypeScript, Kotlin, Swift, Go, C#, and more.  While API 3.1 is still the de-facto Looker API (\"current\", \"stable\", \"default\", etc), the bulk of our development activity has shifted to API 4.0, where all new features are added.  The API Explorer can be used to [interactively compare](https://looker.com/docs/r/api/explorer#comparing_api_versions) the differences between API 3.1 and 4.0.   ### API and SDK Support Policies  Looker API versions and language SDKs have varying support levels. Please read the API and SDK [support policies](https://looker.com/docs/r/api/support-policy) for more information.   
#
# OpenAPI spec version: 4.0.21.18
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' MergeQuery Class
#'
#' @field can 
#' @field column_limit 
#' @field dynamic_fields 
#' @field id 
#' @field pivots 
#' @field result_maker_id 
#' @field sorts 
#' @field source_queries 
#' @field total 
#' @field vis_config 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite parse_json toJSON
#' @export
MergeQuery <- R6::R6Class(
  'MergeQuery',
  public = list(
    `can` = NULL,
    `column_limit` = NULL,
    `dynamic_fields` = NULL,
    `id` = NULL,
    `pivots` = NULL,
    `result_maker_id` = NULL,
    `sorts` = NULL,
    `source_queries` = NULL,
    `total` = NULL,
    `vis_config` = NULL,
    initialize = function(`can`, `column_limit`, `dynamic_fields`, `id`, `pivots`, `result_maker_id`, `sorts`, `source_queries`, `total`, `vis_config`){
      if (!missing(`can`)) {
        self$`can` <- `can`
      }
      if (!missing(`column_limit`)) {
        stopifnot(is.character(`column_limit`), length(`column_limit`) == 1)
        self$`column_limit` <- `column_limit`
      }
      if (!missing(`dynamic_fields`)) {
        stopifnot(is.character(`dynamic_fields`), length(`dynamic_fields`) == 1)
        self$`dynamic_fields` <- `dynamic_fields`
      }
      if (!missing(`id`)) {
        stopifnot(is.character(`id`), length(`id`) == 1)
        self$`id` <- `id`
      }
      if (!missing(`pivots`)) {
        stopifnot(is.list(`pivots`), length(`pivots`) != 0)
        lapply(`pivots`, function(x) stopifnot(is.character(x)))
        self$`pivots` <- `pivots`
      }
      if (!missing(`result_maker_id`)) {
        stopifnot(is.numeric(`result_maker_id`), length(`result_maker_id`) == 1)
        self$`result_maker_id` <- `result_maker_id`
      }
      if (!missing(`sorts`)) {
        stopifnot(is.list(`sorts`), length(`sorts`) != 0)
        lapply(`sorts`, function(x) stopifnot(is.character(x)))
        self$`sorts` <- `sorts`
      }
      if (!missing(`source_queries`)) {
        stopifnot(is.list(`source_queries`), length(`source_queries`) != 0)
        lapply(`source_queries`, function(x) stopifnot(R6::is.R6(x)))
        self$`source_queries` <- `source_queries`
      }
      if (!missing(`total`)) {
        self$`total` <- `total`
      }
      if (!missing(`vis_config`)) {
        self$`vis_config` <- `vis_config`
      }
    },
    toJSON = function() {
      MergeQueryObject <- list()
      if (!is.null(self$`can`)) {
        MergeQueryObject[['can']] <- self$`can`
      }
      if (!is.null(self$`column_limit`)) {
        MergeQueryObject[['column_limit']] <- self$`column_limit`
      }
      if (!is.null(self$`dynamic_fields`)) {
        MergeQueryObject[['dynamic_fields']] <- self$`dynamic_fields`
      }
      if (!is.null(self$`id`)) {
        MergeQueryObject[['id']] <- self$`id`
      }
      if (!is.null(self$`pivots`)) {
        MergeQueryObject[['pivots']] <- self$`pivots`
      }
      if (!is.null(self$`result_maker_id`)) {
        MergeQueryObject[['result_maker_id']] <- self$`result_maker_id`
      }
      if (!is.null(self$`sorts`)) {
        MergeQueryObject[['sorts']] <- self$`sorts`
      }
      if (!is.null(self$`source_queries`)) {
        MergeQueryObject[['source_queries']] <- lapply(self$`source_queries`, function(x) x$toJSON())
      }
      if (!is.null(self$`total`)) {
        MergeQueryObject[['total']] <- self$`total`
      }
      if (!is.null(self$`vis_config`)) {
        MergeQueryObject[['vis_config']] <- self$`vis_config`
      }

      MergeQueryObject
    },
    fromJSONObject = function(MergeQueryJsonObject) {
      MergeQueryObject <- MergeQueryJsonObject #jsonlite::fromJSON(MergeQueryJson, simplifyVector = FALSE)
      if (!is.null(MergeQueryObject$`can`)) {
        self$`can` <- MergeQueryObject$`can`
      }
      if (!is.null(MergeQueryObject$`column_limit`)) {
        self$`column_limit` <- MergeQueryObject$`column_limit`
      }
      if (!is.null(MergeQueryObject$`dynamic_fields`)) {
        self$`dynamic_fields` <- MergeQueryObject$`dynamic_fields`
      }
      if (!is.null(MergeQueryObject$`id`)) {
        self$`id` <- MergeQueryObject$`id`
      }
      if (!is.null(MergeQueryObject$`pivots`)) {
        self$`pivots` <- MergeQueryObject$`pivots`
      }
      if (!is.null(MergeQueryObject$`result_maker_id`)) {
        self$`result_maker_id` <- MergeQueryObject$`result_maker_id`
      }
      if (!is.null(MergeQueryObject$`sorts`)) {
        self$`sorts` <- MergeQueryObject$`sorts`
      }
      if (!is.null(MergeQueryObject$`source_queries`)) {
        self$`source_queries` <- lapply(MergeQueryObject$`source_queries`, function(x) {
          source_queriesObject <- MergeQuerySourceQuery$new()
          source_queriesObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          source_queriesObject
        })
      }
      if (!is.null(MergeQueryObject$`total`)) {
        self$`total` <- MergeQueryObject$`total`
      }
      if (!is.null(MergeQueryObject$`vis_config`)) {
        self$`vis_config` <- MergeQueryObject$`vis_config`
      }
    },
    fromJSON = function(MergeQueryJson) {
      MergeQueryObject <- jsonlite::fromJSON(MergeQueryJson, simplifyVector = FALSE)
      self$fromJSONObject(MergeQueryObject)
    },
    toJSONString = function() {
       sprintf(
        '{
           "can": %s,
           "column_limit": %s,
           "dynamic_fields": %s,
           "id": %s,
           "pivots": [%s],
           "result_maker_id": %d,
           "sorts": [%s],
           "source_queries": [%s],
           "total": %s,
           "vis_config": %s
        }',
        self$`can`,
        self$`column_limit`,
        self$`dynamic_fields`,
        self$`id`,
        lapply(self$`pivots`, function(x) paste(paste0('"', x, '"'), sep=",")),
        self$`result_maker_id`,
        lapply(self$`sorts`, function(x) paste(paste0('"', x, '"'), sep=",")),
        lapply(self$`source_queries`, function(x) paste(x$toJSON(), sep=",")),
        self$`total`,
        self$`vis_config`
      )
    },
    fromJSONString = function(MergeQueryJson) {
      MergeQueryObject <- jsonlite::fromJSON(MergeQueryJson, simplifyVector = FALSE)
      self$`can` <- MergeQueryObject$`can`
      self$`column_limit` <- MergeQueryObject$`column_limit`
      self$`dynamic_fields` <- MergeQueryObject$`dynamic_fields`
      self$`id` <- MergeQueryObject$`id`
      self$`pivots` <- MergeQueryObject$`pivots`
      self$`result_maker_id` <- MergeQueryObject$`result_maker_id`
      self$`sorts` <- MergeQueryObject$`sorts`
      self$`source_queries` <- lapply(MergeQueryObject$`source_queries`, function(x) MergeQuerySourceQuery$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self$`total` <- MergeQueryObject$`total`
      self$`vis_config` <- MergeQueryObject$`vis_config`
    }
  )
)
