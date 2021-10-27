# Looker API 4.0 (Beta) Reference
#
#  Welcome to the future! API 4.0 co-exists with APIs 3.1 and 3.0. (3.0 should no longer be used.) The \"beta\" tag means updates for API 4.0 may include breaking changes, but as always we will work to minimize them.  ### Authorization  The classic method of API authorization uses Looker **API3** credentials for authorization and access control. Looker admins can create API3 credentials on Looker's **Admin/Users** page.  API 4.0 adds additional ways to authenticate API requests, including OAuth and CORS requests.  For details, see [Looker API Authorization](https://looker.com/docs/r/api/authorization).   ### API Explorer  The API Explorer is a Looker-provided utility with many new and unique features for learning and using the Looker API and SDKs. It is a replacement for the 'api-docs' page currently provided on Looker instances.  For details, see the [API Explorer documentation](https://looker.com/docs/r/api/explorer).   ### Looker Language SDKs  The Looker API is a RESTful system that should be usable by any programming language capable of making HTTPS requests. SDKs for a variety of programming languages are also provided to streamline using the API. Looker has an OpenSource [sdk-codegen project](https://github.com/looker-open-source/sdk-codegen) that provides several language SDKs. Language SDKs generated by `sdk-codegen` have an Authentication manager that can automatically authenticate API requests when needed.  For details on available Looker SDKs, see [Looker API Client SDKs](https://looker.com/docs/r/api/client_sdks).   ### API Versioning  Future releases of Looker expand the latest API version release-by-release to securely expose more and more of the core power of the Looker platform to API client applications. API endpoints marked as \"beta\" may receive breaking changes without warning (but we will try to avoid doing that). Stable (non-beta) API endpoints should not receive breaking changes in future releases.  For details, see [Looker API Versioning](https://looker.com/docs/r/api/versioning).   ### In This Release  API 4.0 version was introduced so we can make adjustments to API functions, parameters, and response types to fix bugs and inconsistencies. These changes fall outside the bounds of non-breaking additive changes we can make to our stable API 3.1.  One benefit of these type adjustments in API 4.0 is dramatically better support for strongly typed languages like TypeScript, Kotlin, Swift, Go, C#, and more.  While API 3.1 is still the de-facto Looker API (\"current\", \"stable\", \"default\", etc), the bulk of our development activity has shifted to API 4.0, where all new features are added.  The API Explorer can be used to [interactively compare](https://looker.com/docs/r/api/explorer#comparing_api_versions) the differences between API 3.1 and 4.0.   ### API and SDK Support Policies  Looker API versions and language SDKs have varying support levels. Please read the API and SDK [support policies](https://looker.com/docs/r/api/support-policy) for more information.   
#
# OpenAPI spec version: 4.0.21.18
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' WriteScheduledPlan Class
#'
#' @field name 
#' @field user_id 
#' @field run_as_recipient 
#' @field enabled 
#' @field look_id 
#' @field dashboard_id 
#' @field lookml_dashboard_id 
#' @field filters_string 
#' @field dashboard_filters 
#' @field require_results 
#' @field require_no_results 
#' @field require_change 
#' @field send_all_results 
#' @field crontab 
#' @field datagroup 
#' @field timezone 
#' @field query_id 
#' @field scheduled_plan_destination 
#' @field run_once 
#' @field include_links 
#' @field pdf_paper_size 
#' @field pdf_landscape 
#' @field embed 
#' @field color_theme 
#' @field long_tables 
#' @field inline_table_width 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite parse_json toJSON
#' @export
WriteScheduledPlan <- R6::R6Class(
  'WriteScheduledPlan',
  public = list(
    `name` = NULL,
    `user_id` = NULL,
    `run_as_recipient` = NULL,
    `enabled` = NULL,
    `look_id` = NULL,
    `dashboard_id` = NULL,
    `lookml_dashboard_id` = NULL,
    `filters_string` = NULL,
    `dashboard_filters` = NULL,
    `require_results` = NULL,
    `require_no_results` = NULL,
    `require_change` = NULL,
    `send_all_results` = NULL,
    `crontab` = NULL,
    `datagroup` = NULL,
    `timezone` = NULL,
    `query_id` = NULL,
    `scheduled_plan_destination` = NULL,
    `run_once` = NULL,
    `include_links` = NULL,
    `pdf_paper_size` = NULL,
    `pdf_landscape` = NULL,
    `embed` = NULL,
    `color_theme` = NULL,
    `long_tables` = NULL,
    `inline_table_width` = NULL,
    initialize = function(`name`, `user_id`, `run_as_recipient`, `enabled`, `look_id`, `dashboard_id`, `lookml_dashboard_id`, `filters_string`, `dashboard_filters`, `require_results`, `require_no_results`, `require_change`, `send_all_results`, `crontab`, `datagroup`, `timezone`, `query_id`, `scheduled_plan_destination`, `run_once`, `include_links`, `pdf_paper_size`, `pdf_landscape`, `embed`, `color_theme`, `long_tables`, `inline_table_width`){
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
      if (!missing(`user_id`)) {
        stopifnot(is.numeric(`user_id`), length(`user_id`) == 1)
        self$`user_id` <- `user_id`
      }
      if (!missing(`run_as_recipient`)) {
        self$`run_as_recipient` <- `run_as_recipient`
      }
      if (!missing(`enabled`)) {
        self$`enabled` <- `enabled`
      }
      if (!missing(`look_id`)) {
        stopifnot(is.numeric(`look_id`), length(`look_id`) == 1)
        self$`look_id` <- `look_id`
      }
      if (!missing(`dashboard_id`)) {
        stopifnot(is.numeric(`dashboard_id`), length(`dashboard_id`) == 1)
        self$`dashboard_id` <- `dashboard_id`
      }
      if (!missing(`lookml_dashboard_id`)) {
        stopifnot(is.character(`lookml_dashboard_id`), length(`lookml_dashboard_id`) == 1)
        self$`lookml_dashboard_id` <- `lookml_dashboard_id`
      }
      if (!missing(`filters_string`)) {
        stopifnot(is.character(`filters_string`), length(`filters_string`) == 1)
        self$`filters_string` <- `filters_string`
      }
      if (!missing(`dashboard_filters`)) {
        stopifnot(is.character(`dashboard_filters`), length(`dashboard_filters`) == 1)
        self$`dashboard_filters` <- `dashboard_filters`
      }
      if (!missing(`require_results`)) {
        self$`require_results` <- `require_results`
      }
      if (!missing(`require_no_results`)) {
        self$`require_no_results` <- `require_no_results`
      }
      if (!missing(`require_change`)) {
        self$`require_change` <- `require_change`
      }
      if (!missing(`send_all_results`)) {
        self$`send_all_results` <- `send_all_results`
      }
      if (!missing(`crontab`)) {
        stopifnot(is.character(`crontab`), length(`crontab`) == 1)
        self$`crontab` <- `crontab`
      }
      if (!missing(`datagroup`)) {
        stopifnot(is.character(`datagroup`), length(`datagroup`) == 1)
        self$`datagroup` <- `datagroup`
      }
      if (!missing(`timezone`)) {
        stopifnot(is.character(`timezone`), length(`timezone`) == 1)
        self$`timezone` <- `timezone`
      }
      if (!missing(`query_id`)) {
        stopifnot(is.character(`query_id`), length(`query_id`) == 1)
        self$`query_id` <- `query_id`
      }
      if (!missing(`scheduled_plan_destination`)) {
        stopifnot(is.list(`scheduled_plan_destination`), length(`scheduled_plan_destination`) != 0)
        lapply(`scheduled_plan_destination`, function(x) stopifnot(R6::is.R6(x)))
        self$`scheduled_plan_destination` <- `scheduled_plan_destination`
      }
      if (!missing(`run_once`)) {
        self$`run_once` <- `run_once`
      }
      if (!missing(`include_links`)) {
        self$`include_links` <- `include_links`
      }
      if (!missing(`pdf_paper_size`)) {
        stopifnot(is.character(`pdf_paper_size`), length(`pdf_paper_size`) == 1)
        self$`pdf_paper_size` <- `pdf_paper_size`
      }
      if (!missing(`pdf_landscape`)) {
        self$`pdf_landscape` <- `pdf_landscape`
      }
      if (!missing(`embed`)) {
        self$`embed` <- `embed`
      }
      if (!missing(`color_theme`)) {
        stopifnot(is.character(`color_theme`), length(`color_theme`) == 1)
        self$`color_theme` <- `color_theme`
      }
      if (!missing(`long_tables`)) {
        self$`long_tables` <- `long_tables`
      }
      if (!missing(`inline_table_width`)) {
        stopifnot(is.numeric(`inline_table_width`), length(`inline_table_width`) == 1)
        self$`inline_table_width` <- `inline_table_width`
      }
    },
    toJSON = function() {
      WriteScheduledPlanObject <- list()
      if (!is.null(self$`name`)) {
        WriteScheduledPlanObject[['name']] <- self$`name`
      }
      if (!is.null(self$`user_id`)) {
        WriteScheduledPlanObject[['user_id']] <- self$`user_id`
      }
      if (!is.null(self$`run_as_recipient`)) {
        WriteScheduledPlanObject[['run_as_recipient']] <- self$`run_as_recipient`
      }
      if (!is.null(self$`enabled`)) {
        WriteScheduledPlanObject[['enabled']] <- self$`enabled`
      }
      if (!is.null(self$`look_id`)) {
        WriteScheduledPlanObject[['look_id']] <- self$`look_id`
      }
      if (!is.null(self$`dashboard_id`)) {
        WriteScheduledPlanObject[['dashboard_id']] <- self$`dashboard_id`
      }
      if (!is.null(self$`lookml_dashboard_id`)) {
        WriteScheduledPlanObject[['lookml_dashboard_id']] <- self$`lookml_dashboard_id`
      }
      if (!is.null(self$`filters_string`)) {
        WriteScheduledPlanObject[['filters_string']] <- self$`filters_string`
      }
      if (!is.null(self$`dashboard_filters`)) {
        WriteScheduledPlanObject[['dashboard_filters']] <- self$`dashboard_filters`
      }
      if (!is.null(self$`require_results`)) {
        WriteScheduledPlanObject[['require_results']] <- self$`require_results`
      }
      if (!is.null(self$`require_no_results`)) {
        WriteScheduledPlanObject[['require_no_results']] <- self$`require_no_results`
      }
      if (!is.null(self$`require_change`)) {
        WriteScheduledPlanObject[['require_change']] <- self$`require_change`
      }
      if (!is.null(self$`send_all_results`)) {
        WriteScheduledPlanObject[['send_all_results']] <- self$`send_all_results`
      }
      if (!is.null(self$`crontab`)) {
        WriteScheduledPlanObject[['crontab']] <- self$`crontab`
      }
      if (!is.null(self$`datagroup`)) {
        WriteScheduledPlanObject[['datagroup']] <- self$`datagroup`
      }
      if (!is.null(self$`timezone`)) {
        WriteScheduledPlanObject[['timezone']] <- self$`timezone`
      }
      if (!is.null(self$`query_id`)) {
        WriteScheduledPlanObject[['query_id']] <- self$`query_id`
      }
      if (!is.null(self$`scheduled_plan_destination`)) {
        WriteScheduledPlanObject[['scheduled_plan_destination']] <- lapply(self$`scheduled_plan_destination`, function(x) x$toJSON())
      }
      if (!is.null(self$`run_once`)) {
        WriteScheduledPlanObject[['run_once']] <- self$`run_once`
      }
      if (!is.null(self$`include_links`)) {
        WriteScheduledPlanObject[['include_links']] <- self$`include_links`
      }
      if (!is.null(self$`pdf_paper_size`)) {
        WriteScheduledPlanObject[['pdf_paper_size']] <- self$`pdf_paper_size`
      }
      if (!is.null(self$`pdf_landscape`)) {
        WriteScheduledPlanObject[['pdf_landscape']] <- self$`pdf_landscape`
      }
      if (!is.null(self$`embed`)) {
        WriteScheduledPlanObject[['embed']] <- self$`embed`
      }
      if (!is.null(self$`color_theme`)) {
        WriteScheduledPlanObject[['color_theme']] <- self$`color_theme`
      }
      if (!is.null(self$`long_tables`)) {
        WriteScheduledPlanObject[['long_tables']] <- self$`long_tables`
      }
      if (!is.null(self$`inline_table_width`)) {
        WriteScheduledPlanObject[['inline_table_width']] <- self$`inline_table_width`
      }

      WriteScheduledPlanObject
    },
    fromJSONObject = function(WriteScheduledPlanJsonObject) {
      WriteScheduledPlanObject <- WriteScheduledPlanJsonObject #jsonlite::fromJSON(WriteScheduledPlanJson, simplifyVector = FALSE)
      if (!is.null(WriteScheduledPlanObject$`name`)) {
        self$`name` <- WriteScheduledPlanObject$`name`
      }
      if (!is.null(WriteScheduledPlanObject$`user_id`)) {
        self$`user_id` <- WriteScheduledPlanObject$`user_id`
      }
      if (!is.null(WriteScheduledPlanObject$`run_as_recipient`)) {
        self$`run_as_recipient` <- WriteScheduledPlanObject$`run_as_recipient`
      }
      if (!is.null(WriteScheduledPlanObject$`enabled`)) {
        self$`enabled` <- WriteScheduledPlanObject$`enabled`
      }
      if (!is.null(WriteScheduledPlanObject$`look_id`)) {
        self$`look_id` <- WriteScheduledPlanObject$`look_id`
      }
      if (!is.null(WriteScheduledPlanObject$`dashboard_id`)) {
        self$`dashboard_id` <- WriteScheduledPlanObject$`dashboard_id`
      }
      if (!is.null(WriteScheduledPlanObject$`lookml_dashboard_id`)) {
        self$`lookml_dashboard_id` <- WriteScheduledPlanObject$`lookml_dashboard_id`
      }
      if (!is.null(WriteScheduledPlanObject$`filters_string`)) {
        self$`filters_string` <- WriteScheduledPlanObject$`filters_string`
      }
      if (!is.null(WriteScheduledPlanObject$`dashboard_filters`)) {
        self$`dashboard_filters` <- WriteScheduledPlanObject$`dashboard_filters`
      }
      if (!is.null(WriteScheduledPlanObject$`require_results`)) {
        self$`require_results` <- WriteScheduledPlanObject$`require_results`
      }
      if (!is.null(WriteScheduledPlanObject$`require_no_results`)) {
        self$`require_no_results` <- WriteScheduledPlanObject$`require_no_results`
      }
      if (!is.null(WriteScheduledPlanObject$`require_change`)) {
        self$`require_change` <- WriteScheduledPlanObject$`require_change`
      }
      if (!is.null(WriteScheduledPlanObject$`send_all_results`)) {
        self$`send_all_results` <- WriteScheduledPlanObject$`send_all_results`
      }
      if (!is.null(WriteScheduledPlanObject$`crontab`)) {
        self$`crontab` <- WriteScheduledPlanObject$`crontab`
      }
      if (!is.null(WriteScheduledPlanObject$`datagroup`)) {
        self$`datagroup` <- WriteScheduledPlanObject$`datagroup`
      }
      if (!is.null(WriteScheduledPlanObject$`timezone`)) {
        self$`timezone` <- WriteScheduledPlanObject$`timezone`
      }
      if (!is.null(WriteScheduledPlanObject$`query_id`)) {
        self$`query_id` <- WriteScheduledPlanObject$`query_id`
      }
      if (!is.null(WriteScheduledPlanObject$`scheduled_plan_destination`)) {
        self$`scheduled_plan_destination` <- lapply(WriteScheduledPlanObject$`scheduled_plan_destination`, function(x) {
          scheduled_plan_destinationObject <- ScheduledPlanDestination$new()
          scheduled_plan_destinationObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          scheduled_plan_destinationObject
        })
      }
      if (!is.null(WriteScheduledPlanObject$`run_once`)) {
        self$`run_once` <- WriteScheduledPlanObject$`run_once`
      }
      if (!is.null(WriteScheduledPlanObject$`include_links`)) {
        self$`include_links` <- WriteScheduledPlanObject$`include_links`
      }
      if (!is.null(WriteScheduledPlanObject$`pdf_paper_size`)) {
        self$`pdf_paper_size` <- WriteScheduledPlanObject$`pdf_paper_size`
      }
      if (!is.null(WriteScheduledPlanObject$`pdf_landscape`)) {
        self$`pdf_landscape` <- WriteScheduledPlanObject$`pdf_landscape`
      }
      if (!is.null(WriteScheduledPlanObject$`embed`)) {
        self$`embed` <- WriteScheduledPlanObject$`embed`
      }
      if (!is.null(WriteScheduledPlanObject$`color_theme`)) {
        self$`color_theme` <- WriteScheduledPlanObject$`color_theme`
      }
      if (!is.null(WriteScheduledPlanObject$`long_tables`)) {
        self$`long_tables` <- WriteScheduledPlanObject$`long_tables`
      }
      if (!is.null(WriteScheduledPlanObject$`inline_table_width`)) {
        self$`inline_table_width` <- WriteScheduledPlanObject$`inline_table_width`
      }
    },
    fromJSON = function(WriteScheduledPlanJson) {
      WriteScheduledPlanObject <- jsonlite::fromJSON(WriteScheduledPlanJson, simplifyVector = FALSE)
      self$fromJSONObject(WriteScheduledPlanObject)
    },
    toJSONString = function() {
       sprintf(
        '{
           "name": %s,
           "user_id": %d,
           "run_as_recipient": %s,
           "enabled": %s,
           "look_id": %d,
           "dashboard_id": %d,
           "lookml_dashboard_id": %s,
           "filters_string": %s,
           "dashboard_filters": %s,
           "require_results": %s,
           "require_no_results": %s,
           "require_change": %s,
           "send_all_results": %s,
           "crontab": %s,
           "datagroup": %s,
           "timezone": %s,
           "query_id": %s,
           "scheduled_plan_destination": [%s],
           "run_once": %s,
           "include_links": %s,
           "pdf_paper_size": %s,
           "pdf_landscape": %s,
           "embed": %s,
           "color_theme": %s,
           "long_tables": %s,
           "inline_table_width": %d
        }',
        self$`name`,
        self$`user_id`,
        self$`run_as_recipient`,
        self$`enabled`,
        self$`look_id`,
        self$`dashboard_id`,
        self$`lookml_dashboard_id`,
        self$`filters_string`,
        self$`dashboard_filters`,
        self$`require_results`,
        self$`require_no_results`,
        self$`require_change`,
        self$`send_all_results`,
        self$`crontab`,
        self$`datagroup`,
        self$`timezone`,
        self$`query_id`,
        lapply(self$`scheduled_plan_destination`, function(x) paste(x$toJSON(), sep=",")),
        self$`run_once`,
        self$`include_links`,
        self$`pdf_paper_size`,
        self$`pdf_landscape`,
        self$`embed`,
        self$`color_theme`,
        self$`long_tables`,
        self$`inline_table_width`
      )
    },
    fromJSONString = function(WriteScheduledPlanJson) {
      WriteScheduledPlanObject <- jsonlite::fromJSON(WriteScheduledPlanJson, simplifyVector = FALSE)
      self$`name` <- WriteScheduledPlanObject$`name`
      self$`user_id` <- WriteScheduledPlanObject$`user_id`
      self$`run_as_recipient` <- WriteScheduledPlanObject$`run_as_recipient`
      self$`enabled` <- WriteScheduledPlanObject$`enabled`
      self$`look_id` <- WriteScheduledPlanObject$`look_id`
      self$`dashboard_id` <- WriteScheduledPlanObject$`dashboard_id`
      self$`lookml_dashboard_id` <- WriteScheduledPlanObject$`lookml_dashboard_id`
      self$`filters_string` <- WriteScheduledPlanObject$`filters_string`
      self$`dashboard_filters` <- WriteScheduledPlanObject$`dashboard_filters`
      self$`require_results` <- WriteScheduledPlanObject$`require_results`
      self$`require_no_results` <- WriteScheduledPlanObject$`require_no_results`
      self$`require_change` <- WriteScheduledPlanObject$`require_change`
      self$`send_all_results` <- WriteScheduledPlanObject$`send_all_results`
      self$`crontab` <- WriteScheduledPlanObject$`crontab`
      self$`datagroup` <- WriteScheduledPlanObject$`datagroup`
      self$`timezone` <- WriteScheduledPlanObject$`timezone`
      self$`query_id` <- WriteScheduledPlanObject$`query_id`
      self$`scheduled_plan_destination` <- lapply(WriteScheduledPlanObject$`scheduled_plan_destination`, function(x) ScheduledPlanDestination$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self$`run_once` <- WriteScheduledPlanObject$`run_once`
      self$`include_links` <- WriteScheduledPlanObject$`include_links`
      self$`pdf_paper_size` <- WriteScheduledPlanObject$`pdf_paper_size`
      self$`pdf_landscape` <- WriteScheduledPlanObject$`pdf_landscape`
      self$`embed` <- WriteScheduledPlanObject$`embed`
      self$`color_theme` <- WriteScheduledPlanObject$`color_theme`
      self$`long_tables` <- WriteScheduledPlanObject$`long_tables`
      self$`inline_table_width` <- WriteScheduledPlanObject$`inline_table_width`
    }
  )
)
