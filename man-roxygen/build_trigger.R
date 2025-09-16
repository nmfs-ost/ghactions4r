#' @param build_trigger Select the build trigger. Options may include (depending on the workflow)
#'  running on pushing commits to main ("push_to_main"); run when a pull request is
#'  opened, reopened, or updated ("pull_request"); run when a comment containing
#'  the command `\doc-and-style` is made on a pull request by people with write permissions
#'  on the repository ("pr_comment"); run manually with the
#'  workflow_dispatch trigger ("manually"); run on the default branch (usually
#'  main) once a week ("weekly"). Currently, it is not possible to create a file
#'  with multiple build triggers from the function. Instead, users should add all of the
#' appropriate build triggers by editing the file after the use_* function.
