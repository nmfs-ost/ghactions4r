#' @param build_trigger Select the build trigger. Options depend on the
#'  workflow but may include run on pushing commits to main ("push_to_main");
#'  run on pushing commits to any branch ("push_to_any_branch");
#'  run when a pull request is opened, reopened, or updated ("pull_request"); 
#'  run manually with the workflow_dispatch trigger ("manually"); run on the #'  default branch (usually main) once a week ("weekly").
