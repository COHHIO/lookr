# Looker API 4.0 (Beta) Reference
#
#  Welcome to the future! API 4.0 co-exists with APIs 3.1 and 3.0. (3.0 should no longer be used.) The \"beta\" tag means updates for API 4.0 may include breaking changes, but as always we will work to minimize them.  ### Authorization  The classic method of API authorization uses Looker **API3** credentials for authorization and access control. Looker admins can create API3 credentials on Looker's **Admin/Users** page.  API 4.0 adds additional ways to authenticate API requests, including OAuth and CORS requests.  For details, see [Looker API Authorization](https://looker.com/docs/r/api/authorization).   ### API Explorer  The API Explorer is a Looker-provided utility with many new and unique features for learning and using the Looker API and SDKs. It is a replacement for the 'api-docs' page currently provided on Looker instances.  For details, see the [API Explorer documentation](https://looker.com/docs/r/api/explorer).   ### Looker Language SDKs  The Looker API is a RESTful system that should be usable by any programming language capable of making HTTPS requests. SDKs for a variety of programming languages are also provided to streamline using the API. Looker has an OpenSource [sdk-codegen project](https://github.com/looker-open-source/sdk-codegen) that provides several language SDKs. Language SDKs generated by `sdk-codegen` have an Authentication manager that can automatically authenticate API requests when needed.  For details on available Looker SDKs, see [Looker API Client SDKs](https://looker.com/docs/r/api/client_sdks).   ### API Versioning  Future releases of Looker expand the latest API version release-by-release to securely expose more and more of the core power of the Looker platform to API client applications. API endpoints marked as \"beta\" may receive breaking changes without warning (but we will try to avoid doing that). Stable (non-beta) API endpoints should not receive breaking changes in future releases.  For details, see [Looker API Versioning](https://looker.com/docs/r/api/versioning).   ### In This Release  API 4.0 version was introduced so we can make adjustments to API functions, parameters, and response types to fix bugs and inconsistencies. These changes fall outside the bounds of non-breaking additive changes we can make to our stable API 3.1.  One benefit of these type adjustments in API 4.0 is dramatically better support for strongly typed languages like TypeScript, Kotlin, Swift, Go, C#, and more.  While API 3.1 is still the de-facto Looker API (\"current\", \"stable\", \"default\", etc), the bulk of our development activity has shifted to API 4.0, where all new features are added.  The API Explorer can be used to [interactively compare](https://looker.com/docs/r/api/explorer#comparing_api_versions) the differences between API 3.1 and 4.0.   ### API and SDK Support Policies  Looker API versions and language SDKs have varying support levels. Please read the API and SDK [support policies](https://looker.com/docs/r/api/support-policy) for more information.   
#
# OpenAPI spec version: 4.0.21.18
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' Command Class
#'
#' @field id 
#' @field author_id 
#' @field name 
#' @field description 
#' @field linked_content_id 
#' @field linked_content_type 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite parse_json toJSON
#' @export
Command <- R6::R6Class(
  'Command',
  public = list(
    `id` = NULL,
    `author_id` = NULL,
    `name` = NULL,
    `description` = NULL,
    `linked_content_id` = NULL,
    `linked_content_type` = NULL,
    initialize = function(`id`, `author_id`, `name`, `description`, `linked_content_id`, `linked_content_type`){
      if (!missing(`id`)) {
        stopifnot(is.numeric(`id`), length(`id`) == 1)
        self$`id` <- `id`
      }
      if (!missing(`author_id`)) {
        stopifnot(is.numeric(`author_id`), length(`author_id`) == 1)
        self$`author_id` <- `author_id`
      }
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
      if (!missing(`description`)) {
        stopifnot(is.character(`description`), length(`description`) == 1)
        self$`description` <- `description`
      }
      if (!missing(`linked_content_id`)) {
        stopifnot(is.character(`linked_content_id`), length(`linked_content_id`) == 1)
        self$`linked_content_id` <- `linked_content_id`
      }
      if (!missing(`linked_content_type`)) {
        stopifnot(is.character(`linked_content_type`), length(`linked_content_type`) == 1)
        self$`linked_content_type` <- `linked_content_type`
      }
    },
    toJSON = function() {
      CommandObject <- list()
      if (!is.null(self$`id`)) {
        CommandObject[['id']] <- self$`id`
      }
      if (!is.null(self$`author_id`)) {
        CommandObject[['author_id']] <- self$`author_id`
      }
      if (!is.null(self$`name`)) {
        CommandObject[['name']] <- self$`name`
      }
      if (!is.null(self$`description`)) {
        CommandObject[['description']] <- self$`description`
      }
      if (!is.null(self$`linked_content_id`)) {
        CommandObject[['linked_content_id']] <- self$`linked_content_id`
      }
      if (!is.null(self$`linked_content_type`)) {
        CommandObject[['linked_content_type']] <- self$`linked_content_type`
      }

      CommandObject
    },
    fromJSONObject = function(CommandJsonObject) {
      CommandObject <- CommandJsonObject #jsonlite::fromJSON(CommandJson, simplifyVector = FALSE)
      if (!is.null(CommandObject$`id`)) {
        self$`id` <- CommandObject$`id`
      }
      if (!is.null(CommandObject$`author_id`)) {
        self$`author_id` <- CommandObject$`author_id`
      }
      if (!is.null(CommandObject$`name`)) {
        self$`name` <- CommandObject$`name`
      }
      if (!is.null(CommandObject$`description`)) {
        self$`description` <- CommandObject$`description`
      }
      if (!is.null(CommandObject$`linked_content_id`)) {
        self$`linked_content_id` <- CommandObject$`linked_content_id`
      }
      if (!is.null(CommandObject$`linked_content_type`)) {
        self$`linked_content_type` <- CommandObject$`linked_content_type`
      }
    },
    fromJSON = function(CommandJson) {
      CommandObject <- jsonlite::fromJSON(CommandJson, simplifyVector = FALSE)
      self$fromJSONObject(CommandObject)
    },
    toJSONString = function() {
       sprintf(
        '{
           "id": %d,
           "author_id": %d,
           "name": %s,
           "description": %s,
           "linked_content_id": %s,
           "linked_content_type": %s
        }',
        self$`id`,
        self$`author_id`,
        self$`name`,
        self$`description`,
        self$`linked_content_id`,
        self$`linked_content_type`
      )
    },
    fromJSONString = function(CommandJson) {
      CommandObject <- jsonlite::fromJSON(CommandJson, simplifyVector = FALSE)
      self$`id` <- CommandObject$`id`
      self$`author_id` <- CommandObject$`author_id`
      self$`name` <- CommandObject$`name`
      self$`description` <- CommandObject$`description`
      self$`linked_content_id` <- CommandObject$`linked_content_id`
      self$`linked_content_type` <- CommandObject$`linked_content_type`
    }
  )
)