# Looker API 4.0 (Beta) Reference
#
#  Welcome to the future! API 4.0 co-exists with APIs 3.1 and 3.0. (3.0 should no longer be used.) The \"beta\" tag means updates for API 4.0 may include breaking changes, but as always we will work to minimize them.  ### Authorization  The classic method of API authorization uses Looker **API3** credentials for authorization and access control. Looker admins can create API3 credentials on Looker's **Admin/Users** page.  API 4.0 adds additional ways to authenticate API requests, including OAuth and CORS requests.  For details, see [Looker API Authorization](https://looker.com/docs/r/api/authorization).   ### API Explorer  The API Explorer is a Looker-provided utility with many new and unique features for learning and using the Looker API and SDKs. It is a replacement for the 'api-docs' page currently provided on Looker instances.  For details, see the [API Explorer documentation](https://looker.com/docs/r/api/explorer).   ### Looker Language SDKs  The Looker API is a RESTful system that should be usable by any programming language capable of making HTTPS requests. SDKs for a variety of programming languages are also provided to streamline using the API. Looker has an OpenSource [sdk-codegen project](https://github.com/looker-open-source/sdk-codegen) that provides several language SDKs. Language SDKs generated by `sdk-codegen` have an Authentication manager that can automatically authenticate API requests when needed.  For details on available Looker SDKs, see [Looker API Client SDKs](https://looker.com/docs/r/api/client_sdks).   ### API Versioning  Future releases of Looker expand the latest API version release-by-release to securely expose more and more of the core power of the Looker platform to API client applications. API endpoints marked as \"beta\" may receive breaking changes without warning (but we will try to avoid doing that). Stable (non-beta) API endpoints should not receive breaking changes in future releases.  For details, see [Looker API Versioning](https://looker.com/docs/r/api/versioning).   ### In This Release  API 4.0 version was introduced so we can make adjustments to API functions, parameters, and response types to fix bugs and inconsistencies. These changes fall outside the bounds of non-breaking additive changes we can make to our stable API 3.1.  One benefit of these type adjustments in API 4.0 is dramatically better support for strongly typed languages like TypeScript, Kotlin, Swift, Go, C#, and more.  While API 3.1 is still the de-facto Looker API (\"current\", \"stable\", \"default\", etc), the bulk of our development activity has shifted to API 4.0, where all new features are added.  The API Explorer can be used to [interactively compare](https://looker.com/docs/r/api/explorer#comparing_api_versions) the differences between API 3.1 and 4.0.   ### API and SDK Support Policies  Looker API versions and language SDKs have varying support levels. Please read the API and SDK [support policies](https://looker.com/docs/r/api/support-policy) for more information.   
#
# OpenAPI spec version: 4.0.21.18
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' GroupHierarchy Class
#'
#' @field can 
#' @field can_add_to_content_metadata 
#' @field contains_current_user 
#' @field external_group_id 
#' @field externally_managed 
#' @field id 
#' @field include_by_default 
#' @field name 
#' @field user_count 
#' @field parent_group_ids 
#' @field role_ids 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite parse_json toJSON
#' @export
GroupHierarchy <- R6::R6Class(
  'GroupHierarchy',
  public = list(
    `can` = NULL,
    `can_add_to_content_metadata` = NULL,
    `contains_current_user` = NULL,
    `external_group_id` = NULL,
    `externally_managed` = NULL,
    `id` = NULL,
    `include_by_default` = NULL,
    `name` = NULL,
    `user_count` = NULL,
    `parent_group_ids` = NULL,
    `role_ids` = NULL,
    initialize = function(`can`, `can_add_to_content_metadata`, `contains_current_user`, `external_group_id`, `externally_managed`, `id`, `include_by_default`, `name`, `user_count`, `parent_group_ids`, `role_ids`){
      if (!missing(`can`)) {
        self$`can` <- `can`
      }
      if (!missing(`can_add_to_content_metadata`)) {
        self$`can_add_to_content_metadata` <- `can_add_to_content_metadata`
      }
      if (!missing(`contains_current_user`)) {
        self$`contains_current_user` <- `contains_current_user`
      }
      if (!missing(`external_group_id`)) {
        stopifnot(is.character(`external_group_id`), length(`external_group_id`) == 1)
        self$`external_group_id` <- `external_group_id`
      }
      if (!missing(`externally_managed`)) {
        self$`externally_managed` <- `externally_managed`
      }
      if (!missing(`id`)) {
        stopifnot(is.numeric(`id`), length(`id`) == 1)
        self$`id` <- `id`
      }
      if (!missing(`include_by_default`)) {
        self$`include_by_default` <- `include_by_default`
      }
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
      if (!missing(`user_count`)) {
        stopifnot(is.numeric(`user_count`), length(`user_count`) == 1)
        self$`user_count` <- `user_count`
      }
      if (!missing(`parent_group_ids`)) {
        stopifnot(is.list(`parent_group_ids`), length(`parent_group_ids`) != 0)
        lapply(`parent_group_ids`, function(x) stopifnot(is.character(x)))
        self$`parent_group_ids` <- `parent_group_ids`
      }
      if (!missing(`role_ids`)) {
        stopifnot(is.list(`role_ids`), length(`role_ids`) != 0)
        lapply(`role_ids`, function(x) stopifnot(is.character(x)))
        self$`role_ids` <- `role_ids`
      }
    },
    toJSON = function() {
      GroupHierarchyObject <- list()
      if (!is.null(self$`can`)) {
        GroupHierarchyObject[['can']] <- self$`can`
      }
      if (!is.null(self$`can_add_to_content_metadata`)) {
        GroupHierarchyObject[['can_add_to_content_metadata']] <- self$`can_add_to_content_metadata`
      }
      if (!is.null(self$`contains_current_user`)) {
        GroupHierarchyObject[['contains_current_user']] <- self$`contains_current_user`
      }
      if (!is.null(self$`external_group_id`)) {
        GroupHierarchyObject[['external_group_id']] <- self$`external_group_id`
      }
      if (!is.null(self$`externally_managed`)) {
        GroupHierarchyObject[['externally_managed']] <- self$`externally_managed`
      }
      if (!is.null(self$`id`)) {
        GroupHierarchyObject[['id']] <- self$`id`
      }
      if (!is.null(self$`include_by_default`)) {
        GroupHierarchyObject[['include_by_default']] <- self$`include_by_default`
      }
      if (!is.null(self$`name`)) {
        GroupHierarchyObject[['name']] <- self$`name`
      }
      if (!is.null(self$`user_count`)) {
        GroupHierarchyObject[['user_count']] <- self$`user_count`
      }
      if (!is.null(self$`parent_group_ids`)) {
        GroupHierarchyObject[['parent_group_ids']] <- self$`parent_group_ids`
      }
      if (!is.null(self$`role_ids`)) {
        GroupHierarchyObject[['role_ids']] <- self$`role_ids`
      }

      GroupHierarchyObject
    },
    fromJSONObject = function(GroupHierarchyJsonObject) {
      GroupHierarchyObject <- GroupHierarchyJsonObject #jsonlite::fromJSON(GroupHierarchyJson, simplifyVector = FALSE)
      if (!is.null(GroupHierarchyObject$`can`)) {
        self$`can` <- GroupHierarchyObject$`can`
      }
      if (!is.null(GroupHierarchyObject$`can_add_to_content_metadata`)) {
        self$`can_add_to_content_metadata` <- GroupHierarchyObject$`can_add_to_content_metadata`
      }
      if (!is.null(GroupHierarchyObject$`contains_current_user`)) {
        self$`contains_current_user` <- GroupHierarchyObject$`contains_current_user`
      }
      if (!is.null(GroupHierarchyObject$`external_group_id`)) {
        self$`external_group_id` <- GroupHierarchyObject$`external_group_id`
      }
      if (!is.null(GroupHierarchyObject$`externally_managed`)) {
        self$`externally_managed` <- GroupHierarchyObject$`externally_managed`
      }
      if (!is.null(GroupHierarchyObject$`id`)) {
        self$`id` <- GroupHierarchyObject$`id`
      }
      if (!is.null(GroupHierarchyObject$`include_by_default`)) {
        self$`include_by_default` <- GroupHierarchyObject$`include_by_default`
      }
      if (!is.null(GroupHierarchyObject$`name`)) {
        self$`name` <- GroupHierarchyObject$`name`
      }
      if (!is.null(GroupHierarchyObject$`user_count`)) {
        self$`user_count` <- GroupHierarchyObject$`user_count`
      }
      if (!is.null(GroupHierarchyObject$`parent_group_ids`)) {
        self$`parent_group_ids` <- GroupHierarchyObject$`parent_group_ids`
      }
      if (!is.null(GroupHierarchyObject$`role_ids`)) {
        self$`role_ids` <- GroupHierarchyObject$`role_ids`
      }
    },
    fromJSON = function(GroupHierarchyJson) {
      GroupHierarchyObject <- jsonlite::fromJSON(GroupHierarchyJson, simplifyVector = FALSE)
      self$fromJSONObject(GroupHierarchyObject)
    },
    toJSONString = function() {
       sprintf(
        '{
           "can": %s,
           "can_add_to_content_metadata": %s,
           "contains_current_user": %s,
           "external_group_id": %s,
           "externally_managed": %s,
           "id": %d,
           "include_by_default": %s,
           "name": %s,
           "user_count": %d,
           "parent_group_ids": [%s],
           "role_ids": [%s]
        }',
        self$`can`,
        self$`can_add_to_content_metadata`,
        self$`contains_current_user`,
        self$`external_group_id`,
        self$`externally_managed`,
        self$`id`,
        self$`include_by_default`,
        self$`name`,
        self$`user_count`,
        lapply(self$`parent_group_ids`, function(x) paste(paste0('"', x, '"'), sep=",")),
        lapply(self$`role_ids`, function(x) paste(paste0('"', x, '"'), sep=","))
      )
    },
    fromJSONString = function(GroupHierarchyJson) {
      GroupHierarchyObject <- jsonlite::fromJSON(GroupHierarchyJson, simplifyVector = FALSE)
      self$`can` <- GroupHierarchyObject$`can`
      self$`can_add_to_content_metadata` <- GroupHierarchyObject$`can_add_to_content_metadata`
      self$`contains_current_user` <- GroupHierarchyObject$`contains_current_user`
      self$`external_group_id` <- GroupHierarchyObject$`external_group_id`
      self$`externally_managed` <- GroupHierarchyObject$`externally_managed`
      self$`id` <- GroupHierarchyObject$`id`
      self$`include_by_default` <- GroupHierarchyObject$`include_by_default`
      self$`name` <- GroupHierarchyObject$`name`
      self$`user_count` <- GroupHierarchyObject$`user_count`
      self$`parent_group_ids` <- GroupHierarchyObject$`parent_group_ids`
      self$`role_ids` <- GroupHierarchyObject$`role_ids`
    }
  )
)
