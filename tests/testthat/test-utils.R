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

test_that("add_args() works with additional_args", {
  workflow_name <- "call-update-pkgdown-add-args.yml"
  use_update_pkgdown(workflow_name = workflow_name)
  additional_args <- list(
    ubuntu = c(
      "sudo apt-get update",
      "sudo apt-get install -y libcurl4-openssl-dev"
    ),
    windows = c("tree"),
    macos = c("brew install curl")
  )

  txt <- readLines(file.path(".github", "workflows", workflow_name))
  test <- add_args(additional_args = additional_args, txt = txt)
  expect_equal(readLines(file.path(".github", "workflows", workflow_name)), txt)
  writeLines(test, file.path(".github", "workflows", workflow_name))
  path <- file.path(".github", "workflows", workflow_name)
  expect_true(file.exists(path))
  expect_snapshot(test)
})

test_that("add_args() works with txt and prev_line", {
  workflow_name <- "call-update-pkgdown-add-args-txt.yml"
  additional_args <- list(
    windows = c("tree"),
    macos = c("brew install curl")
  )

  use_update_pkgdown(workflow_name = workflow_name, additional_args = additional_args)
  path <- file.path(".github", "workflows", workflow_name)
  txt <- readLines(path)
  prev_line <- grep("uses: nmfs-ost/ghactions4r/.github/workflows/update-pkgdown.yml@main",
    txt,
    fixed = TRUE
  ) + 1 # add one because should be on the line with "with"
  modified_txt <- add_args(
    additional_args = list(ubuntu = "sudo apt-get install --only-upgrade libstdc++6"),
    txt = txt,
    prev_line = prev_line
  )
  expect_equal(readLines(path), txt)
  writeLines(modified_txt, path)
  expect_true(file.exists(path))
  test <- readLines(path)
  expect_snapshot(test)
})


# note: other build triggers not tested here because covered in the
# "use_doc_and_style_r() works" grid.
test_that("add_build_trigger() works for push_to_all_branches", {
  my_workflow_name <- "my-calc-cov-summaries.yml"
  use_calc_cov_summaries(
    workflow_name = my_workflow_name,
    build_trigger = "push_to_all_branches"
  )
  path_to_workflow <- file.path(".github", "workflows", my_workflow_name)
  expect_true(file.exists(path_to_workflow))
  template_txt <- readLines(path_to_workflow)
  expect_snapshot(template_txt)
})

test_that("read_caller_template returns lines", {
  my_template_name <- "call-spell-check.yml"
  template_txt <- read_caller_template(my_template_name)
  expect_equal(
    template_txt,
    readLines(system.file("templates", my_template_name, package = "ghactions4r", mustWork = TRUE))
  )
})

test_that("write_caller_template replaces files after writing the new contents", {
  workflow_name <- "atomic-write.yml"
  path <- file.path(".github", "workflows", workflow_name)
  dir.create(dirname(path), recursive = TRUE, showWarnings = FALSE)
  writeLines("original contents", path)

  workflow_path <- write_caller_template(
    txt = c("updated", "contents"),
    workflow_name = workflow_name
  )

  expect_equal(workflow_path, path)
  expect_equal(readLines(path), c("updated", "contents"))
  expect_length(
    list.files(dirname(path), pattern = paste0("^\\.", workflow_name, "-"), all.files = TRUE),
    0
  )
})

test_that("write_caller_template leaves the target intact if replacement fails", {
  workflow_name <- "cannot-replace.yml"
  path <- file.path(".github", "workflows", workflow_name)
  dir.create(path, recursive = TRUE)

  expect_error(
    suppressWarnings(write_caller_template("contents", workflow_name)),
    "Could not replace workflow file"
  )

  expect_true(dir.exists(path))
  expect_length(
    list.files(dirname(path), pattern = paste0("^\\.", workflow_name, "-"), all.files = TRUE),
    0
  )
})

fake_resp <- c("v0.3.0", "v0.2.0", "v0.1.0", "v0.1.0-prerel2", "v0.1.0-prerel")

test_that("pinning to a specific version works as expected", {
  template_path <- system.file("templates", "call-r-cmd-check.yml",
    package = "ghactions4r", mustWork = TRUE
  )
  r_cmd_check_lines <- readLines(template_path)

  # mock the get_tags function so API calls aren't made.
  local_mocked_bindings(
    get_tags = function(...) fake_resp,
  )
  new_r_cmd_check_lines <- use_version_pin(
    gha = r_cmd_check_lines,
    tag = "v0.3.0"
  )
  expect_snapshot(new_r_cmd_check_lines)
  # 0.3.0 is not a valid tag
  expect_snapshot(use_version_pin(gha = r_cmd_check_lines, tag = "0.3.0"),
    error = TRUE
  )
})

# The following test calls an api, so only want to run locally. APIs can be flaky and hit rate limits.
# This ensures that the fake response we are using is still valid; if it is not, we can update it.
test_that("calling api to get tags works", {
  skip_on_ci()
  skip_on_cran()
  available_tags <- get_tags()
  # Ensure that all fake response tags are present in the available tags from the API
  # This keeps the test's intended check while allowing newer tags to appear.
  expect_true(all(fake_resp %in% available_tags))
})
