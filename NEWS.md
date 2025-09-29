# ghactions4r 1.0.0

This is technically the first stable release of ghactions4r. We intend to follow [semantic versioning](https://semver.org/) from here on.

## Major Changes

* Allow the doc-and-style workflow to work on multiple branches and make pull requests for each branch in https://github.com/nmfs-ost/ghactions4r/pull/193 
* Cancel concurrent runs. all currently running actions of the same workflow on the same branch will be canceled when a new run is started in https://github.com/nmfs-ost/ghactions4r/pull/200
* Add air as an option for the doc-and-style workflow. See the [`use_doc_and_style_r` documentation](https://nmfs-ost.github.io/ghactions4r/reference/use_doc_and_style_r.html) for information on how to use air instead of styler for styling. By @k-doering-NOAA in https://github.com/nmfs-ost/ghactions4r/pull/204
* Allow the spell_check workflow to optionally spell check additional files. See more information in the [`use_spell_check()` documentation](https://nmfs-ost.github.io/ghactions4r/reference/use_spell_check.html). By @Bai-Li-NOAA in https://github.com/nmfs-ost/ghactions4r/pull/209 and https://github.com/nmfs-ost/ghactions4r/pull/214.
* Allow the doc-and-style workflow to work on pull request command. See the [`use_doc_and_style_r` documentation](https://nmfs-ost.github.io/ghactions4r/reference/use_doc_and_style_r.html) for information on how to set up the doc-and-style caller workflow to work on pull request. By @k-doering-NOAA in https://github.com/nmfs-ost/ghactions4r/pull/223
* Add more build trigger options. The options available differ by workflow and are listed on each use_* [function](https://nmfs-ost.github.io/ghactions4r/reference/index.html) under the `build_trigger` argument description. By @k-doering-NOAA in https://github.com/nmfs-ost/ghactions4r/pull/229.
* Pull `{ghactions4r}` caller workflow templates from the installed `{ghaction4r}` package instead of the main branch of `{ghactions4r}` on GitHub. This helps ensure the templates and functions will play well together. By @k-doering-NOAA in https://github.com/nmfs-ost/ghactions4r/pull/229.
* Allow users to include more than 1 build trigger. The `build_trigger` argument can be specified as a vector. The options available differ by workflow and are listed on each use_* function under the `build_trigger` argument description for each [function](https://nmfs-ost.github.io/ghactions4r/reference/index.html). By @k-doering-NOAA in https://github.com/nmfs-ost/ghactions4r/pull/233

## Minor improvements and bug fixes

* Fix a bug where a `pull_request` build trigger would error out for the doc-and-style workflow. By @k-doering-NOAA in https://github.com/nmfs-ost/ghactions4r/pull/193
* Remove unneeded dependencies from the doc-and-style workflow by @k-doering-NOAA in https://github.com/nmfs-ost/ghactions4r/pull/219 and https://github.com/nmfs-ost/ghactions4r/pull/222

# ghactions4r 0.3.0

## Major changes
* Add option for additional arguments to build-pkgdown, r-cmd-check, and update-pkgdown workflows. See [r-cmd-check documentation](https://nmfs-ost.github.io/ghactions4r/reference/use_r_cmd_check.html) for usage and an example. By @Bai-Li-NOAA in https://github.com/nmfs-ost/ghactions4r/pull/147
* Deprecate style only and doc only workflows. By @k-doering-NOAA in https://github.com/nmfs-ost/ghactions4r/pull/149
* Add workflow to create a coverage badge for display on GitHub. See [use_create_cov_badge() documentation](https://nmfs-ost.github.io/ghactions4r/reference/use_create_cov_badge.html) for usage. By @k-doering-NOAA in https://github.com/nmfs-ost/ghactions4r/pull/168
* Add a workflow to calculate and create coverage summaries on pull requests. See [use_calc_cov_summaries() documentation](https://nmfs-ost.github.io/ghactions4r/reference/use_calc_cov_summaries.html) for usage. By @k-doering-NOAA in https://github.com/nmfs-ost/ghactions4r/pull/170
* Soft deprecate `use_calc_coverage()`. by @k-doering-NOAA in https://github.com/nmfs-ost/ghactions4r/pull/170

## Minor improvements and bug fixes
* Fix: update `rm_dollar_sign()` to handle parentheses and quotations by @Bai-Li-NOAA and @e-perl-NOAA in https://github.com/nmfs-ost/ghactions4r/pull/142 and https://github.com/nmfs-ost/ghactions4r/pull/151
* Reduce GitHub Token Permissions by @k-doering-NOAA in https://github.com/nmfs-ost/ghactions4r/pull/163
* Add option to install Quarto for r cmd check and coverage workflows by @k-doering-NOAA in https://github.com/nmfs-ost/ghactions4r/pull/161 and https://github.com/nmfs-ost/ghactions4r/pull/182
* The {ghactions4r} repository moved from the nmfs-fish-tools organization to the nmfs-ost organization.

**Full Changelog**: https://github.com/nmfs-ost/ghactions4r/compare/v0.2.0...v0.3.0

# ghactions4r 0.2.0

## Major changes

- [Add reusable workflow to check a pkgdown site can build](https://github.com/nmfs-ost/ghactions4r/pull/121)
- [Deprecate 2 unused workflows: publishing to Connect, Build and Deploying bookdown](https://github.com/nmfs-ost/ghactions4r/pull/139)
- [Soft-deprecate 3 rarely used workflows: styling only, documenting only, and description file styling only](https://github.com/nmfs-ost/ghactions4r/pull/131)

## Minor improvements and bug fixes

- [Fix issue with code coverage action not uploading reports to codecov.io](https://github.com/nmfs-ost/ghactions4r/pull/124)
- A [vignette on how to set up code coverage was added](https://nmfs-fish-tools.github.io/ghactions4r/articles/set_up.html)
- [Add depends_on_tmb option to r-cmd-check reusable workflow](https://github.com/nmfs-ost/ghactions4r/pull/107)
- Add [option so users can set use-public-rspm to FALSE in the calc-coverage workflow](https://github.com/nmfs-ost/ghactions4r/pull/113)
- [Add examples for use_doc_and_style_r()](https://github.com/nmfs-ost/ghactions4r/pull/138)

**Full Changelog**: https://github.com/nmfs-ost/ghactions4r/compare/v0.1.0...v0.2.0

# ghactions4r 0.1.0

- First released version
