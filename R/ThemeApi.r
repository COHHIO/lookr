# Looker API 4.0 (Beta) Reference
#
#  Welcome to the future! API 4.0 co-exists with APIs 3.1 and 3.0. (3.0 should no longer be used.) The \"beta\" tag means updates for API 4.0 may include breaking changes, but as always we will work to minimize them.  ### Authorization  The classic method of API authorization uses Looker **API3** credentials for authorization and access control. Looker admins can create API3 credentials on Looker's **Admin/Users** page.  API 4.0 adds additional ways to authenticate API requests, including OAuth and CORS requests.  For details, see [Looker API Authorization](https://looker.com/docs/r/api/authorization).   ### API Explorer  The API Explorer is a Looker-provided utility with many new and unique features for learning and using the Looker API and SDKs. It is a replacement for the 'api-docs' page currently provided on Looker instances.  For details, see the [API Explorer documentation](https://looker.com/docs/r/api/explorer).   ### Looker Language SDKs  The Looker API is a RESTful system that should be usable by any programming language capable of making HTTPS requests. SDKs for a variety of programming languages are also provided to streamline using the API. Looker has an OpenSource [sdk-codegen project](https://github.com/looker-open-source/sdk-codegen) that provides several language SDKs. Language SDKs generated by `sdk-codegen` have an Authentication manager that can automatically authenticate API requests when needed.  For details on available Looker SDKs, see [Looker API Client SDKs](https://looker.com/docs/r/api/client_sdks).   ### API Versioning  Future releases of Looker expand the latest API version release-by-release to securely expose more and more of the core power of the Looker platform to API client applications. API endpoints marked as \"beta\" may receive breaking changes without warning (but we will try to avoid doing that). Stable (non-beta) API endpoints should not receive breaking changes in future releases.  For details, see [Looker API Versioning](https://looker.com/docs/r/api/versioning).   ### In This Release  API 4.0 version was introduced so we can make adjustments to API functions, parameters, and response types to fix bugs and inconsistencies. These changes fall outside the bounds of non-breaking additive changes we can make to our stable API 3.1.  One benefit of these type adjustments in API 4.0 is dramatically better support for strongly typed languages like TypeScript, Kotlin, Swift, Go, C#, and more.  While API 3.1 is still the de-facto Looker API (\"current\", \"stable\", \"default\", etc), the bulk of our development activity has shifted to API 4.0, where all new features are added.  The API Explorer can be used to [interactively compare](https://looker.com/docs/r/api/explorer#comparing_api_versions) the differences between API 3.1 and 4.0.   ### API and SDK Support Policies  Looker API versions and language SDKs have varying support levels. Please read the API and SDK [support policies](https://looker.com/docs/r/api/support-policy) for more information.   
#
# OpenAPI spec version: 4.0.21.18
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' @title Theme operations
#' @description looker.Theme
#'
#' @field path Stores url path of the request.
#' @field apiClient Handles the client-server communication.
#' @field userAgent Set the user agent of the request.
#'
#' @importFrom R6 R6Class
#'
#' @section Methods:
#' \describe{
#'
#' active_themes Get Active Themes
#'
#'
#' all_themes Get All Themes
#'
#'
#' create_theme Create Theme
#'
#'
#' default_theme Get Default Theme
#'
#'
#' delete_theme Delete Theme
#'
#'
#' search_themes Search Themes
#'
#'
#' set_default_theme Set Default Theme
#'
#'
#' theme Get Theme
#'
#'
#' theme_or_default Get Theme or Default
#'
#'
#' update_theme Update Theme
#'
#'
#' validate_theme Validate Theme
#'
#' }
#'
#' @export
ThemeApi <- R6::R6Class(
  'ThemeApi',
  public = list(
    userAgent = "R-SDK",
    apiClient = NULL,
    initialize = function(apiClient){
      if (!missing(apiClient)) {
        self$apiClient <- apiClient
      }
      else {
        self$apiClient <- ApiClient$new()
      }
    },
    active_themes = function(name, ts, fields, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`name`)) {
        queryParams['name'] <- name
      }

      if (!missing(`ts`)) {
        queryParams['ts'] <- ts
      }

      if (!missing(`fields`)) {
        queryParams['fields'] <- fields
      }

      urlPath <- "/themes/active"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
	data <- jsonlite::fromJSON(httr::content(resp, "text", encoding = "UTF-8"),simplifyVector = FALSE)
	if (is.null(names(data))) {
	  returnObjects <- lapply(data, function(x) {
	    returnObject <- Theme$new()
	    #returnObject$fromJSON(jsonlite::toJSON(x, auto_unbox = FALSE))
	    returnObject$fromJSONObject(x)
	    returnObject
	  })
	  Response$new(returnObjects, resp)
	} else {
	  returnObject <- Theme$new()
	  #result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
	  result <- returnObject$fromJSONObject(data)
	  Response$new(returnObject, resp)
	}
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    all_themes = function(fields, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`fields`)) {
        queryParams['fields'] <- fields
      }

      urlPath <- "/themes"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
	data <- jsonlite::fromJSON(httr::content(resp, "text", encoding = "UTF-8"),simplifyVector = FALSE)
	if (is.null(names(data))) {
	  returnObjects <- lapply(data, function(x) {
	    returnObject <- Theme$new()
	    #returnObject$fromJSON(jsonlite::toJSON(x, auto_unbox = FALSE))
	    returnObject$fromJSONObject(x)
	    returnObject
	  })
	  Response$new(returnObjects, resp)
	} else {
	  returnObject <- Theme$new()
	  #result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
	  result <- returnObject$fromJSONObject(data)
	  Response$new(returnObject, resp)
	}
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    create_theme = function(body, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`body`)) {
        body <- `body`$toJSONString()
      } else {
        body <- NULL
      }

      urlPath <- "/themes"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "POST",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
	data <- jsonlite::fromJSON(httr::content(resp, "text", encoding = "UTF-8"),simplifyVector = FALSE)
	if (is.null(names(data))) {
	  returnObjects <- lapply(data, function(x) {
	    returnObject <- Theme$new()
	    #returnObject$fromJSON(jsonlite::toJSON(x, auto_unbox = FALSE))
	    returnObject$fromJSONObject(x)
	    returnObject
	  })
	  Response$new(returnObjects, resp)
	} else {
	  returnObject <- Theme$new()
	  #result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
	  result <- returnObject$fromJSONObject(data)
	  Response$new(returnObject, resp)
	}
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    default_theme = function(ts, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`ts`)) {
        queryParams['ts'] <- ts
      }

      urlPath <- "/themes/default"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
	data <- jsonlite::fromJSON(httr::content(resp, "text", encoding = "UTF-8"),simplifyVector = FALSE)
	if (is.null(names(data))) {
	  returnObjects <- lapply(data, function(x) {
	    returnObject <- Theme$new()
	    #returnObject$fromJSON(jsonlite::toJSON(x, auto_unbox = FALSE))
	    returnObject$fromJSONObject(x)
	    returnObject
	  })
	  Response$new(returnObjects, resp)
	} else {
	  returnObject <- Theme$new()
	  #result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
	  result <- returnObject$fromJSONObject(data)
	  Response$new(returnObject, resp)
	}
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    delete_theme = function(theme_id, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/themes/{theme_id}"
      if (!missing(`theme_id`)) {
        urlPath <- gsub(paste0("\\{", "theme_id", "\\}"), `theme_id`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "DELETE",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
	data <- jsonlite::fromJSON(httr::content(resp, "text", encoding = "UTF-8"),simplifyVector = FALSE)
	if (is.null(names(data))) {
	  returnObjects <- lapply(data, function(x) {
	    returnObject <- Character$new()
	    #returnObject$fromJSON(jsonlite::toJSON(x, auto_unbox = FALSE))
	    returnObject$fromJSONObject(x)
	    returnObject
	  })
	  Response$new(returnObjects, resp)
	} else {
	  returnObject <- Character$new()
	  #result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
	  result <- returnObject$fromJSONObject(data)
	  Response$new(returnObject, resp)
	}
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    search_themes = function(id, name, begin_at, end_at, limit, offset, sorts, fields, filter_or, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`id`)) {
        queryParams['id'] <- id
      }

      if (!missing(`name`)) {
        queryParams['name'] <- name
      }

      if (!missing(`begin_at`)) {
        queryParams['begin_at'] <- begin_at
      }

      if (!missing(`end_at`)) {
        queryParams['end_at'] <- end_at
      }

      if (!missing(`limit`)) {
        queryParams['limit'] <- limit
      }

      if (!missing(`offset`)) {
        queryParams['offset'] <- offset
      }

      if (!missing(`sorts`)) {
        queryParams['sorts'] <- sorts
      }

      if (!missing(`fields`)) {
        queryParams['fields'] <- fields
      }

      if (!missing(`filter_or`)) {
        queryParams['filter_or'] <- filter_or
      }

      urlPath <- "/themes/search"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
	data <- jsonlite::fromJSON(httr::content(resp, "text", encoding = "UTF-8"),simplifyVector = FALSE)
	if (is.null(names(data))) {
	  returnObjects <- lapply(data, function(x) {
	    returnObject <- Theme$new()
	    #returnObject$fromJSON(jsonlite::toJSON(x, auto_unbox = FALSE))
	    returnObject$fromJSONObject(x)
	    returnObject
	  })
	  Response$new(returnObjects, resp)
	} else {
	  returnObject <- Theme$new()
	  #result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
	  result <- returnObject$fromJSONObject(data)
	  Response$new(returnObject, resp)
	}
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    set_default_theme = function(name, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`name`)) {
        queryParams['name'] <- name
      }

      urlPath <- "/themes/default"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "PUT",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
	data <- jsonlite::fromJSON(httr::content(resp, "text", encoding = "UTF-8"),simplifyVector = FALSE)
	if (is.null(names(data))) {
	  returnObjects <- lapply(data, function(x) {
	    returnObject <- Theme$new()
	    #returnObject$fromJSON(jsonlite::toJSON(x, auto_unbox = FALSE))
	    returnObject$fromJSONObject(x)
	    returnObject
	  })
	  Response$new(returnObjects, resp)
	} else {
	  returnObject <- Theme$new()
	  #result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
	  result <- returnObject$fromJSONObject(data)
	  Response$new(returnObject, resp)
	}
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    theme = function(theme_id, fields, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`fields`)) {
        queryParams['fields'] <- fields
      }

      urlPath <- "/themes/{theme_id}"
      if (!missing(`theme_id`)) {
        urlPath <- gsub(paste0("\\{", "theme_id", "\\}"), `theme_id`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
	data <- jsonlite::fromJSON(httr::content(resp, "text", encoding = "UTF-8"),simplifyVector = FALSE)
	if (is.null(names(data))) {
	  returnObjects <- lapply(data, function(x) {
	    returnObject <- Theme$new()
	    #returnObject$fromJSON(jsonlite::toJSON(x, auto_unbox = FALSE))
	    returnObject$fromJSONObject(x)
	    returnObject
	  })
	  Response$new(returnObjects, resp)
	} else {
	  returnObject <- Theme$new()
	  #result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
	  result <- returnObject$fromJSONObject(data)
	  Response$new(returnObject, resp)
	}
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    theme_or_default = function(name, ts, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`name`)) {
        queryParams['name'] <- name
      }

      if (!missing(`ts`)) {
        queryParams['ts'] <- ts
      }

      urlPath <- "/themes/theme_or_default"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
	data <- jsonlite::fromJSON(httr::content(resp, "text", encoding = "UTF-8"),simplifyVector = FALSE)
	if (is.null(names(data))) {
	  returnObjects <- lapply(data, function(x) {
	    returnObject <- Theme$new()
	    #returnObject$fromJSON(jsonlite::toJSON(x, auto_unbox = FALSE))
	    returnObject$fromJSONObject(x)
	    returnObject
	  })
	  Response$new(returnObjects, resp)
	} else {
	  returnObject <- Theme$new()
	  #result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
	  result <- returnObject$fromJSONObject(data)
	  Response$new(returnObject, resp)
	}
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    update_theme = function(theme_id, body, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`body`)) {
        body <- `body`$toJSONString()
      } else {
        body <- NULL
      }

      urlPath <- "/themes/{theme_id}"
      if (!missing(`theme_id`)) {
        urlPath <- gsub(paste0("\\{", "theme_id", "\\}"), `theme_id`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "PATCH",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
	data <- jsonlite::fromJSON(httr::content(resp, "text", encoding = "UTF-8"),simplifyVector = FALSE)
	if (is.null(names(data))) {
	  returnObjects <- lapply(data, function(x) {
	    returnObject <- Theme$new()
	    #returnObject$fromJSON(jsonlite::toJSON(x, auto_unbox = FALSE))
	    returnObject$fromJSONObject(x)
	    returnObject
	  })
	  Response$new(returnObjects, resp)
	} else {
	  returnObject <- Theme$new()
	  #result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
	  result <- returnObject$fromJSONObject(data)
	  Response$new(returnObject, resp)
	}
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    validate_theme = function(body, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`body`)) {
        body <- `body`$toJSONString()
      } else {
        body <- NULL
      }

      urlPath <- "/themes/validate"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "POST",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
	data <- jsonlite::fromJSON(httr::content(resp, "text", encoding = "UTF-8"),simplifyVector = FALSE)
	if (is.null(names(data))) {
	  returnObjects <- lapply(data, function(x) {
	    returnObject <- ValidationError$new()
	    #returnObject$fromJSON(jsonlite::toJSON(x, auto_unbox = FALSE))
	    returnObject$fromJSONObject(x)
	    returnObject
	  })
	  Response$new(returnObjects, resp)
	} else {
	  returnObject <- ValidationError$new()
	  #result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
	  result <- returnObject$fromJSONObject(data)
	  Response$new(returnObject, resp)
	}
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    }
  )
)
