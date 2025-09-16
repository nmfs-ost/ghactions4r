temp_path <- file.path(tempdir(), "rcmdcheck")
dir.create(temp_path)
old_wd <- getwd()
setwd(temp_path)
on.exit(setwd(old_wd), add = TRUE)
on.exit(unlink(temp_path, recursive = TRUE), add = TRUE)
# comment out below b/c causes an error when running check on codespaces
# on.exit(usethis::proj_set("."), add = TRUE)
pkg <- usethis::create_package(".")
usethis::proj_set(".")

test_that("all use_r_cmd_check() options work without additional args", {
  test_grid <- expand.grid(
    use_full_build_matrix_opt = c(TRUE, FALSE),
    depends_on_tmb_opt = c(TRUE, FALSE),
    depends_on_quarto_opt = c(TRUE, FALSE)
  )
  for (i in 1:nrow(test_grid)) {
    name <- paste0("call-build-check-", i, ".yml")
    path <- file.path(".github", "workflows", name)
    use_r_cmd_check(
      workflow_name = name,
      use_full_build_matrix = test_grid[i, "use_full_build_matrix_opt"],
      depends_on_tmb = test_grid[i, "depends_on_tmb_opt"],
      depends_on_quarto = test_grid[i, "depends_on_quarto_opt"],
      additional_args = NULL
    )
    expect_true(file.exists(path))
    test <- readLines(path)
    expect_snapshot(test)
  }
  # Note: this is the grid to compare to.
  #  use_full_build_matrix_opt depends_on_tmb_opt depends_on_quarto_opt
  # 1                       TRUE               TRUE                  TRUE
  # 2                      FALSE               TRUE                  TRUE
  # 3                       TRUE              FALSE                  TRUE
  # 4                      FALSE              FALSE                  TRUE
  # 5                       TRUE               TRUE                 FALSE
  # 6                      FALSE               TRUE                 FALSE
  # 7                       TRUE              FALSE                 FALSE
  # 8                      FALSE              FALSE                 FALSE
})

test_that("all use_r_cmd_check() options work with additional args", {
  test_grid <- expand.grid(
    use_full_build_matrix_opt = c(TRUE, FALSE),
    depends_on_tmb_opt = c(TRUE, FALSE),
    depends_on_quarto_opt = c(TRUE, FALSE)
  )
  for (i in 1:nrow(test_grid)) {
    name <- paste0("call-build-check-add-args", i, ".yml")
    path <- file.path(".github", "workflows", name)
    use_r_cmd_check(
      workflow_name = name,
      use_full_build_matrix = test_grid[i, "use_full_build_matrix_opt"],
      depends_on_tmb = test_grid[i, "depends_on_tmb_opt"],
      depends_on_quarto = test_grid[i, "depends_on_quarto_opt"],
      additional_args = list(
        "ubuntu" = c(
          "sudo apt-get update",
          "sudo apt-get install -y libcurl4-openssl-dev",
          "sudo add-apt-repository ppa:ubuntu-toolchain-r/test",
          "sudo apt-get install --only-upgrade libstdc++6"
        ),
        "windows" = c("tree"),
        "macos" = c("brew install curl")
      )
    )
    expect_true(file.exists(path))
    test <- readLines(path)
    expect_snapshot(test)
  }
  # Note: this is the grid to compare to.
  #  use_full_build_matrix_opt depends_on_tmb_opt depends_on_quarto_opt
  # 1                       TRUE               TRUE                  TRUE
  # 2                      FALSE               TRUE                  TRUE
  # 3                       TRUE              FALSE                  TRUE
  # 4                      FALSE              FALSE                  TRUE
  # 5                       TRUE               TRUE                 FALSE
  # 6                      FALSE               TRUE                 FALSE
  # 7                       TRUE              FALSE                 FALSE
  # 8                      FALSE              FALSE                 FALSE
})


test_that("use_r_cmd_check() works with additional_args mac only", {
  name <- "call-rcmd-additional-args-full.yml"
  path <- file.path(".github", "workflows", name)
  use_r_cmd_check(
    workflow_name = name,
    use_full_build_matrix = TRUE,
    depends_on_tmb = FALSE,
    additional_args = list(
      "macos" = c("brew install curl")
    )
  )
  expect_true(file.exists(path))
  test <- readLines(path)
  expect_snapshot(test)
})

test_that("use_r_cmd_check() doesn't work with invalid additional_args", {
  # Invalid inputs: not a list
  expect_error(
    use_r_cmd_check(additional_args = "brew install curl"),
    regexp = "must be a named list"
  )

  # Invalid inputs: list without names
  expect_error(
    use_r_cmd_check(additional_args = list("brew install curl")),
    regexp = "Invalid platform in"
  )

  # Invalid inputs: list with invalid names
  expect_error(
    use_r_cmd_check(additional_args = list(linux = "sudo apt-get update")),
    regexp = "Invalid platform in"
  )

  # Invalid inputs: list with non-character values
  expect_error(
    use_r_cmd_check(additional_args = list(windows = 123)),
    regexp = "must be character vectors"
  )
})

test_that("use_calc_cov_summaries() works", {
  use_calc_cov_summaries()
  expect_true(file.exists(".github/workflows/call-calc-cov-summaries.yml"))
  test <- readLines(".github/workflows/call-calc-cov-summaries.yml")
  expect_snapshot(test)

  expect_true(file.exists(".octocov.yml"))
  test_octoyml <- readLines(".octocov.yml")
  expect_snapshot(test_octoyml)
})

test_that("use_calc_cov_summaries() works with use_public_rspm = FALSE", {
  workflow_name <- "call-calc-cov-summaries-false.yml"
  use_calc_cov_summaries(workflow_name = workflow_name, use_public_rspm = FALSE)
  expect_true(file.exists(file.path(".github", "workflows", workflow_name)))
  test <- readLines(file.path(".github", "workflows", workflow_name))
  expect_snapshot(test)
})

test_that("use_calc_cov_summaries() works with use-public-rspm = FALSE and depends_on_quarto = TRUE", {
  workflow_name <- "call-calc-cov-summaries-rspm-false-quarto-true.yml"
  use_calc_cov_summaries(workflow_name = workflow_name, use_public_rspm = FALSE, depends_on_quarto = TRUE)
  expect_true(file.exists(file.path(".github", "workflows", workflow_name)))
  test <- readLines(file.path(".github", "workflows", workflow_name))
  expect_snapshot(test)
})

test_that("use_calc_cov_summaries() works with use-public-rspm = TRUE and depends_on_quarto = TRUE", {
  workflow_name <- "call-calc-cov-summaries-rspm-true-quarto-true.yml"
  use_calc_cov_summaries(workflow_name = workflow_name, use_public_rspm = TRUE, depends_on_quarto = TRUE)
  expect_true(file.exists(file.path(".github", "workflows", workflow_name)))
  test <- readLines(file.path(".github", "workflows", workflow_name))
  expect_snapshot(test)
})

test_that("use_calc_coverage() works", {
  expect_warning(use_calc_coverage())
  expect_true(file.exists(".github/workflows/call-calc-coverage.yml"))
  test <- readLines(".github/workflows/call-calc-coverage.yml")
  expect_snapshot(test)
})

test_that("use_calc_coverage() works with use-public-rspm = FALSE", {
  workflow_name <- "call-calc-cov-false.yml"
  expect_warning(use_calc_coverage(workflow_name = workflow_name, use_public_rspm = FALSE))
  expect_true(file.exists(file.path(".github", "workflows", workflow_name)))
  test <- readLines(file.path(".github", "workflows", workflow_name))
  expect_snapshot(test)
})

test_that("use_create_cov_badge() works", {
  use_create_cov_badge()
  expect_true(file.exists(".github/workflows/call-create-cov-badge.yml"))
  test <- readLines(".github/workflows/call-create-cov-badge.yml")
  expect_snapshot(test)
})

test_that("use_create_cov_badge() works with use-public-rspm = FALSE", {
  workflow_name <- "call-create-cov-badge-false.yml"
  use_create_cov_badge(workflow_name = workflow_name, use_public_rspm = FALSE)
  expect_true(file.exists(file.path(".github", "workflows", workflow_name)))
  test <- readLines(file.path(".github", "workflows", workflow_name))
  expect_snapshot(test)
})

test_that("use_create_cov_badge() works with use-public-rspm = FALSE and depends_on_quarto = TRUE", {
  workflow_name <- "call-create-cov-badge-rspm-false-quarto-true.yml"
  use_create_cov_badge(workflow_name = workflow_name, use_public_rspm = FALSE, depends_on_quarto = TRUE)
  expect_true(file.exists(file.path(".github", "workflows", workflow_name)))
  test <- readLines(file.path(".github", "workflows", workflow_name))
  expect_snapshot(test)
})

test_that("use_create_cov_badge() works with use-public-rspm = TRUE and depends-on-quarto = TRUE", {
  workflow_name <- "call-create-cov-badge-rspm-true-quarto-true.yml"
  use_create_cov_badge(workflow_name = workflow_name, use_public_rspm = TRUE, depends_on_quarto = TRUE)
  expect_true(file.exists(file.path(".github", "workflows", workflow_name)))
  test <- readLines(file.path(".github", "workflows", workflow_name))
  expect_snapshot(test)
})


test_that("use_doc_and_style_r() works", {
  test_grid <- expand.grid(
    use_rm_dollar_sign = c(TRUE, FALSE),
    how_to_commit = c("pull_request", "directly"),
    build_trigger = c(
      "push_to_main",
      "pull_request",
      "pr_comment",
      "manually",
      "weekly"
    ),
    use_air = c(TRUE, FALSE),
    use_pat = c(TRUE, FALSE),
    stringsAsFactors = FALSE
  )
  # remove bad options (to test later)
  test_grid <- test_grid[-which(test_grid$how_to_commit == "directly" & test_grid$use_pat == TRUE), ]
  for (i in 1:nrow(test_grid)) {
    name <- paste0("call-doc-and-style-r-", i, ".yml")
    path <- file.path(".github", "workflows", name)
    use_doc_and_style_r(
      workflow_name = name,
      use_rm_dollar_sign = test_grid[i, "use_rm_dollar_sign"],
      how_to_commit = test_grid[i, "how_to_commit"],
      build_trigger = test_grid[i, "build_trigger"],
      use_air = test_grid[i, "use_air"],
      use_pat = test_grid[i, "use_pat"]
    )
    expect_true(file.exists(path))
    test <- readLines(path)
    expect_snapshot(test)
  }


  # for reference, the test grid:
  #   test_grid
  #    use_rm_dollar_sign how_to_commit build_trigger use_air use_pat
  # 1                TRUE  pull_request  push_to_main    TRUE    TRUE
  # 2               FALSE  pull_request  push_to_main    TRUE    TRUE
  # 5                TRUE  pull_request  pull_request    TRUE    TRUE
  # 6               FALSE  pull_request  pull_request    TRUE    TRUE
  # 9                TRUE  pull_request    pr_comment    TRUE    TRUE
  # 10              FALSE  pull_request    pr_comment    TRUE    TRUE
  # 13               TRUE  pull_request      manually    TRUE    TRUE
  # 14              FALSE  pull_request      manually    TRUE    TRUE
  # 17               TRUE  pull_request        weekly    TRUE    TRUE
  # 18              FALSE  pull_request        weekly    TRUE    TRUE
  # 21               TRUE  pull_request  push_to_main   FALSE    TRUE
  # 22              FALSE  pull_request  push_to_main   FALSE    TRUE
  # 25               TRUE  pull_request  pull_request   FALSE    TRUE
  # 26              FALSE  pull_request  pull_request   FALSE    TRUE
  # 29               TRUE  pull_request    pr_comment   FALSE    TRUE
  # 30              FALSE  pull_request    pr_comment   FALSE    TRUE
  # 33               TRUE  pull_request      manually   FALSE    TRUE
  # 34              FALSE  pull_request      manually   FALSE    TRUE
  # 37               TRUE  pull_request        weekly   FALSE    TRUE
  # 38              FALSE  pull_request        weekly   FALSE    TRUE
  # 41               TRUE  pull_request  push_to_main    TRUE   FALSE
  # 42              FALSE  pull_request  push_to_main    TRUE   FALSE
  # 43               TRUE      directly  push_to_main    TRUE   FALSE
  # 44              FALSE      directly  push_to_main    TRUE   FALSE
  # 45               TRUE  pull_request  pull_request    TRUE   FALSE
  # 46              FALSE  pull_request  pull_request    TRUE   FALSE
  # 47               TRUE      directly  pull_request    TRUE   FALSE
  # 48              FALSE      directly  pull_request    TRUE   FALSE
  # 49               TRUE  pull_request    pr_comment    TRUE   FALSE
  # 50              FALSE  pull_request    pr_comment    TRUE   FALSE
  # 51               TRUE      directly    pr_comment    TRUE   FALSE
  # 52              FALSE      directly    pr_comment    TRUE   FALSE
  # 53               TRUE  pull_request      manually    TRUE   FALSE
  # 54              FALSE  pull_request      manually    TRUE   FALSE
  # 55               TRUE      directly      manually    TRUE   FALSE
  # 56              FALSE      directly      manually    TRUE   FALSE
  # 57               TRUE  pull_request        weekly    TRUE   FALSE
  # 58              FALSE  pull_request        weekly    TRUE   FALSE
  # 59               TRUE      directly        weekly    TRUE   FALSE
  # 60              FALSE      directly        weekly    TRUE   FALSE
  # 61               TRUE  pull_request  push_to_main   FALSE   FALSE
  # 62              FALSE  pull_request  push_to_main   FALSE   FALSE
  # 63               TRUE      directly  push_to_main   FALSE   FALSE
  # 64              FALSE      directly  push_to_main   FALSE   FALSE
  # 65               TRUE  pull_request  pull_request   FALSE   FALSE
  # 66              FALSE  pull_request  pull_request   FALSE   FALSE
  # 67               TRUE      directly  pull_request   FALSE   FALSE
  # 68              FALSE      directly  pull_request   FALSE   FALSE
  # 69               TRUE  pull_request    pr_comment   FALSE   FALSE
  # 70              FALSE  pull_request    pr_comment   FALSE   FALSE
  # 71               TRUE      directly    pr_comment   FALSE   FALSE
  # 72              FALSE      directly    pr_comment   FALSE   FALSE
  # 73               TRUE  pull_request      manually   FALSE   FALSE
  # 74              FALSE  pull_request      manually   FALSE   FALSE
  # 75               TRUE      directly      manually   FALSE   FALSE
  # 76              FALSE      directly      manually   FALSE   FALSE
  # 77               TRUE  pull_request        weekly   FALSE   FALSE
  # 78              FALSE  pull_request        weekly   FALSE   FALSE
  # 79               TRUE      directly        weekly   FALSE   FALSE
  # 80              FALSE      directly        weekly   FALSE   FALSE
})

test_that("use_doc_and_style_r() errors when a bad combo", {
  expect_error(use_doc_and_style_r(
    workflow_name = "doc_style_bad.yml",
    how_to_commit = "directly",
    use_pat = TRUE
  ), "recursive")
})

# This currently is expected behavior.
test_that("use_doc_and_style_r() errors when multiple build triggers selected", {
     expect_snapshot(use_doc_and_style_r(
    workflow_name = "doc_style_mult_triggers.yml",
    build_trigger = c("manually", "pull_request")
    ), error = TRUE)
})


test_that("use_update_pkgdown()) works", {
  use_update_pkgdown()
  expect_true(file.exists(".github/workflows/call-update-pkgdown.yml"))
  test <- readLines(".github/workflows/call-update-pkgdown.yml")
  expect_snapshot(test)
})

test_that("use_update_pkgdown()) works with additional_args", {
  workflow_name <- "call-update-pkgdown-1.yml"
  use_update_pkgdown(
    workflow_name = workflow_name,
    additional_args = list(
      "ubuntu" = c(
        "sudo apt-get update",
        "sudo apt-get install -y libcurl4-openssl-dev",
        "sudo add-apt-repository ppa:ubuntu-toolchain-r/test",
        "sudo apt-get install --only-upgrade libstdc++6"
      ),
      "windows" = c("tree"),
      "macos" = c("brew install curl")
    )
  )
  path_to_yml <- file.path(".github", "workflows", workflow_name)
  expect_true(file.exists(path_to_yml))
  test <- readLines(path_to_yml)
  expect_snapshot(test)
})

test_that("use_build_pkgdown()) works with additional_args", {
  use_build_pkgdown(
    workflow_name = "call-build-pkgdown.yml",
    build_trigger = "push_to_all_branches",
    additional_args = list(
      "ubuntu" = c(
        "sudo apt-get update",
        "sudo apt-get install -y libcurl4-openssl-dev",
        "sudo add-apt-repository ppa:ubuntu-toolchain-r/test",
        "sudo apt-get install --only-upgrade libstdc++6"
      ),
      "windows" = c("tree"),
      "macos" = c("brew install curl")
    )
  )
  expect_true(file.exists(".github/workflows/call-build-pkgdown.yml"))
  test <- readLines(".github/workflows/call-build-pkgdown.yml")
  expect_snapshot(test)
})

test_that("use_spell_check() works", {
  file_path <- ".github/workflows/call-spell-check.yml"
  # Test that the function creates the workflow file
  use_spell_check(build_trigger = "manually")
  expect_true(file.exists(file_path))
  test <- readLines(file_path)
  expect_snapshot(test)
  unlink(file_path)

  # Test that the function creates the additional spell check workflow file
  report_level <- c("warning", "error")
  for (level in report_level) {
    use_spell_check(build_trigger = "weekly", spell_check_additional_files = TRUE, spell_check_report_level = level)
    full_spell_check_content <- readLines(file_path)
    expect_snapshot(full_spell_check_content)
    unlink(file_path)
  }

  # Test that the function returns the correct error when spell_check_report_level is
  # not specified while spell_check_additional_files is TRUE
  expect_message(
    use_spell_check(spell_check_additional_files = TRUE),
    "`spell_check_report_level` is set to 'error' by default"
  )
  unlink(file_path)

  # Test that the function returns an error when spell_check_additional_files is FALSE and
  # spell_check_report_level is set to "error"
  expect_error(
    use_spell_check(spell_check_additional_files = FALSE, spell_check_report_level = "error")
  )
  unlink(file_path)
})
