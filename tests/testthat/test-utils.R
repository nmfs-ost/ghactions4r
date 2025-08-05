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

  add_args(
    workflow_name = workflow_name,
    additional_args = additional_args
  )
  path <- file.path(".github", "workflows", workflow_name)
  expect_true(file.exists(path))
  test <- readLines(path)
  expect_snapshot(test)
})

test_that("add_args() works with txt and prev_line", {
  workflow_name <- "call-update-pkgdown-text-prev_line.yml"
  use_update_pkgdown(workflow_name = workflow_name)
  path <- file.path(".github", "workflows", workflow_name)

  txt <- readLines(path)
  prev_line <- grep("uses: nmfs-ost/ghactions4r/.github/workflows/update-pkgdown.yml@main",
    txt,
    fixed = TRUE
  )
  add_args(
    workflow_name = workflow_name,
    additional_args = list(ubuntu = "sudo apt-get install --only-upgrade libstdc++6"),
    txt = txt,
    prev_line = prev_line
  )
  expect_true(file.exists(path))
  test <- readLines(path)
  expect_snapshot(test)
})
