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

