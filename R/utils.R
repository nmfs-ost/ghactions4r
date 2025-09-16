#' Add platform-specific additional arguments to a GitHub workflow YAML file
#'
#' @inheritParams use_r_cmd_check
#' @param txt A character vector of YAML file lines. If NULL, the function reads the YAML file
#'   automatically. Default is NULL.
#' @param prev_line An integer specifying the line number in txt where the arguments
#'   should be added. If NULL, the function determines this value automatically. Default is NULL.
#' @noRd
add_args <- function(workflow_name, additional_args, txt = NULL, prev_line = NULL) {
  path_to_yml <- file.path(".github", "workflows", workflow_name)
  if (is.null(txt) | is.null(prev_line)) {
    txt <- readLines(path_to_yml)

    prev_line <- grep(
      "uses: nmfs-ost/ghactions4r/.github/workflows/",
      txt,
      fixed = TRUE
    )
    if (grepl("with:", txt[prev_line + 1], fixed = TRUE)) {
      prev_line <- prev_line + 1
    } else {
      txt <- append(txt, "    with:", prev_line)
      prev_line <- prev_line + 1
    }
  }

  # Add platform-specific additional arguments
  for (platform in c("windows", "macos", "ubuntu")) {
    if (!is.null(additional_args[[platform]])) {
      txt <- append(txt, paste0("        ", additional_args[[platform]]), prev_line)
      txt <- append(txt, paste0("      additional_args_", platform, ": |"), prev_line)
    }
  }
  writeLines(txt, path_to_yml)
  invisible(workflow_name)
}

#' Add public rspm is false option to workflows.
#' @param uses_line text that includes "uses: "
#' @param gha The workflow file that has been read in using readLines
#' @return The modified workflow file
#' @noRd
add_public_rspm_false <- function(uses_line, gha) {
  uses_line <- grep(
    uses_line,
    gha
  )
  with_line <- grep("with:", gha[uses_line + 1])
  if (length(with_line) == 0) {
    gha <- append(gha, "    with:", after = uses_line)
  }
  gha <- append(gha, "      use-public-rspm: false", after = uses_line + 1)
  gha
}

#' Add quarto is true option to workflows.
#' @param uses_line text that includes "uses: "
#' @param gha The workflow file that has been read in using readLines
#' @return The modified workflow file
#' @noRd
add_quarto_true <- function(uses_line, gha) {
  uses_line <- grep(
    uses_line,
    gha
  )
  with_line <- grep("with:", gha[uses_line + 1])
  if (length(with_line) == 0) {
    gha <- append(gha, "    with:", after = uses_line)
  }
  gha <- append(gha, "      depends_on_quarto: true", after = uses_line + 1)
  gha
}

#' Add the appropriate build trigger to workflows.
#' @param build_trigger Text of the build trigger option to add
#' @param gha The workflow file that has been read in using readLines
#' @return The modified workflow file
#' @noRd
add_build_trigger <- function(build_trigger, gha) {
  build_trigger_lines <- switch(build_trigger,
    push_to_main = c("  push:", "    branches: [main]"),
    push_to_all_branches = c("  push:"),
    pull_request = "  pull_request:",
    pr_comment = c("  issue_comment:", "    types: [created] "),
    manually = "  workflow_dispatch:",
    weekly = c(
      "  schedule:",
      "# Use https://crontab.guru/ to edit the time",
      "    - cron:  '15 02 * * 0'"
    )
  )

  # remove existing build trigger
  build_trigger_rm_line <- grep("# [build-trigger-goes-here]", gha, fixed = TRUE)
  gha <- gha[-build_trigger_rm_line]
  insert_line <- grep("on:", gha, fixed = TRUE)
  # add new build trigger
  gha <- append(gha, build_trigger_lines, after = insert_line)

  if (build_trigger == "pr_comment") {
    job_name_line <- grep("call-workflow:", gha, fixed = TRUE)
    if_statement <- c(
      "    if: ${{ github.event.issue.pull_request && ",
      "            (github.event.comment.author_association == 'MEMBER' || github.event.comment.author_association == 'OWNER') &&",
      "            (startsWith(github.event.comment.body, '/doc-and-style')) }}"
    )
    gha <- append(gha, if_statement, after = job_name_line)
  }
  gha
}

#' Function to validate the build trigger and report an error if is length is <1.
#' @template build_trigger
#' @return build_trigger invisibly.
validate_build_trigger <- function(build_trigger) {
    if(length(build_trigger) != 1) {
    len <- length(build_trigger)
    cli::cli_abort(c(
      "{.var build_trigger} must be be a vector of length 1.",
      "i" = "Multiple build triggers are not yet implemented.",
      "x" = "There {?is/are} {len} element{?s}."
     ))
  }
  invisible(build_trigger)
}


#' Copy the caller template to an R package
#'
#' @param template_name The name of the template in the ghactions4r package
#' @param workflow_name The user defined name of the workflow to create
#' @return The path to the caller workflow file copied
copy_caller_template <- function(template_name = "call-spell-check.yml", workflow_name = "call-spell-check.yml") {
  template_path <- system.file("templates", template_name,
                               package = "ghactions4r", mustWork = TRUE)
  path_to_yml <- file.path(".github", "workflows", workflow_name)
  dir.create(".github", showWarnings = FALSE)
  dir.create(file.path(".github", "workflows"), showWarnings = FALSE)
  file.copy(from = template_path, to = path_to_yml)
  path_to_yml
}