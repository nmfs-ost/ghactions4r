#' @param tag_ghactions4r Tag of ghactions4r workflow to pin to for the
#'  reusable workflow. This ensures compatibility with a specific version of 
#'  ghactions4r functions. The tradeoff is that fixes will not happen 
#'  automatically; instead, the user will have to update the pinned version of 
#'  the caller workflow used. See the options by looking at the 
#'  [ghactions4r tags](https://github.com/nmfs-ost/ghactions4r/tags). Another 
#'  option is to pin to commit hashes, but the user will need to do this by 
#'  manually editing the caller workflow after creation. See 
#'  [github documentation on security](https://docs.github.com/en/actions/reference/security/secure-use)
#'  to understand how this is more secure. Again, the tradeoff is that the 
#'  workflow will not be automatically updated.