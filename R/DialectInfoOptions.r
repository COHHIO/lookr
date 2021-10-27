# Looker API 4.0 (Beta) Reference
#
#  Welcome to the future! API 4.0 co-exists with APIs 3.1 and 3.0. (3.0 should no longer be used.) The \"beta\" tag means updates for API 4.0 may include breaking changes, but as always we will work to minimize them.  ### Authorization  The classic method of API authorization uses Looker **API3** credentials for authorization and access control. Looker admins can create API3 credentials on Looker's **Admin/Users** page.  API 4.0 adds additional ways to authenticate API requests, including OAuth and CORS requests.  For details, see [Looker API Authorization](https://looker.com/docs/r/api/authorization).   ### API Explorer  The API Explorer is a Looker-provided utility with many new and unique features for learning and using the Looker API and SDKs. It is a replacement for the 'api-docs' page currently provided on Looker instances.  For details, see the [API Explorer documentation](https://looker.com/docs/r/api/explorer).   ### Looker Language SDKs  The Looker API is a RESTful system that should be usable by any programming language capable of making HTTPS requests. SDKs for a variety of programming languages are also provided to streamline using the API. Looker has an OpenSource [sdk-codegen project](https://github.com/looker-open-source/sdk-codegen) that provides several language SDKs. Language SDKs generated by `sdk-codegen` have an Authentication manager that can automatically authenticate API requests when needed.  For details on available Looker SDKs, see [Looker API Client SDKs](https://looker.com/docs/r/api/client_sdks).   ### API Versioning  Future releases of Looker expand the latest API version release-by-release to securely expose more and more of the core power of the Looker platform to API client applications. API endpoints marked as \"beta\" may receive breaking changes without warning (but we will try to avoid doing that). Stable (non-beta) API endpoints should not receive breaking changes in future releases.  For details, see [Looker API Versioning](https://looker.com/docs/r/api/versioning).   ### In This Release  API 4.0 version was introduced so we can make adjustments to API functions, parameters, and response types to fix bugs and inconsistencies. These changes fall outside the bounds of non-breaking additive changes we can make to our stable API 3.1.  One benefit of these type adjustments in API 4.0 is dramatically better support for strongly typed languages like TypeScript, Kotlin, Swift, Go, C#, and more.  While API 3.1 is still the de-facto Looker API (\"current\", \"stable\", \"default\", etc), the bulk of our development activity has shifted to API 4.0, where all new features are added.  The API Explorer can be used to [interactively compare](https://looker.com/docs/r/api/explorer#comparing_api_versions) the differences between API 3.1 and 4.0.   ### API and SDK Support Policies  Looker API versions and language SDKs have varying support levels. Please read the API and SDK [support policies](https://looker.com/docs/r/api/support-policy) for more information.   
#
# OpenAPI spec version: 4.0.21.18
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' DialectInfoOptions Class
#'
#' @field additional_params 
#' @field auth 
#' @field host 
#' @field oauth_credentials 
#' @field project_name 
#' @field schema 
#' @field ssl 
#' @field timezone 
#' @field tmp_table 
#' @field username_required 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite parse_json toJSON
#' @export
DialectInfoOptions <- R6::R6Class(
  'DialectInfoOptions',
  public = list(
    `additional_params` = NULL,
    `auth` = NULL,
    `host` = NULL,
    `oauth_credentials` = NULL,
    `project_name` = NULL,
    `schema` = NULL,
    `ssl` = NULL,
    `timezone` = NULL,
    `tmp_table` = NULL,
    `username_required` = NULL,
    initialize = function(`additional_params`, `auth`, `host`, `oauth_credentials`, `project_name`, `schema`, `ssl`, `timezone`, `tmp_table`, `username_required`){
      if (!missing(`additional_params`)) {
        self$`additional_params` <- `additional_params`
      }
      if (!missing(`auth`)) {
        self$`auth` <- `auth`
      }
      if (!missing(`host`)) {
        self$`host` <- `host`
      }
      if (!missing(`oauth_credentials`)) {
        self$`oauth_credentials` <- `oauth_credentials`
      }
      if (!missing(`project_name`)) {
        self$`project_name` <- `project_name`
      }
      if (!missing(`schema`)) {
        self$`schema` <- `schema`
      }
      if (!missing(`ssl`)) {
        self$`ssl` <- `ssl`
      }
      if (!missing(`timezone`)) {
        self$`timezone` <- `timezone`
      }
      if (!missing(`tmp_table`)) {
        self$`tmp_table` <- `tmp_table`
      }
      if (!missing(`username_required`)) {
        self$`username_required` <- `username_required`
      }
    },
    toJSON = function() {
      DialectInfoOptionsObject <- list()
      if (!is.null(self$`additional_params`)) {
        DialectInfoOptionsObject[['additional_params']] <- self$`additional_params`
      }
      if (!is.null(self$`auth`)) {
        DialectInfoOptionsObject[['auth']] <- self$`auth`
      }
      if (!is.null(self$`host`)) {
        DialectInfoOptionsObject[['host']] <- self$`host`
      }
      if (!is.null(self$`oauth_credentials`)) {
        DialectInfoOptionsObject[['oauth_credentials']] <- self$`oauth_credentials`
      }
      if (!is.null(self$`project_name`)) {
        DialectInfoOptionsObject[['project_name']] <- self$`project_name`
      }
      if (!is.null(self$`schema`)) {
        DialectInfoOptionsObject[['schema']] <- self$`schema`
      }
      if (!is.null(self$`ssl`)) {
        DialectInfoOptionsObject[['ssl']] <- self$`ssl`
      }
      if (!is.null(self$`timezone`)) {
        DialectInfoOptionsObject[['timezone']] <- self$`timezone`
      }
      if (!is.null(self$`tmp_table`)) {
        DialectInfoOptionsObject[['tmp_table']] <- self$`tmp_table`
      }
      if (!is.null(self$`username_required`)) {
        DialectInfoOptionsObject[['username_required']] <- self$`username_required`
      }

      DialectInfoOptionsObject
    },
    fromJSONObject = function(DialectInfoOptionsJsonObject) {
      DialectInfoOptionsObject <- DialectInfoOptionsJsonObject #jsonlite::fromJSON(DialectInfoOptionsJson, simplifyVector = FALSE)
      if (!is.null(DialectInfoOptionsObject$`additional_params`)) {
        self$`additional_params` <- DialectInfoOptionsObject$`additional_params`
      }
      if (!is.null(DialectInfoOptionsObject$`auth`)) {
        self$`auth` <- DialectInfoOptionsObject$`auth`
      }
      if (!is.null(DialectInfoOptionsObject$`host`)) {
        self$`host` <- DialectInfoOptionsObject$`host`
      }
      if (!is.null(DialectInfoOptionsObject$`oauth_credentials`)) {
        self$`oauth_credentials` <- DialectInfoOptionsObject$`oauth_credentials`
      }
      if (!is.null(DialectInfoOptionsObject$`project_name`)) {
        self$`project_name` <- DialectInfoOptionsObject$`project_name`
      }
      if (!is.null(DialectInfoOptionsObject$`schema`)) {
        self$`schema` <- DialectInfoOptionsObject$`schema`
      }
      if (!is.null(DialectInfoOptionsObject$`ssl`)) {
        self$`ssl` <- DialectInfoOptionsObject$`ssl`
      }
      if (!is.null(DialectInfoOptionsObject$`timezone`)) {
        self$`timezone` <- DialectInfoOptionsObject$`timezone`
      }
      if (!is.null(DialectInfoOptionsObject$`tmp_table`)) {
        self$`tmp_table` <- DialectInfoOptionsObject$`tmp_table`
      }
      if (!is.null(DialectInfoOptionsObject$`username_required`)) {
        self$`username_required` <- DialectInfoOptionsObject$`username_required`
      }
    },
    fromJSON = function(DialectInfoOptionsJson) {
      DialectInfoOptionsObject <- jsonlite::fromJSON(DialectInfoOptionsJson, simplifyVector = FALSE)
      self$fromJSONObject(DialectInfoOptionsObject)
    },
    toJSONString = function() {
       sprintf(
        '{
           "additional_params": %s,
           "auth": %s,
           "host": %s,
           "oauth_credentials": %s,
           "project_name": %s,
           "schema": %s,
           "ssl": %s,
           "timezone": %s,
           "tmp_table": %s,
           "username_required": %s
        }',
        self$`additional_params`,
        self$`auth`,
        self$`host`,
        self$`oauth_credentials`,
        self$`project_name`,
        self$`schema`,
        self$`ssl`,
        self$`timezone`,
        self$`tmp_table`,
        self$`username_required`
      )
    },
    fromJSONString = function(DialectInfoOptionsJson) {
      DialectInfoOptionsObject <- jsonlite::fromJSON(DialectInfoOptionsJson, simplifyVector = FALSE)
      self$`additional_params` <- DialectInfoOptionsObject$`additional_params`
      self$`auth` <- DialectInfoOptionsObject$`auth`
      self$`host` <- DialectInfoOptionsObject$`host`
      self$`oauth_credentials` <- DialectInfoOptionsObject$`oauth_credentials`
      self$`project_name` <- DialectInfoOptionsObject$`project_name`
      self$`schema` <- DialectInfoOptionsObject$`schema`
      self$`ssl` <- DialectInfoOptionsObject$`ssl`
      self$`timezone` <- DialectInfoOptionsObject$`timezone`
      self$`tmp_table` <- DialectInfoOptionsObject$`tmp_table`
      self$`username_required` <- DialectInfoOptionsObject$`username_required`
    }
  )
)
