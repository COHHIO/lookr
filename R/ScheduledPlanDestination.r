# Looker API 4.0 (Beta) Reference
#
#  Welcome to the future! API 4.0 co-exists with APIs 3.1 and 3.0. (3.0 should no longer be used.) The \"beta\" tag means updates for API 4.0 may include breaking changes, but as always we will work to minimize them.  ### Authorization  The classic method of API authorization uses Looker **API3** credentials for authorization and access control. Looker admins can create API3 credentials on Looker's **Admin/Users** page.  API 4.0 adds additional ways to authenticate API requests, including OAuth and CORS requests.  For details, see [Looker API Authorization](https://looker.com/docs/r/api/authorization).   ### API Explorer  The API Explorer is a Looker-provided utility with many new and unique features for learning and using the Looker API and SDKs. It is a replacement for the 'api-docs' page currently provided on Looker instances.  For details, see the [API Explorer documentation](https://looker.com/docs/r/api/explorer).   ### Looker Language SDKs  The Looker API is a RESTful system that should be usable by any programming language capable of making HTTPS requests. SDKs for a variety of programming languages are also provided to streamline using the API. Looker has an OpenSource [sdk-codegen project](https://github.com/looker-open-source/sdk-codegen) that provides several language SDKs. Language SDKs generated by `sdk-codegen` have an Authentication manager that can automatically authenticate API requests when needed.  For details on available Looker SDKs, see [Looker API Client SDKs](https://looker.com/docs/r/api/client_sdks).   ### API Versioning  Future releases of Looker expand the latest API version release-by-release to securely expose more and more of the core power of the Looker platform to API client applications. API endpoints marked as \"beta\" may receive breaking changes without warning (but we will try to avoid doing that). Stable (non-beta) API endpoints should not receive breaking changes in future releases.  For details, see [Looker API Versioning](https://looker.com/docs/r/api/versioning).   ### In This Release  API 4.0 version was introduced so we can make adjustments to API functions, parameters, and response types to fix bugs and inconsistencies. These changes fall outside the bounds of non-breaking additive changes we can make to our stable API 3.1.  One benefit of these type adjustments in API 4.0 is dramatically better support for strongly typed languages like TypeScript, Kotlin, Swift, Go, C#, and more.  While API 3.1 is still the de-facto Looker API (\"current\", \"stable\", \"default\", etc), the bulk of our development activity has shifted to API 4.0, where all new features are added.  The API Explorer can be used to [interactively compare](https://looker.com/docs/r/api/explorer#comparing_api_versions) the differences between API 3.1 and 4.0.   ### API and SDK Support Policies  Looker API versions and language SDKs have varying support levels. Please read the API and SDK [support policies](https://looker.com/docs/r/api/support-policy) for more information.   
#
# OpenAPI spec version: 4.0.21.18
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ScheduledPlanDestination Class
#'
#' @field id 
#' @field scheduled_plan_id 
#' @field format 
#' @field apply_formatting 
#' @field apply_vis 
#' @field address 
#' @field looker_recipient 
#' @field type 
#' @field parameters 
#' @field secret_parameters 
#' @field message 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite parse_json toJSON
#' @export
ScheduledPlanDestination <- R6::R6Class(
  'ScheduledPlanDestination',
  public = list(
    `id` = NULL,
    `scheduled_plan_id` = NULL,
    `format` = NULL,
    `apply_formatting` = NULL,
    `apply_vis` = NULL,
    `address` = NULL,
    `looker_recipient` = NULL,
    `type` = NULL,
    `parameters` = NULL,
    `secret_parameters` = NULL,
    `message` = NULL,
    initialize = function(`id`, `scheduled_plan_id`, `format`, `apply_formatting`, `apply_vis`, `address`, `looker_recipient`, `type`, `parameters`, `secret_parameters`, `message`){
      if (!missing(`id`)) {
        stopifnot(is.numeric(`id`), length(`id`) == 1)
        self$`id` <- `id`
      }
      if (!missing(`scheduled_plan_id`)) {
        stopifnot(is.numeric(`scheduled_plan_id`), length(`scheduled_plan_id`) == 1)
        self$`scheduled_plan_id` <- `scheduled_plan_id`
      }
      if (!missing(`format`)) {
        stopifnot(is.character(`format`), length(`format`) == 1)
        self$`format` <- `format`
      }
      if (!missing(`apply_formatting`)) {
        self$`apply_formatting` <- `apply_formatting`
      }
      if (!missing(`apply_vis`)) {
        self$`apply_vis` <- `apply_vis`
      }
      if (!missing(`address`)) {
        stopifnot(is.character(`address`), length(`address`) == 1)
        self$`address` <- `address`
      }
      if (!missing(`looker_recipient`)) {
        self$`looker_recipient` <- `looker_recipient`
      }
      if (!missing(`type`)) {
        stopifnot(is.character(`type`), length(`type`) == 1)
        self$`type` <- `type`
      }
      if (!missing(`parameters`)) {
        stopifnot(is.character(`parameters`), length(`parameters`) == 1)
        self$`parameters` <- `parameters`
      }
      if (!missing(`secret_parameters`)) {
        stopifnot(is.character(`secret_parameters`), length(`secret_parameters`) == 1)
        self$`secret_parameters` <- `secret_parameters`
      }
      if (!missing(`message`)) {
        stopifnot(is.character(`message`), length(`message`) == 1)
        self$`message` <- `message`
      }
    },
    toJSON = function() {
      ScheduledPlanDestinationObject <- list()
      if (!is.null(self$`id`)) {
        ScheduledPlanDestinationObject[['id']] <- self$`id`
      }
      if (!is.null(self$`scheduled_plan_id`)) {
        ScheduledPlanDestinationObject[['scheduled_plan_id']] <- self$`scheduled_plan_id`
      }
      if (!is.null(self$`format`)) {
        ScheduledPlanDestinationObject[['format']] <- self$`format`
      }
      if (!is.null(self$`apply_formatting`)) {
        ScheduledPlanDestinationObject[['apply_formatting']] <- self$`apply_formatting`
      }
      if (!is.null(self$`apply_vis`)) {
        ScheduledPlanDestinationObject[['apply_vis']] <- self$`apply_vis`
      }
      if (!is.null(self$`address`)) {
        ScheduledPlanDestinationObject[['address']] <- self$`address`
      }
      if (!is.null(self$`looker_recipient`)) {
        ScheduledPlanDestinationObject[['looker_recipient']] <- self$`looker_recipient`
      }
      if (!is.null(self$`type`)) {
        ScheduledPlanDestinationObject[['type']] <- self$`type`
      }
      if (!is.null(self$`parameters`)) {
        ScheduledPlanDestinationObject[['parameters']] <- self$`parameters`
      }
      if (!is.null(self$`secret_parameters`)) {
        ScheduledPlanDestinationObject[['secret_parameters']] <- self$`secret_parameters`
      }
      if (!is.null(self$`message`)) {
        ScheduledPlanDestinationObject[['message']] <- self$`message`
      }

      ScheduledPlanDestinationObject
    },
    fromJSONObject = function(ScheduledPlanDestinationJsonObject) {
      ScheduledPlanDestinationObject <- ScheduledPlanDestinationJsonObject #jsonlite::fromJSON(ScheduledPlanDestinationJson, simplifyVector = FALSE)
      if (!is.null(ScheduledPlanDestinationObject$`id`)) {
        self$`id` <- ScheduledPlanDestinationObject$`id`
      }
      if (!is.null(ScheduledPlanDestinationObject$`scheduled_plan_id`)) {
        self$`scheduled_plan_id` <- ScheduledPlanDestinationObject$`scheduled_plan_id`
      }
      if (!is.null(ScheduledPlanDestinationObject$`format`)) {
        self$`format` <- ScheduledPlanDestinationObject$`format`
      }
      if (!is.null(ScheduledPlanDestinationObject$`apply_formatting`)) {
        self$`apply_formatting` <- ScheduledPlanDestinationObject$`apply_formatting`
      }
      if (!is.null(ScheduledPlanDestinationObject$`apply_vis`)) {
        self$`apply_vis` <- ScheduledPlanDestinationObject$`apply_vis`
      }
      if (!is.null(ScheduledPlanDestinationObject$`address`)) {
        self$`address` <- ScheduledPlanDestinationObject$`address`
      }
      if (!is.null(ScheduledPlanDestinationObject$`looker_recipient`)) {
        self$`looker_recipient` <- ScheduledPlanDestinationObject$`looker_recipient`
      }
      if (!is.null(ScheduledPlanDestinationObject$`type`)) {
        self$`type` <- ScheduledPlanDestinationObject$`type`
      }
      if (!is.null(ScheduledPlanDestinationObject$`parameters`)) {
        self$`parameters` <- ScheduledPlanDestinationObject$`parameters`
      }
      if (!is.null(ScheduledPlanDestinationObject$`secret_parameters`)) {
        self$`secret_parameters` <- ScheduledPlanDestinationObject$`secret_parameters`
      }
      if (!is.null(ScheduledPlanDestinationObject$`message`)) {
        self$`message` <- ScheduledPlanDestinationObject$`message`
      }
    },
    fromJSON = function(ScheduledPlanDestinationJson) {
      ScheduledPlanDestinationObject <- jsonlite::fromJSON(ScheduledPlanDestinationJson, simplifyVector = FALSE)
      self$fromJSONObject(ScheduledPlanDestinationObject)
    },
    toJSONString = function() {
       sprintf(
        '{
           "id": %d,
           "scheduled_plan_id": %d,
           "format": %s,
           "apply_formatting": %s,
           "apply_vis": %s,
           "address": %s,
           "looker_recipient": %s,
           "type": %s,
           "parameters": %s,
           "secret_parameters": %s,
           "message": %s
        }',
        self$`id`,
        self$`scheduled_plan_id`,
        self$`format`,
        self$`apply_formatting`,
        self$`apply_vis`,
        self$`address`,
        self$`looker_recipient`,
        self$`type`,
        self$`parameters`,
        self$`secret_parameters`,
        self$`message`
      )
    },
    fromJSONString = function(ScheduledPlanDestinationJson) {
      ScheduledPlanDestinationObject <- jsonlite::fromJSON(ScheduledPlanDestinationJson, simplifyVector = FALSE)
      self$`id` <- ScheduledPlanDestinationObject$`id`
      self$`scheduled_plan_id` <- ScheduledPlanDestinationObject$`scheduled_plan_id`
      self$`format` <- ScheduledPlanDestinationObject$`format`
      self$`apply_formatting` <- ScheduledPlanDestinationObject$`apply_formatting`
      self$`apply_vis` <- ScheduledPlanDestinationObject$`apply_vis`
      self$`address` <- ScheduledPlanDestinationObject$`address`
      self$`looker_recipient` <- ScheduledPlanDestinationObject$`looker_recipient`
      self$`type` <- ScheduledPlanDestinationObject$`type`
      self$`parameters` <- ScheduledPlanDestinationObject$`parameters`
      self$`secret_parameters` <- ScheduledPlanDestinationObject$`secret_parameters`
      self$`message` <- ScheduledPlanDestinationObject$`message`
    }
  )
)
