# Looker API 4.0 (Beta) Reference
#
#  Welcome to the future! API 4.0 co-exists with APIs 3.1 and 3.0. (3.0 should no longer be used.) The \"beta\" tag means updates for API 4.0 may include breaking changes, but as always we will work to minimize them.  ### Authorization  The classic method of API authorization uses Looker **API3** credentials for authorization and access control. Looker admins can create API3 credentials on Looker's **Admin/Users** page.  API 4.0 adds additional ways to authenticate API requests, including OAuth and CORS requests.  For details, see [Looker API Authorization](https://looker.com/docs/r/api/authorization).   ### API Explorer  The API Explorer is a Looker-provided utility with many new and unique features for learning and using the Looker API and SDKs. It is a replacement for the 'api-docs' page currently provided on Looker instances.  For details, see the [API Explorer documentation](https://looker.com/docs/r/api/explorer).   ### Looker Language SDKs  The Looker API is a RESTful system that should be usable by any programming language capable of making HTTPS requests. SDKs for a variety of programming languages are also provided to streamline using the API. Looker has an OpenSource [sdk-codegen project](https://github.com/looker-open-source/sdk-codegen) that provides several language SDKs. Language SDKs generated by `sdk-codegen` have an Authentication manager that can automatically authenticate API requests when needed.  For details on available Looker SDKs, see [Looker API Client SDKs](https://looker.com/docs/r/api/client_sdks).   ### API Versioning  Future releases of Looker expand the latest API version release-by-release to securely expose more and more of the core power of the Looker platform to API client applications. API endpoints marked as \"beta\" may receive breaking changes without warning (but we will try to avoid doing that). Stable (non-beta) API endpoints should not receive breaking changes in future releases.  For details, see [Looker API Versioning](https://looker.com/docs/r/api/versioning).   ### In This Release  API 4.0 version was introduced so we can make adjustments to API functions, parameters, and response types to fix bugs and inconsistencies. These changes fall outside the bounds of non-breaking additive changes we can make to our stable API 3.1.  One benefit of these type adjustments in API 4.0 is dramatically better support for strongly typed languages like TypeScript, Kotlin, Swift, Go, C#, and more.  While API 3.1 is still the de-facto Looker API (\"current\", \"stable\", \"default\", etc), the bulk of our development activity has shifted to API 4.0, where all new features are added.  The API Explorer can be used to [interactively compare](https://looker.com/docs/r/api/explorer#comparing_api_versions) the differences between API 3.1 and 4.0.   ### API and SDK Support Policies  Looker API versions and language SDKs have varying support levels. Please read the API and SDK [support policies](https://looker.com/docs/r/api/support-policy) for more information.   
#
# OpenAPI spec version: 4.0.21.18
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ApiVersionElement Class
#'
#' @field version 
#' @field full_version 
#' @field status 
#' @field swagger_url 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite parse_json toJSON
#' @export
ApiVersionElement <- R6::R6Class(
  'ApiVersionElement',
  public = list(
    `version` = NULL,
    `full_version` = NULL,
    `status` = NULL,
    `swagger_url` = NULL,
    initialize = function(`version`, `full_version`, `status`, `swagger_url`){
      if (!missing(`version`)) {
        stopifnot(is.character(`version`), length(`version`) == 1)
        self$`version` <- `version`
      }
      if (!missing(`full_version`)) {
        stopifnot(is.character(`full_version`), length(`full_version`) == 1)
        self$`full_version` <- `full_version`
      }
      if (!missing(`status`)) {
        stopifnot(is.character(`status`), length(`status`) == 1)
        self$`status` <- `status`
      }
      if (!missing(`swagger_url`)) {
        stopifnot(is.character(`swagger_url`), length(`swagger_url`) == 1)
        self$`swagger_url` <- `swagger_url`
      }
    },
    toJSON = function() {
      ApiVersionElementObject <- list()
      if (!is.null(self$`version`)) {
        ApiVersionElementObject[['version']] <- self$`version`
      }
      if (!is.null(self$`full_version`)) {
        ApiVersionElementObject[['full_version']] <- self$`full_version`
      }
      if (!is.null(self$`status`)) {
        ApiVersionElementObject[['status']] <- self$`status`
      }
      if (!is.null(self$`swagger_url`)) {
        ApiVersionElementObject[['swagger_url']] <- self$`swagger_url`
      }

      ApiVersionElementObject
    },
    fromJSONObject = function(ApiVersionElementJsonObject) {
      ApiVersionElementObject <- ApiVersionElementJsonObject #jsonlite::fromJSON(ApiVersionElementJson, simplifyVector = FALSE)
      if (!is.null(ApiVersionElementObject$`version`)) {
        self$`version` <- ApiVersionElementObject$`version`
      }
      if (!is.null(ApiVersionElementObject$`full_version`)) {
        self$`full_version` <- ApiVersionElementObject$`full_version`
      }
      if (!is.null(ApiVersionElementObject$`status`)) {
        self$`status` <- ApiVersionElementObject$`status`
      }
      if (!is.null(ApiVersionElementObject$`swagger_url`)) {
        self$`swagger_url` <- ApiVersionElementObject$`swagger_url`
      }
    },
    fromJSON = function(ApiVersionElementJson) {
      ApiVersionElementObject <- jsonlite::fromJSON(ApiVersionElementJson, simplifyVector = FALSE)
      self$fromJSONObject(ApiVersionElementObject)
    },
    toJSONString = function() {
       sprintf(
        '{
           "version": %s,
           "full_version": %s,
           "status": %s,
           "swagger_url": %s
        }',
        self$`version`,
        self$`full_version`,
        self$`status`,
        self$`swagger_url`
      )
    },
    fromJSONString = function(ApiVersionElementJson) {
      ApiVersionElementObject <- jsonlite::fromJSON(ApiVersionElementJson, simplifyVector = FALSE)
      self$`version` <- ApiVersionElementObject$`version`
      self$`full_version` <- ApiVersionElementObject$`full_version`
      self$`status` <- ApiVersionElementObject$`status`
      self$`swagger_url` <- ApiVersionElementObject$`swagger_url`
    }
  )
)
