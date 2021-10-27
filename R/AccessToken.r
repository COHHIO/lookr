# Looker API 4.0 (Beta) Reference
#
#  Welcome to the future! API 4.0 co-exists with APIs 3.1 and 3.0. (3.0 should no longer be used.) The \"beta\" tag means updates for API 4.0 may include breaking changes, but as always we will work to minimize them.  ### Authorization  The classic method of API authorization uses Looker **API3** credentials for authorization and access control. Looker admins can create API3 credentials on Looker's **Admin/Users** page.  API 4.0 adds additional ways to authenticate API requests, including OAuth and CORS requests.  For details, see [Looker API Authorization](https://looker.com/docs/r/api/authorization).   ### API Explorer  The API Explorer is a Looker-provided utility with many new and unique features for learning and using the Looker API and SDKs. It is a replacement for the 'api-docs' page currently provided on Looker instances.  For details, see the [API Explorer documentation](https://looker.com/docs/r/api/explorer).   ### Looker Language SDKs  The Looker API is a RESTful system that should be usable by any programming language capable of making HTTPS requests. SDKs for a variety of programming languages are also provided to streamline using the API. Looker has an OpenSource [sdk-codegen project](https://github.com/looker-open-source/sdk-codegen) that provides several language SDKs. Language SDKs generated by `sdk-codegen` have an Authentication manager that can automatically authenticate API requests when needed.  For details on available Looker SDKs, see [Looker API Client SDKs](https://looker.com/docs/r/api/client_sdks).   ### API Versioning  Future releases of Looker expand the latest API version release-by-release to securely expose more and more of the core power of the Looker platform to API client applications. API endpoints marked as \"beta\" may receive breaking changes without warning (but we will try to avoid doing that). Stable (non-beta) API endpoints should not receive breaking changes in future releases.  For details, see [Looker API Versioning](https://looker.com/docs/r/api/versioning).   ### In This Release  API 4.0 version was introduced so we can make adjustments to API functions, parameters, and response types to fix bugs and inconsistencies. These changes fall outside the bounds of non-breaking additive changes we can make to our stable API 3.1.  One benefit of these type adjustments in API 4.0 is dramatically better support for strongly typed languages like TypeScript, Kotlin, Swift, Go, C#, and more.  While API 3.1 is still the de-facto Looker API (\"current\", \"stable\", \"default\", etc), the bulk of our development activity has shifted to API 4.0, where all new features are added.  The API Explorer can be used to [interactively compare](https://looker.com/docs/r/api/explorer#comparing_api_versions) the differences between API 3.1 and 4.0.   ### API and SDK Support Policies  Looker API versions and language SDKs have varying support levels. Please read the API and SDK [support policies](https://looker.com/docs/r/api/support-policy) for more information.   
#
# OpenAPI spec version: 4.0.21.18
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' AccessToken Class
#'
#' @field access_token 
#' @field token_type 
#' @field expires_in 
#' @field refresh_token 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite parse_json toJSON
#' @export
AccessToken <- R6::R6Class(
  'AccessToken',
  public = list(
    `access_token` = NULL,
    `token_type` = NULL,
    `expires_in` = NULL,
    `refresh_token` = NULL,
    initialize = function(`access_token`, `token_type`, `expires_in`, `refresh_token`){
      if (!missing(`access_token`)) {
        stopifnot(is.character(`access_token`), length(`access_token`) == 1)
        self$`access_token` <- `access_token`
      }
      if (!missing(`token_type`)) {
        stopifnot(is.character(`token_type`), length(`token_type`) == 1)
        self$`token_type` <- `token_type`
      }
      if (!missing(`expires_in`)) {
        stopifnot(is.numeric(`expires_in`), length(`expires_in`) == 1)
        self$`expires_in` <- `expires_in`
      }
      if (!missing(`refresh_token`)) {
        stopifnot(is.character(`refresh_token`), length(`refresh_token`) == 1)
        self$`refresh_token` <- `refresh_token`
      }
    },
    toJSON = function() {
      AccessTokenObject <- list()
      if (!is.null(self$`access_token`)) {
        AccessTokenObject[['access_token']] <- self$`access_token`
      }
      if (!is.null(self$`token_type`)) {
        AccessTokenObject[['token_type']] <- self$`token_type`
      }
      if (!is.null(self$`expires_in`)) {
        AccessTokenObject[['expires_in']] <- self$`expires_in`
      }
      if (!is.null(self$`refresh_token`)) {
        AccessTokenObject[['refresh_token']] <- self$`refresh_token`
      }

      AccessTokenObject
    },
    fromJSONObject = function(AccessTokenJsonObject) {
      AccessTokenObject <- AccessTokenJsonObject #jsonlite::fromJSON(AccessTokenJson, simplifyVector = FALSE)
      if (!is.null(AccessTokenObject$`access_token`)) {
        self$`access_token` <- AccessTokenObject$`access_token`
      }
      if (!is.null(AccessTokenObject$`token_type`)) {
        self$`token_type` <- AccessTokenObject$`token_type`
      }
      if (!is.null(AccessTokenObject$`expires_in`)) {
        self$`expires_in` <- AccessTokenObject$`expires_in`
      }
      if (!is.null(AccessTokenObject$`refresh_token`)) {
        self$`refresh_token` <- AccessTokenObject$`refresh_token`
      }
    },
    fromJSON = function(AccessTokenJson) {
      AccessTokenObject <- jsonlite::fromJSON(AccessTokenJson, simplifyVector = FALSE)
      self$fromJSONObject(AccessTokenObject)
    },
    toJSONString = function() {
       sprintf(
        '{
           "access_token": %s,
           "token_type": %s,
           "expires_in": %d,
           "refresh_token": %s
        }',
        self$`access_token`,
        self$`token_type`,
        self$`expires_in`,
        self$`refresh_token`
      )
    },
    fromJSONString = function(AccessTokenJson) {
      AccessTokenObject <- jsonlite::fromJSON(AccessTokenJson, simplifyVector = FALSE)
      self$`access_token` <- AccessTokenObject$`access_token`
      self$`token_type` <- AccessTokenObject$`token_type`
      self$`expires_in` <- AccessTokenObject$`expires_in`
      self$`refresh_token` <- AccessTokenObject$`refresh_token`
    }
  )
)
