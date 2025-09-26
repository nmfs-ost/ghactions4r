#' Use workflow to run r cmd check on Linux, Mac, and Windows GitHub Actions
#' @template workflow_name
#' @param build_trigger Select the
#'  [event that triggers the workflow](https://docs.github.com/en/actions/get-started/understand-github-actions#events). Options are:
#' \describe{
#'   \item{`push_to_main`}{Run on pushing commits to main (default)}
#'   \item{`push_to_all_branches`}{Run on pushing commits to any branch}
#'   \item{`pull_request`}{Run when a pull request is opened, reopened, or updated}
#'   \item{`manually`}{Run manually with the workflow_dispatch trigger}
#'   \item{`weekly`}{Run on the default branch (usually main) once a week}
#' }
#'  Multiple build triggers are allowed; specify them as a vector. Note that
#'  invalid build triggers will be silently removed as long as one build trigger
#'  is specified correctly.
#' @param use_full_build_matrix Run R cmd check with two older versions of R in
#'   addition to the three runs that use the release version.
#' @param depends_on_tmb Adds an option that install Matrix from source for windows
#'  and Mac builds to solved a nuanced issue for packages dependent on TMB.
#'  See this [google groups thread](https://groups.google.com/g/tmb-users/c/-GhmuuDP_OQ)
#'  for more information.
#' @template depends_on_quarto
#' @param additional_args A named list of additional command line arguments to be
#'   passed to the workflow. The names of the list represent the platforms (windows,
#'   macos, or ubuntu), and the values are character vectors of arguments.
#'   These additional arguments are executed after the step that checks out the
#'   repository and before the step that sets up R.
#' @template tag_ghactions4r
#' @examples
#' \dontrun{
#' use_r_cmd_check(
#'   additional_args = list(
#'     ubuntu = c(
#'       "sudo apt-get update",
#'       "sudo apt-get install -y libcurl4-openssl-dev",
#'       "sudo add-apt-repository ppa:ubuntu-toolchain-r/test",
#'       "sudo apt-get install --only-upgrade libstdc++6"
#'     ),
#'     macos = c("brew install curl")
#'   )
#' )
#' }
#' @export
use_r_cmd_check <- function(workflow_name = "call-r-cmd-check.yml",
                            build_trigger = "push_to_main",
                            use_full_build_matrix = FALSE,
                            depends_on_tmb = FALSE,
                            depends_on_quarto = FALSE,
                            additional_args = NULL,
                            tag_ghactions4r = NULL) {
  validate_additional_args(additional_args)

  build_trigger <- match.arg(
    arg = build_trigger,
    choices = c(
      "push_to_main",
      "push_to_all_branches",
      "pull_request",
      "manually",
      "weekly"
    ),
    several.ok = TRUE
  )
  check_workflow_name(workflow_name)
  if (use_full_build_matrix) {
    template_name <- "call-r-cmd-check-full.yml"
  } else {
    template_name <- "call-r-cmd-check.yml"
  }

  path_to_yml <- copy_caller_template(
    template_name = template_name,
    workflow_name = workflow_name
  )
  gha <- readLines(path_to_yml)
  txt <- add_build_trigger(build_trigger, gha)

  if (depends_on_tmb | depends_on_quarto) {
    if (use_full_build_matrix) {
      prev_line <- grep("use_full_build_matrix: true", txt, fixed = TRUE)
    } else {
      prev_line <- grep(
        "uses: nmfs-ost/ghactions4r/.github/workflows/r-cmd-check.yml@main",
        txt,
        fixed = TRUE
      )
      txt <- append(txt, "    with:", prev_line)
      prev_line <- prev_line + 1
    }

    if (depends_on_tmb) {
      txt <- append(txt, "      depends_on_tmb: true", prev_line)
      prev_line <- prev_line + 1
    }

    if (depends_on_quarto) {
      txt <- append(txt, "      depends_on_quarto: true", prev_line)
    }
  }

  writeLines(txt, path_to_yml)

  if (!is.null(additional_args)) {
    add_args(
      workflow_name = workflow_name,
      additional_args = additional_args,
      txt = NULL,
      prev_line = NULL
    )
  }
  invisible(workflow_name)
}

#' Workflow for calculating coverage and summarizing using octocov toolkit
#'
#' This workflow calculates coverage using the covr package, then creates
#' summaries to post as a GitHub action summary or as pull request comment. All
#' data remains in the GitHub repository.
#' @template workflow_name
#' @template use_public_rspm
#' @template depends_on_quarto
#' @param build_trigger Select the
#'  [event that triggers the workflow](https://docs.github.com/en/actions/get-started/understand-github-actions#events). Options are:
#' \describe{
#'   \item{`pull_request`}{Run when a
#'  pull request is opened, reopened, or updated (default)}
#'   \item{`push_to_main`}{Run on pushing commits to main}
#'   \item{`push_to_all_branches`}{Run on pushing commits to any branch}
#'   \item{`manually`}{run manually with the workflow_dispatch trigger}
#' }
#'  Multiple build triggers are allowed; specify them as a vector. Note that
#'  invalid build triggers will be  silently removed as long as one build trigger
#'  is specified correctly.
#' @template tag_ghactions4r
#' @export
use_calc_cov_summaries <- function(
    workflow_name = "call-calc-cov-summaries.yml",
    build_trigger = "pull_request",
    use_public_rspm = TRUE,
    depends_on_quarto = FALSE,
    tag_ghactions4r = NULL) {
  check_workflow_name(workflow_name)
  build_trigger <-
    match.arg(
      arg = build_trigger,
      choices = c(
        "pull_request", "push_to_main", "push_to_all_branches",
        "manually"
      ),
      several.ok = TRUE
    )


  path_to_yml <- copy_caller_template(
    template_name = "call-calc-cov-summaries.yml",
    workflow_name = workflow_name
  )
  gha <- readLines(path_to_yml)

  gha <- add_build_trigger(build_trigger, gha)
  if (use_public_rspm == FALSE | depends_on_quarto == TRUE) {
    if (use_public_rspm == FALSE) {
      gha <- add_public_rspm_false(
        uses_line = "uses: nmfs-ost/ghactions4r/.github/workflows/calc-cov-summaries.yml",
        gha = gha
      )
    }
    if (depends_on_quarto == TRUE) {
      gha <- add_quarto_true(
        uses_line = "uses: nmfs-ost/ghactions4r/.github/workflows/calc-cov-summaries.yml",
        gha = gha
      )
    }
  }
  writeLines(gha, path_to_yml)
  # Also create the .octocov.yml file.
  template_path <- system.file("templates", ".octocov.yml",
    package = "ghactions4r", mustWork = TRUE
  )
  path_to_octo_yml <- file.path(".octocov.yml")
  file.copy(from = template_path, to = path_to_octo_yml)

  invisible(path_to_yml)
}


#' workflow for calculating code coverage and pushing to codecov.io
#' @description
#' `r lifecycle::badge("deprecated")`
#'
#' This function was deprecated because it was replaced by use_calc_cov_summaries(),
#' which allows all coverage calculations to remain on GitHub.
#' @template workflow_name
#' @template use_public_rspm
#' @keywords internal
#' @export
use_calc_coverage <- function(workflow_name = "call-calc-coverage.yml", use_public_rspm = TRUE) {
  lifecycle::deprecate_warn("0.3.0", "use_calc_coverage()", "use_calc_cov_summaries()")
  check_workflow_name(workflow_name)
  usethis::use_github_action("call-calc-coverage.yml",
    save_as = workflow_name,
    url = "https://raw.githubusercontent.com/nmfs-ost/ghactions4r/main/inst/templates/call-calc-coverage.yml"
  )
  if (use_public_rspm == FALSE) {
    path_to_yml <- file.path(".github", "workflows", workflow_name)
    gha <- readLines(path_to_yml)
    gha <- add_public_rspm_false(
      uses_line = "uses: nmfs-ost/ghactions4r/.github/workflows/calc-coverage.yml",
      gha = gha
    )
    writeLines(gha, path_to_yml)
  }
  invisible(workflow_name)
}


#' workflow for adding a code coverage badge
#'
#' This workflow will create a new code coverage badge with the latest overall
#' coverage value from the main branch on every push to main. The coverage badges are pushed
#' to a branch called badges within the repository, which can be referenced in
#' the readme file on main to display the current code coverage.
#' @template workflow_name
#' @template use_public_rspm
#' @template depends_on_quarto
#' @param build_trigger Select the
#'  [event that triggers the workflow](https://docs.github.com/en/actions/get-started/understand-github-actions#events). Options are:
#' \describe{
#'   \item{`push_to_main`}{Run on pushing commits to main (default)}
#'   \item{`weekly`}{Run on the default branch (usually main) once a week}
#'   \item{`manually`}{run manually with the workflow_dispatch trigger}
#' }
#'  Multiple build triggers are allowed; specify them as a vector. Note that
#'  invalid build triggers will be silently removed as long as one build trigger
#'  is specified correctly.
#' @template tag_ghactions4r
#' @export
use_create_cov_badge <- function(
    workflow_name = "call-create-cov-badge.yml",
    build_trigger = "push_to_main",
    use_public_rspm = TRUE, depends_on_quarto = FALSE,
    tag_ghactions4r = NULL) {
  check_workflow_name(workflow_name)
  build_trigger <- match.arg(arg = build_trigger, choices = c("push_to_main", "weekly", "manually"), several.ok = TRUE)
  path_to_yml <- copy_caller_template(
    template_name = "call-create-cov-badge.yml",
    workflow_name = workflow_name
  )
  gha <- readLines(path_to_yml)
  gha <- add_build_trigger(build_trigger, gha)

  if (use_public_rspm == FALSE | depends_on_quarto == TRUE) {
    gha <- readLines(path_to_yml)
    if (use_public_rspm == FALSE) {
      gha <- add_public_rspm_false(
        uses_line = "uses: nmfs-ost/ghactions4r/.github/workflows/create-cov-badge.yml",
        gha = gha
      )
    }
    if (depends_on_quarto == TRUE) {
      gha <- add_quarto_true(
        uses_line = "uses: nmfs-ost/ghactions4r/.github/workflows/create-cov-badge.yml",
        gha = gha
      )
    }
  }
  writeLines(gha, path_to_yml)
  cli::cli_alert_info("Once pushed up to GitHub, a GitHub action will run that will create the badge on a branch called badges.")

  badge_code <- "[![coverage](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/<OWNER>/<REPO>/refs/heads/badges/coverage-badge.json)](https://github.com/<OWNER>/<REPO>/tree/badges)"
  cli::cli_alert_info("Copy and paste the following into your readme for a badge, replacing <OWNER> and <REPO> for your GitHub repository location:")
  cli::cli_alert_info("{.code {badge_code}}")

  invisible(workflow_name)
}


#' Use workflow in current pkg  to automate documenting and styling
#'
#' Style your R package components automatically by running devtools::document(),
#' styler::style_pkg() or air, and usethis::use_tidy_description().
#' @details
#'  The pull request created from this workflow can trigger GitHub Action
#'  runs by using a personal access token (instead of the standard GITHUB_TOKEN)
#'  to provide the right permissions.
#'  The PAT is first
#' [generated on a user account](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/managing-your-personal-access-tokens),
#'  then [added to the repository or organization as a secret](https://docs.github.com/en/actions/security-guides/using-secrets-in-github-actions#creating-secrets-for-a-repository).
#'  Using a PAT can cause recursive runs, so should be used
#'  with caution. See github documentation on
#' [triggering a workflow from a workflow](https://docs.github.com/en/actions/using-workflows/triggering-a-workflow#triggering-a-workflow-from-a-workflow)
#'  for more information.
#'
#' If using the PR_comment build trigger, note that the command to run the workflow
# 'can be modified from `/doc-and-style` to a different keyword by finding
# \doc-and-style in the created yml file and editing it to a different term.
#' @template workflow_name
#' @param use_rm_dollar_sign in addition to devtools::document and
#'  styler::style_pkg, should ghactions4r::rm_dollar_sign be run? Defaults to FALSE.
#' @param how_to_commit Where should changes made to style and documentation be
#'  committed? Options are 1) in a pull request to the branch ("pull_request")
#'  where the workflow started; or 2) directly to the branch ("directly") where
#'  the workflow started.
#' @param build_trigger Select the
#'  [event that triggers the workflow](https://docs.github.com/en/actions/get-started/understand-github-actions#events). Options are:
#' \describe{
#'   \item{`push_to_main`}{Run on pushing commits to main (default)}
#'   \item{`pull_request`}{Run when a pull request is opened, reopened, or updated}
#'   \item{`pr_comment`}{Run when a comment containing the command `\doc-and-style` is made on a pull request by people with write permissions on the repository}
#'   \item{`manually`}{Run manually with the workflow_dispatch trigger}
#'   \item{`weekly`}{Run on the default branch (usually main) once a week}
#' }
#'  Multiple build triggers are allowed; specify them as a vector. Note that
#'  invalid build triggers will be silently removed as long as one build trigger
#'  is specified correctly.
#' @param use_air Use [air](https://posit-dev.github.io/air/) instead of [styler](https://styler.r-lib.org/) to style files? Defaults to FALSE.
#' @param use_pat Should a personal access token (PAT) stored as a GitHub secret
#'  be used? This is only necessary if you want the pull request generated by
#' the doc and style workflow to be able to start other GitHub action runs.
#' @param pat_name Name of the personal access token (PAT), as stored in secrets.
#'  Only used if `use_pat = TRUE`. After
#'  [generating the personal access token](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/managing-your-personal-access-tokens),
#' See [how to add it as a secret](https://docs.github.com/en/actions/security-guides/using-secrets-in-github-actions#creating-secrets-for-a-repository).
#' @template tag_ghactions4r
#' @examples
#' # set up running the doc and style workflow on each push to main, opening a
#' # pull request to main when changes are found.
#' \dontrun{
#' use_doc_and_style_r()
#' }
#' # the same as
#' \dontrun{
#' use_doc_and_style_r(
#'   how_to_commit = "pull_request",
#'   build_trigger = "push_to_main"
#' )
#' }
#' # Set up running doc and style on each pull request, committing directly to
#' # the pull request branch
#' \dontrun{
#' use_doc_and_style_r(
#'   how_to_commit = "directly",
#'   build_trigger = "pull_request"
#' )
#' }
#' # Set up the workflow to use a personal access token (PAT)
#' \dontrun{
#' use_doc_and_style_r(use_pat = TRUE, pat_name = "PAT")
#' }
#'
#' # set up to run doc and style on a pull request, where an owner or member of
#' # the repository adds a comment on the pull request with the command \doc-and-style
#' \dontrun{
#' use_doc_and_style_r(build_trigger = "pr_comment")
#' }
#'
#' @export
use_doc_and_style_r <- function(workflow_name = "call-doc-and-style-r.yml",
                                use_rm_dollar_sign = FALSE,
                                how_to_commit = c("pull_request", "directly"),
                                build_trigger = "push_to_main",
                                use_air = FALSE,
                                use_pat = FALSE,
                                pat_name = "PAT",
                                tag_ghactions4r = NULL) {
  # input checks
  check_workflow_name(workflow_name)
  how_to_commit <- match.arg(arg = how_to_commit)
  build_trigger <- match.arg(
    arg = build_trigger,
    choices = c(
      "push_to_main",
      "pull_request",
      "pr_comment",
      "manually",
      "weekly"
    ),
    several.ok = TRUE
  )
  if (how_to_commit == "directly" & use_pat == TRUE) {
    stop("Using how_to_commit = 'directly' and use_pat = TRUE can lead to recursive runs.")
  }

  path_to_yml <- copy_caller_template(
    template_name = "call-doc-and-style-r.yml",
    workflow_name = workflow_name
  )
  gha <- readLines(path_to_yml)

  gha <- add_build_trigger(build_trigger, gha)
  # additional options
  if (use_rm_dollar_sign == TRUE | how_to_commit == "directly" | use_air == TRUE) {
    uses_line <- grep(
      "uses: nmfs-ost/ghactions4r/.github/workflows/doc-and-style-r.yml",
      gha
    )
    with_line <- grep("with:", gha[uses_line + 1])
    if (length(with_line) == 0) {
      gha <- append(gha, "    with:", after = uses_line)
    }
    if (how_to_commit == "directly") {
      gha <- append(gha, "      commit-directly: true", after = uses_line + 1)
    }
    if (use_rm_dollar_sign == TRUE) {
      gha <- append(gha, "      run-rm_dollar_sign: true", after = uses_line + 1)
    }
    if (use_air == TRUE) {
      gha <- append(gha, "      use-air: true", after = uses_line + 1)
    }
  }
  if (use_pat == TRUE) {
    uses_line <- grep(
      "uses: nmfs-ost/ghactions4r/.github/workflows/doc-and-style-r.yml",
      gha
    )
    pat_line <- paste0("      PAT: ${{ secrets.", pat_name, " }}")
    gha <- append(gha, "    secrets:", after = uses_line)
    gha <- append(gha, pat_line, after = uses_line + 1)
  }
  writeLines(gha, path_to_yml)
  usethis::use_git_ignore(ignores = "*.rds", directory = file.path(".github"))

  invisible(workflow_name)
}

#' Creates a workflow in current R package to update an existing pkgdown GitHub pages site
#'
#' For more information, see [the setup details vignette](https://nmfs-fish-tools.github.io/ghactions4r/articles/set_up.html) before
#' running this function. This workflow will assume the website is built from
#' a branch called `gh-pages`.
#' @template workflow_name
#' @param build_trigger Select the
#'  [event that triggers the workflow](https://docs.github.com/en/actions/get-started/understand-github-actions#events). Options are:
#' \describe{
#'   \item{`push_to_main`}{Run on pushing commits to main (default)}
#'   \item{`weekly`}{Run on the default branch (usually main) once a week}
#'   \item{`manually`}{run manually with the workflow_dispatch trigger}
#' }
#'  Multiple build triggers are allowed; specify them as a vector. Note that
#'  invalid build triggers will be silently removed as long as one build trigger
#'  is specified correctly.
#' @template tag_ghactions4r
#' @inheritParams use_r_cmd_check
#' @examples
#' \dontrun{
#' use_update_pkgdown(
#'   additional_args = list(
#'     ubuntu = c(
#'       "sudo apt-get update",
#'       "sudo apt-get install -y libcurl4-openssl-dev",
#'       "sudo add-apt-repository ppa:ubuntu-toolchain-r/test",
#'       "sudo apt-get install --only-upgrade libstdc++6"
#'     ),
#'     macos = c("brew install curl")
#'   )
#' )
#' }
#' @export
use_update_pkgdown <- function(workflow_name = "call-update-pkgdown.yml",
                               build_trigger = "push_to_main",
                               additional_args = NULL,
                               tag_ghactions4r = NULL) {
  build_trigger <- match.arg(
    arg = build_trigger,
    choices = c(
      "push_to_main", "weekly", "manually"
    ),
    several.ok = TRUE
  )
  validate_additional_args(additional_args)
  check_workflow_name(workflow_name)
  # get the template github action
  path_to_yml <- copy_caller_template(
    template_name = "call-update-pkgdown.yml",
    workflow_name = workflow_name
  )

  gha <- readLines(path_to_yml)
  gha <- add_build_trigger(build_trigger, gha)
  writeLines(gha, path_to_yml)
  if (!is.null(additional_args)) {
    add_args(workflow_name = workflow_name, additional_args = additional_args)
  }
  cli::cli_alert_info("New to pkgdown? Follow these instructions to set up pkgdown on GitHub Pages {.url https://nmfs-ost.github.io/noaa-fit-resources/noaa%20resources/NOAA-pkgdown/}.")

  invisible(workflow_name)
}

#' use workflow in current pkg to check pkgdown site builds.
#'
#' This workflow will try to build the pkgdown site, and store it as an artifact
#' to be retrieved from the GitHub actions run. It will fail if the pkgdown site
#' cannot be built. This is a companion to use_update_pkgdown(), as the update_pkgdown
# ' workflow builds AND deploys the site to GitHub Pages. This workflow only builds
#' the site, and therefore can be used to test if the build is working in cases
#' where you do not want to deploy as well.
#' @template workflow_name
#' @param build_trigger Select the
#'  [event that triggers the workflow](https://docs.github.com/en/actions/get-started/understand-github-actions#events). Options are:
#' \describe{
#'   \item{`pull_request`}{Run when a pull request is opened, reopened, or updated (default)}
#'   \item{`push_to_main`}{Run on pushing commits to main}
#'   \item{`push_to_all_branches`}{Run on pushing commits to any branch}
#'   \item{`manually`}{Run manually with the workflow_dispatch trigger}
#'   \item{`weekly`}{Run on the default branch (usually main) once a week}
#'  Multiple build triggers are allowed; specify them as a vector. Note that
#'  invalid build triggers will be silently removed as long as one build trigger
#'  is specified correctly.
#' @template tag_ghactions4r
#' @inheritParams use_r_cmd_check
#' @examples
#' \dontrun{
#' use_build_pkgdown(
#'   additional_args = list(
#'     ubuntu = c(
#'       "sudo apt-get update",
#'       "sudo apt-get install -y libcurl4-openssl-dev",
#'       "sudo add-apt-repository ppa:ubuntu-toolchain-r/test",
#'       "sudo apt-get install --only-upgrade libstdc++6"
#'     ),
#'     macos = c("brew install curl")
#'   )
#' )
#' }
#' @export
use_build_pkgdown <- function(workflow_name = "call-build-pkgdown.yml",
                              build_trigger = "pull_request",
                              additional_args = NULL,
                              tag_ghactions4r = NULL) {
  validate_additional_args(additional_args)
  build_trigger <- match.arg(arg = build_trigger, choices = c(
    "pull_request", "push_to_main",
    "push_to_all_branches", "manually", "weekly"
  ), several.ok = TRUE)
  check_workflow_name(workflow_name)
  path_to_yml <- copy_caller_template(
    template_name = "call-build-pkgdown.yml",
    workflow_name = workflow_name
  )
  gha <- readLines(path_to_yml)
  gha <- add_build_trigger(build_trigger, gha)
  writeLines(gha, path_to_yml)

  if (!is.null(additional_args)) {
    add_args(workflow_name = workflow_name, additional_args = additional_args)
  }
  cli::cli_alert_info("New to pkgdown? Follow these instructions to set up pkgdown on GitHub Pages {.url https://nmfs-ost.github.io/noaa-fit-resources/noaa%20resources/NOAA-pkgdown/}.")
  invisible(workflow_name)
}

#' use workflow to run spelling::spell_check_package()
#'
#' This workflow will run the spell_check_package() function from the spelling package
#' on the current package, and will fail if any spelling errors are found.
#' It will also run the spell_check_files() on specified file types if spell_check_additional_files is TRUE.
#'
#' @param spell_check_additional_files  Logical. Should the workflow run `spell_check_files()` on specified files
#' in the package? Defaults to FALSE.
#' @param spell_check_report_level Character. The level of the report to generate for the additional spell check.
#' Options are "warning" or "error". Defaults to "error". If set to "error",
#' the workflow will fail if any spelling errors are found. If set to "warning", the
#' the workflow will pass even if spelling errors are found.
#' @template workflow_name
#' @inheritParams use_build_pkgdown
#' @template tag_ghactions4r
#' @export
use_spell_check <- function(workflow_name = "call-spell-check.yml",
                            build_trigger = "pull_request",
                            spell_check_additional_files = FALSE,
                            spell_check_report_level = c("error", "warning"),
                            tag_ghactions4r = NULL) {
  build_trigger <- match.arg(arg = build_trigger, choices = c(
    "pull_request", "push_to_main",
    "push_to_all_branches", "manually", "weekly"
  ), several.ok = TRUE)
  # Remind users that spell_check_report_level is set to 'error' by default if users
  # don't specify spell_check_report_level
  if (spell_check_additional_files == TRUE & length(spell_check_report_level) > 1) {
    cli::cli_alert_info(
      "{.code spell_check_report_level} is set to 'error' by default."
    )
  }

  # Remind users that spell_check_additional_files must be TRUE if spell_check_report_level is set
  # to a specific value
  if (spell_check_additional_files == FALSE & length(spell_check_report_level) == 1) {
    cli::cli_abort(
      "If {.code spell_check_report_level} is set to {.val {spell_check_report_level}},
      then {.code spell_check_additional_files} must be {.val TRUE}."
    )
  }

  spell_check_report_level <- rlang::arg_match(spell_check_report_level)
  check_workflow_name(workflow_name)

  path_to_yml <- copy_caller_template(
    template_name = "call-spell-check.yml",
    workflow_name = workflow_name
  )
  gha <- readLines(path_to_yml)

  gha <- add_build_trigger(build_trigger, gha)

  # Add the spell_check_additional_files option to the workflow if it is TRUE
  if (spell_check_additional_files == TRUE) {
    gha <- append(gha, "    with:")
    gha <- append(gha, "      spell_check_additional_files: true")
    gha <- append(gha, paste0("      spell_check_report_level: ", spell_check_report_level))
  }
  cli::cli_alert_info(
    "New to spelling::spell_check_package()? Learn more at
    {.url https://docs.ropensci.org/spelling/#spell-check-a-package}"
  )
  writeLines(gha, path_to_yml)
  invisible(workflow_name)
}
