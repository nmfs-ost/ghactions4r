# add_args() works with additional_args

    Code
      test
    Output
       [1] "# updates exiting pkgdown site for a repository"                                                                                          
       [2] "# deploys to a branch gh-pages"                                                                                                           
       [3] "name: call-update-pkgdown"                                                                                                                
       [4] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [5] "on:"                                                                                                                                      
       [6] "  push:"                                                                                                                                  
       [7] "    branches: [main]"                                                                                                                     
       [8] ""                                                                                                                                         
       [9] "# Give the fewest permissions possible. content is necessary."                                                                            
      [10] "# https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/controlling-permissions-for-github_token"         
      [11] "permissions:"                                                                                                                             
      [12] "  contents: write"                                                                                                                        
      [13] ""                                                                                                                                         
      [14] "jobs:"                                                                                                                                    
      [15] "  call-workflow:"                                                                                                                         
      [16] "    uses: nmfs-ost/ghactions4r/.github/workflows/update-pkgdown.yml@main"                                                                 
      [17] "    with:"                                                                                                                                
      [18] "      additional_args_ubuntu: |"                                                                                                          
      [19] "        sudo apt-get update"                                                                                                              
      [20] "        sudo apt-get install -y libcurl4-openssl-dev"                                                                                     
      [21] "      additional_args_macos: |"                                                                                                           
      [22] "        brew install curl"                                                                                                                
      [23] "      additional_args_windows: |"                                                                                                         
      [24] "        tree"                                                                                                                             

# add_args() works with txt and prev_line

    Code
      test
    Output
       [1] "# updates exiting pkgdown site for a repository"                                                                                          
       [2] "# deploys to a branch gh-pages"                                                                                                           
       [3] "name: call-update-pkgdown"                                                                                                                
       [4] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [5] "on:"                                                                                                                                      
       [6] "  push:"                                                                                                                                  
       [7] "    branches: [main]"                                                                                                                     
       [8] ""                                                                                                                                         
       [9] "# Give the fewest permissions possible. content is necessary."                                                                            
      [10] "# https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/controlling-permissions-for-github_token"         
      [11] "permissions:"                                                                                                                             
      [12] "  contents: write"                                                                                                                        
      [13] ""                                                                                                                                         
      [14] "jobs:"                                                                                                                                    
      [15] "  call-workflow:"                                                                                                                         
      [16] "    uses: nmfs-ost/ghactions4r/.github/workflows/update-pkgdown.yml@main"                                                                 
      [17] "    with:"                                                                                                                                
      [18] "      additional_args_ubuntu: |"                                                                                                          
      [19] "        sudo apt-get install --only-upgrade libstdc++6"                                                                                   
      [20] "      additional_args_macos: |"                                                                                                           
      [21] "        brew install curl"                                                                                                                
      [22] "      additional_args_windows: |"                                                                                                         
      [23] "        tree"                                                                                                                             

# add_build_trigger() works for push_to_all_branches

    Code
      template_txt
    Output
       [1] "# call a workflow that runs covr::codecov() to calculate code coverage, then"                                                             
       [2] "# uses octocov to summarize the coverage information and post it as appropriate."                                                         
       [3] ""                                                                                                                                         
       [4] "# note that a .octocov.yml file in the repository is also necessary."                                                                     
       [5] "name: call-calc-cov-summaries"                                                                                                            
       [6] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [7] "on:"                                                                                                                                      
       [8] "  push:"                                                                                                                                  
       [9] ""                                                                                                                                         
      [10] "# limits permissions to write, as the common use case is for pull requests;"                                                              
      [11] "# this means certain options may not work, but makes the workflow more secure"                                                            
      [12] "permissions:"                                                                                                                             
      [13] "  pull-requests: write"                                                                                                                   
      [14] ""                                                                                                                                         
      [15] "jobs:"                                                                                                                                    
      [16] "  call-workflow:"                                                                                                                         
      [17] "    uses: nmfs-ost/ghactions4r/.github/workflows/calc-cov-summaries.yml@main"                                                             

# copy_caller_template works

    Code
      template_txt
    Output
       [1] "# run devtools::spell_check()"                                                                                                            
       [2] "name: call-spell-check"                                                                                                                   
       [3] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [4] "on:"                                                                                                                                      
       [5] "# [build-trigger-goes-here]"                                                                                                              
       [6] ""                                                                                                                                         
       [7] "# no permissions are needed by the default github token for this workflow to "                                                            
       [8] "# run, so don't pass any."                                                                                                                
       [9] "# https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/controlling-permissions-for-github_token"         
      [10] "permissions: {}"                                                                                                                          
      [11] ""                                                                                                                                         
      [12] "jobs:"                                                                                                                                    
      [13] "  call-workflow:"                                                                                                                         
      [14] "    uses: nmfs-ost/ghactions4r/.github/workflows/spell-check.yml@main"                                                                    

