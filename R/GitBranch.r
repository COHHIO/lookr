# Looker API 3.0 Reference
# 
# ### Authorization  The Looker API uses Looker **API3** credentials for authorization and access control. Looker admins can create API3 credentials on Looker's **Admin/Users** page. Pass API3 credentials to the **/login** endpoint to obtain a temporary access_token. Include that access_token in the Authorization header of Looker API requests. For details, see [Looker API Authorization](https://looker.com/docs/r/api/authorization)  ### Client SDKs  The Looker API is a RESTful system that should be usable by any programming language capable of making HTTPS requests. Client SDKs for a variety of programming languages can be generated from the Looker API's Swagger JSON metadata to streamline use of the Looker API in your applications. A client SDK for Ruby is available as an example. For more information, see [Looker API Client SDKs](https://looker.com/docs/r/api/client_sdks)  ### Try It Out!  The 'api-docs' page served by the Looker instance includes 'Try It Out!' buttons for each API method. After logging in with API3 credentials, you can use the \"Try It Out!\" buttons to call the API directly from the documentation page to interactively explore API features and responses.  ### Versioning  Future releases of Looker will expand this API release-by-release to securely expose more and more of the core power of Looker to API client applications. API endpoints marked as \"beta\" may receive breaking changes without warning. Stable (non-beta) API endpoints should not receive breaking changes in future releases. For more information, see [Looker API Versioning](https://looker.com/docs/r/api/versioning) 
# 
# OpenAPI spec version: 3.0.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' GitBranch Class
#'
#' @field name 
#' @field remote 
#' @field remote_name 
#' @field error 
#' @field message 
#' @field owner_name 
#' @field readonly 
#' @field personal 
#' @field is_local 
#' @field is_remote 
#' @field is_production 
#' @field ahead_count 
#' @field behind_count 
#' @field commit_at 
#' @field can 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GitBranch <- R6::R6Class(
  'GitBranch',
  public = list(
    `name` = NULL,
    `remote` = NULL,
    `remote_name` = NULL,
    `error` = NULL,
    `message` = NULL,
    `owner_name` = NULL,
    `readonly` = NULL,
    `personal` = NULL,
    `is_local` = NULL,
    `is_remote` = NULL,
    `is_production` = NULL,
    `ahead_count` = NULL,
    `behind_count` = NULL,
    `commit_at` = NULL,
    `can` = NULL,
    initialize = function(`name`, `remote`, `remote_name`, `error`, `message`, `owner_name`, `readonly`, `personal`, `is_local`, `is_remote`, `is_production`, `ahead_count`, `behind_count`, `commit_at`, `can`){
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
      if (!missing(`remote`)) {
        stopifnot(is.character(`remote`), length(`remote`) == 1)
        self$`remote` <- `remote`
      }
      if (!missing(`remote_name`)) {
        stopifnot(is.character(`remote_name`), length(`remote_name`) == 1)
        self$`remote_name` <- `remote_name`
      }
      if (!missing(`error`)) {
        stopifnot(is.character(`error`), length(`error`) == 1)
        self$`error` <- `error`
      }
      if (!missing(`message`)) {
        stopifnot(is.character(`message`), length(`message`) == 1)
        self$`message` <- `message`
      }
      if (!missing(`owner_name`)) {
        stopifnot(is.character(`owner_name`), length(`owner_name`) == 1)
        self$`owner_name` <- `owner_name`
      }
      if (!missing(`readonly`)) {
        self$`readonly` <- `readonly`
      }
      if (!missing(`personal`)) {
        self$`personal` <- `personal`
      }
      if (!missing(`is_local`)) {
        self$`is_local` <- `is_local`
      }
      if (!missing(`is_remote`)) {
        self$`is_remote` <- `is_remote`
      }
      if (!missing(`is_production`)) {
        self$`is_production` <- `is_production`
      }
      if (!missing(`ahead_count`)) {
        stopifnot(is.numeric(`ahead_count`), length(`ahead_count`) == 1)
        self$`ahead_count` <- `ahead_count`
      }
      if (!missing(`behind_count`)) {
        stopifnot(is.numeric(`behind_count`), length(`behind_count`) == 1)
        self$`behind_count` <- `behind_count`
      }
      if (!missing(`commit_at`)) {
        stopifnot(is.numeric(`commit_at`), length(`commit_at`) == 1)
        self$`commit_at` <- `commit_at`
      }
      if (!missing(`can`)) {
        self$`can` <- `can`
      }
    },
    toJSON = function() {
      GitBranchObject <- list()
      if (!is.null(self$`name`)) {
        GitBranchObject[['name']] <- self$`name`
      }
      if (!is.null(self$`remote`)) {
        GitBranchObject[['remote']] <- self$`remote`
      }
      if (!is.null(self$`remote_name`)) {
        GitBranchObject[['remote_name']] <- self$`remote_name`
      }
      if (!is.null(self$`error`)) {
        GitBranchObject[['error']] <- self$`error`
      }
      if (!is.null(self$`message`)) {
        GitBranchObject[['message']] <- self$`message`
      }
      if (!is.null(self$`owner_name`)) {
        GitBranchObject[['owner_name']] <- self$`owner_name`
      }
      if (!is.null(self$`readonly`)) {
        GitBranchObject[['readonly']] <- self$`readonly`
      }
      if (!is.null(self$`personal`)) {
        GitBranchObject[['personal']] <- self$`personal`
      }
      if (!is.null(self$`is_local`)) {
        GitBranchObject[['is_local']] <- self$`is_local`
      }
      if (!is.null(self$`is_remote`)) {
        GitBranchObject[['is_remote']] <- self$`is_remote`
      }
      if (!is.null(self$`is_production`)) {
        GitBranchObject[['is_production']] <- self$`is_production`
      }
      if (!is.null(self$`ahead_count`)) {
        GitBranchObject[['ahead_count']] <- self$`ahead_count`
      }
      if (!is.null(self$`behind_count`)) {
        GitBranchObject[['behind_count']] <- self$`behind_count`
      }
      if (!is.null(self$`commit_at`)) {
        GitBranchObject[['commit_at']] <- self$`commit_at`
      }
      if (!is.null(self$`can`)) {
        GitBranchObject[['can']] <- self$`can`
      }

      GitBranchObject
    },
    fromJSON = function(GitBranchJson) {
      GitBranchObject <- jsonlite::fromJSON(GitBranchJson)
      if (!is.null(GitBranchObject$`name`)) {
        self$`name` <- GitBranchObject$`name`
      }
      if (!is.null(GitBranchObject$`remote`)) {
        self$`remote` <- GitBranchObject$`remote`
      }
      if (!is.null(GitBranchObject$`remote_name`)) {
        self$`remote_name` <- GitBranchObject$`remote_name`
      }
      if (!is.null(GitBranchObject$`error`)) {
        self$`error` <- GitBranchObject$`error`
      }
      if (!is.null(GitBranchObject$`message`)) {
        self$`message` <- GitBranchObject$`message`
      }
      if (!is.null(GitBranchObject$`owner_name`)) {
        self$`owner_name` <- GitBranchObject$`owner_name`
      }
      if (!is.null(GitBranchObject$`readonly`)) {
        self$`readonly` <- GitBranchObject$`readonly`
      }
      if (!is.null(GitBranchObject$`personal`)) {
        self$`personal` <- GitBranchObject$`personal`
      }
      if (!is.null(GitBranchObject$`is_local`)) {
        self$`is_local` <- GitBranchObject$`is_local`
      }
      if (!is.null(GitBranchObject$`is_remote`)) {
        self$`is_remote` <- GitBranchObject$`is_remote`
      }
      if (!is.null(GitBranchObject$`is_production`)) {
        self$`is_production` <- GitBranchObject$`is_production`
      }
      if (!is.null(GitBranchObject$`ahead_count`)) {
        self$`ahead_count` <- GitBranchObject$`ahead_count`
      }
      if (!is.null(GitBranchObject$`behind_count`)) {
        self$`behind_count` <- GitBranchObject$`behind_count`
      }
      if (!is.null(GitBranchObject$`commit_at`)) {
        self$`commit_at` <- GitBranchObject$`commit_at`
      }
      if (!is.null(GitBranchObject$`can`)) {
        self$`can` <- GitBranchObject$`can`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "name": %s,
           "remote": %s,
           "remote_name": %s,
           "error": %s,
           "message": %s,
           "owner_name": %s,
           "readonly": %s,
           "personal": %s,
           "is_local": %s,
           "is_remote": %s,
           "is_production": %s,
           "ahead_count": %d,
           "behind_count": %d,
           "commit_at": %d,
           "can": %s
        }',
        self$`name`,
        self$`remote`,
        self$`remote_name`,
        self$`error`,
        self$`message`,
        self$`owner_name`,
        self$`readonly`,
        self$`personal`,
        self$`is_local`,
        self$`is_remote`,
        self$`is_production`,
        self$`ahead_count`,
        self$`behind_count`,
        self$`commit_at`,
        self$`can`
      )
    },
    fromJSONString = function(GitBranchJson) {
      GitBranchObject <- jsonlite::fromJSON(GitBranchJson)
      self$`name` <- GitBranchObject$`name`
      self$`remote` <- GitBranchObject$`remote`
      self$`remote_name` <- GitBranchObject$`remote_name`
      self$`error` <- GitBranchObject$`error`
      self$`message` <- GitBranchObject$`message`
      self$`owner_name` <- GitBranchObject$`owner_name`
      self$`readonly` <- GitBranchObject$`readonly`
      self$`personal` <- GitBranchObject$`personal`
      self$`is_local` <- GitBranchObject$`is_local`
      self$`is_remote` <- GitBranchObject$`is_remote`
      self$`is_production` <- GitBranchObject$`is_production`
      self$`ahead_count` <- GitBranchObject$`ahead_count`
      self$`behind_count` <- GitBranchObject$`behind_count`
      self$`commit_at` <- GitBranchObject$`commit_at`
      self$`can` <- GitBranchObject$`can`
    }
  )
)