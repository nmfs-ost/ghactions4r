# all use_r_cmd_check() options work without additional args

    Code
      test
    Output
       [1] "# Run r cmd check"                                                                                                                        
       [2] "name: call-r-cmd-check"                                                                                                                   
       [3] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [4] "on:"                                                                                                                                      
       [5] "  push:"                                                                                                                                  
       [6] "    branches: [main]"                                                                                                                     
       [7] ""                                                                                                                                         
       [8] "# no permissions are needed by the default github token for this workflow to "                                                            
       [9] "# run, so don't pass any."                                                                                                                
      [10] "# https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/controlling-permissions-for-github_token"         
      [11] "permissions: {}"                                                                                                                          
      [12] ""                                                                                                                                         
      [13] "jobs:"                                                                                                                                    
      [14] "  call-workflow:"                                                                                                                         
      [15] "    uses: nmfs-ost/ghactions4r/.github/workflows/r-cmd-check.yml@main"                                                                    
      [16] "    with:"                                                                                                                                
      [17] "      use_full_build_matrix: true"                                                                                                        
      [18] "      depends_on_tmb: true"                                                                                                               
      [19] "      depends_on_quarto: true"                                                                                                            

---

    Code
      test
    Output
       [1] "# Run r cmd check"                                                                                                                        
       [2] "name: call-r-cmd-check"                                                                                                                   
       [3] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [4] "on:"                                                                                                                                      
       [5] "  push:"                                                                                                                                  
       [6] "    branches: [main]"                                                                                                                     
       [7] ""                                                                                                                                         
       [8] "# no permissions are needed by the default github token for this workflow to "                                                            
       [9] "# run, so don't pass any."                                                                                                                
      [10] "# https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/controlling-permissions-for-github_token"         
      [11] "permissions: {}"                                                                                                                          
      [12] ""                                                                                                                                         
      [13] "jobs:"                                                                                                                                    
      [14] "  call-workflow:"                                                                                                                         
      [15] "    uses: nmfs-ost/ghactions4r/.github/workflows/r-cmd-check.yml@main"                                                                    
      [16] "    with:"                                                                                                                                
      [17] "      depends_on_tmb: true"                                                                                                               
      [18] "      depends_on_quarto: true"                                                                                                            

---

    Code
      test
    Output
       [1] "# Run r cmd check"                                                                                                                        
       [2] "name: call-r-cmd-check"                                                                                                                   
       [3] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [4] "on:"                                                                                                                                      
       [5] "  push:"                                                                                                                                  
       [6] "    branches: [main]"                                                                                                                     
       [7] ""                                                                                                                                         
       [8] "# no permissions are needed by the default github token for this workflow to "                                                            
       [9] "# run, so don't pass any."                                                                                                                
      [10] "# https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/controlling-permissions-for-github_token"         
      [11] "permissions: {}"                                                                                                                          
      [12] ""                                                                                                                                         
      [13] "jobs:"                                                                                                                                    
      [14] "  call-workflow:"                                                                                                                         
      [15] "    uses: nmfs-ost/ghactions4r/.github/workflows/r-cmd-check.yml@main"                                                                    
      [16] "    with:"                                                                                                                                
      [17] "      use_full_build_matrix: true"                                                                                                        
      [18] "      depends_on_quarto: true"                                                                                                            

---

    Code
      test
    Output
       [1] "# Run r cmd check"                                                                                                                        
       [2] "name: call-r-cmd-check"                                                                                                                   
       [3] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [4] "on:"                                                                                                                                      
       [5] "  push:"                                                                                                                                  
       [6] "    branches: [main]"                                                                                                                     
       [7] ""                                                                                                                                         
       [8] "# no permissions are needed by the default github token for this workflow to "                                                            
       [9] "# run, so don't pass any."                                                                                                                
      [10] "# https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/controlling-permissions-for-github_token"         
      [11] "permissions: {}"                                                                                                                          
      [12] ""                                                                                                                                         
      [13] "jobs:"                                                                                                                                    
      [14] "  call-workflow:"                                                                                                                         
      [15] "    uses: nmfs-ost/ghactions4r/.github/workflows/r-cmd-check.yml@main"                                                                    
      [16] "    with:"                                                                                                                                
      [17] "      depends_on_quarto: true"                                                                                                            

---

    Code
      test
    Output
       [1] "# Run r cmd check"                                                                                                                        
       [2] "name: call-r-cmd-check"                                                                                                                   
       [3] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [4] "on:"                                                                                                                                      
       [5] "  push:"                                                                                                                                  
       [6] "    branches: [main]"                                                                                                                     
       [7] ""                                                                                                                                         
       [8] "# no permissions are needed by the default github token for this workflow to "                                                            
       [9] "# run, so don't pass any."                                                                                                                
      [10] "# https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/controlling-permissions-for-github_token"         
      [11] "permissions: {}"                                                                                                                          
      [12] ""                                                                                                                                         
      [13] "jobs:"                                                                                                                                    
      [14] "  call-workflow:"                                                                                                                         
      [15] "    uses: nmfs-ost/ghactions4r/.github/workflows/r-cmd-check.yml@main"                                                                    
      [16] "    with:"                                                                                                                                
      [17] "      use_full_build_matrix: true"                                                                                                        
      [18] "      depends_on_tmb: true"                                                                                                               

---

    Code
      test
    Output
       [1] "# Run r cmd check"                                                                                                                        
       [2] "name: call-r-cmd-check"                                                                                                                   
       [3] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [4] "on:"                                                                                                                                      
       [5] "  push:"                                                                                                                                  
       [6] "    branches: [main]"                                                                                                                     
       [7] ""                                                                                                                                         
       [8] "# no permissions are needed by the default github token for this workflow to "                                                            
       [9] "# run, so don't pass any."                                                                                                                
      [10] "# https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/controlling-permissions-for-github_token"         
      [11] "permissions: {}"                                                                                                                          
      [12] ""                                                                                                                                         
      [13] "jobs:"                                                                                                                                    
      [14] "  call-workflow:"                                                                                                                         
      [15] "    uses: nmfs-ost/ghactions4r/.github/workflows/r-cmd-check.yml@main"                                                                    
      [16] "    with:"                                                                                                                                
      [17] "      depends_on_tmb: true"                                                                                                               

---

    Code
      test
    Output
       [1] "# Run r cmd check"                                                                                                                        
       [2] "name: call-r-cmd-check"                                                                                                                   
       [3] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [4] "on:"                                                                                                                                      
       [5] "  push:"                                                                                                                                  
       [6] "    branches: [main]"                                                                                                                     
       [7] ""                                                                                                                                         
       [8] "# no permissions are needed by the default github token for this workflow to "                                                            
       [9] "# run, so don't pass any."                                                                                                                
      [10] "# https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/controlling-permissions-for-github_token"         
      [11] "permissions: {}"                                                                                                                          
      [12] ""                                                                                                                                         
      [13] "jobs:"                                                                                                                                    
      [14] "  call-workflow:"                                                                                                                         
      [15] "    uses: nmfs-ost/ghactions4r/.github/workflows/r-cmd-check.yml@main"                                                                    
      [16] "    with:"                                                                                                                                
      [17] "      use_full_build_matrix: true"                                                                                                        

---

    Code
      test
    Output
       [1] "# Run r cmd check"                                                                                                                        
       [2] "name: call-r-cmd-check"                                                                                                                   
       [3] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [4] "on:"                                                                                                                                      
       [5] "  push:"                                                                                                                                  
       [6] "    branches: [main]"                                                                                                                     
       [7] ""                                                                                                                                         
       [8] "# no permissions are needed by the default github token for this workflow to "                                                            
       [9] "# run, so don't pass any."                                                                                                                
      [10] "# https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/controlling-permissions-for-github_token"         
      [11] "permissions: {}"                                                                                                                          
      [12] ""                                                                                                                                         
      [13] "jobs:"                                                                                                                                    
      [14] "  call-workflow:"                                                                                                                         
      [15] "    uses: nmfs-ost/ghactions4r/.github/workflows/r-cmd-check.yml@main"                                                                    

# all use_r_cmd_check() options work with additional args

    Code
      test
    Output
       [1] "# Run r cmd check"                                                                                                                        
       [2] "name: call-r-cmd-check"                                                                                                                   
       [3] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [4] "on:"                                                                                                                                      
       [5] "  push:"                                                                                                                                  
       [6] "    branches: [main]"                                                                                                                     
       [7] ""                                                                                                                                         
       [8] "# no permissions are needed by the default github token for this workflow to "                                                            
       [9] "# run, so don't pass any."                                                                                                                
      [10] "# https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/controlling-permissions-for-github_token"         
      [11] "permissions: {}"                                                                                                                          
      [12] ""                                                                                                                                         
      [13] "jobs:"                                                                                                                                    
      [14] "  call-workflow:"                                                                                                                         
      [15] "    uses: nmfs-ost/ghactions4r/.github/workflows/r-cmd-check.yml@main"                                                                    
      [16] "    with:"                                                                                                                                
      [17] "      additional_args_ubuntu: |"                                                                                                          
      [18] "        sudo apt-get update"                                                                                                              
      [19] "        sudo apt-get install -y libcurl4-openssl-dev"                                                                                     
      [20] "        sudo add-apt-repository ppa:ubuntu-toolchain-r/test"                                                                              
      [21] "        sudo apt-get install --only-upgrade libstdc++6"                                                                                   
      [22] "      additional_args_macos: |"                                                                                                           
      [23] "        brew install curl"                                                                                                                
      [24] "      additional_args_windows: |"                                                                                                         
      [25] "        tree"                                                                                                                             
      [26] "      use_full_build_matrix: true"                                                                                                        
      [27] "      depends_on_tmb: true"                                                                                                               
      [28] "      depends_on_quarto: true"                                                                                                            

---

    Code
      test
    Output
       [1] "# Run r cmd check"                                                                                                                        
       [2] "name: call-r-cmd-check"                                                                                                                   
       [3] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [4] "on:"                                                                                                                                      
       [5] "  push:"                                                                                                                                  
       [6] "    branches: [main]"                                                                                                                     
       [7] ""                                                                                                                                         
       [8] "# no permissions are needed by the default github token for this workflow to "                                                            
       [9] "# run, so don't pass any."                                                                                                                
      [10] "# https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/controlling-permissions-for-github_token"         
      [11] "permissions: {}"                                                                                                                          
      [12] ""                                                                                                                                         
      [13] "jobs:"                                                                                                                                    
      [14] "  call-workflow:"                                                                                                                         
      [15] "    uses: nmfs-ost/ghactions4r/.github/workflows/r-cmd-check.yml@main"                                                                    
      [16] "    with:"                                                                                                                                
      [17] "      additional_args_ubuntu: |"                                                                                                          
      [18] "        sudo apt-get update"                                                                                                              
      [19] "        sudo apt-get install -y libcurl4-openssl-dev"                                                                                     
      [20] "        sudo add-apt-repository ppa:ubuntu-toolchain-r/test"                                                                              
      [21] "        sudo apt-get install --only-upgrade libstdc++6"                                                                                   
      [22] "      additional_args_macos: |"                                                                                                           
      [23] "        brew install curl"                                                                                                                
      [24] "      additional_args_windows: |"                                                                                                         
      [25] "        tree"                                                                                                                             
      [26] "      depends_on_tmb: true"                                                                                                               
      [27] "      depends_on_quarto: true"                                                                                                            

---

    Code
      test
    Output
       [1] "# Run r cmd check"                                                                                                                        
       [2] "name: call-r-cmd-check"                                                                                                                   
       [3] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [4] "on:"                                                                                                                                      
       [5] "  push:"                                                                                                                                  
       [6] "    branches: [main]"                                                                                                                     
       [7] ""                                                                                                                                         
       [8] "# no permissions are needed by the default github token for this workflow to "                                                            
       [9] "# run, so don't pass any."                                                                                                                
      [10] "# https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/controlling-permissions-for-github_token"         
      [11] "permissions: {}"                                                                                                                          
      [12] ""                                                                                                                                         
      [13] "jobs:"                                                                                                                                    
      [14] "  call-workflow:"                                                                                                                         
      [15] "    uses: nmfs-ost/ghactions4r/.github/workflows/r-cmd-check.yml@main"                                                                    
      [16] "    with:"                                                                                                                                
      [17] "      additional_args_ubuntu: |"                                                                                                          
      [18] "        sudo apt-get update"                                                                                                              
      [19] "        sudo apt-get install -y libcurl4-openssl-dev"                                                                                     
      [20] "        sudo add-apt-repository ppa:ubuntu-toolchain-r/test"                                                                              
      [21] "        sudo apt-get install --only-upgrade libstdc++6"                                                                                   
      [22] "      additional_args_macos: |"                                                                                                           
      [23] "        brew install curl"                                                                                                                
      [24] "      additional_args_windows: |"                                                                                                         
      [25] "        tree"                                                                                                                             
      [26] "      use_full_build_matrix: true"                                                                                                        
      [27] "      depends_on_quarto: true"                                                                                                            

---

    Code
      test
    Output
       [1] "# Run r cmd check"                                                                                                                        
       [2] "name: call-r-cmd-check"                                                                                                                   
       [3] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [4] "on:"                                                                                                                                      
       [5] "  push:"                                                                                                                                  
       [6] "    branches: [main]"                                                                                                                     
       [7] ""                                                                                                                                         
       [8] "# no permissions are needed by the default github token for this workflow to "                                                            
       [9] "# run, so don't pass any."                                                                                                                
      [10] "# https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/controlling-permissions-for-github_token"         
      [11] "permissions: {}"                                                                                                                          
      [12] ""                                                                                                                                         
      [13] "jobs:"                                                                                                                                    
      [14] "  call-workflow:"                                                                                                                         
      [15] "    uses: nmfs-ost/ghactions4r/.github/workflows/r-cmd-check.yml@main"                                                                    
      [16] "    with:"                                                                                                                                
      [17] "      additional_args_ubuntu: |"                                                                                                          
      [18] "        sudo apt-get update"                                                                                                              
      [19] "        sudo apt-get install -y libcurl4-openssl-dev"                                                                                     
      [20] "        sudo add-apt-repository ppa:ubuntu-toolchain-r/test"                                                                              
      [21] "        sudo apt-get install --only-upgrade libstdc++6"                                                                                   
      [22] "      additional_args_macos: |"                                                                                                           
      [23] "        brew install curl"                                                                                                                
      [24] "      additional_args_windows: |"                                                                                                         
      [25] "        tree"                                                                                                                             
      [26] "      depends_on_quarto: true"                                                                                                            

---

    Code
      test
    Output
       [1] "# Run r cmd check"                                                                                                                        
       [2] "name: call-r-cmd-check"                                                                                                                   
       [3] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [4] "on:"                                                                                                                                      
       [5] "  push:"                                                                                                                                  
       [6] "    branches: [main]"                                                                                                                     
       [7] ""                                                                                                                                         
       [8] "# no permissions are needed by the default github token for this workflow to "                                                            
       [9] "# run, so don't pass any."                                                                                                                
      [10] "# https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/controlling-permissions-for-github_token"         
      [11] "permissions: {}"                                                                                                                          
      [12] ""                                                                                                                                         
      [13] "jobs:"                                                                                                                                    
      [14] "  call-workflow:"                                                                                                                         
      [15] "    uses: nmfs-ost/ghactions4r/.github/workflows/r-cmd-check.yml@main"                                                                    
      [16] "    with:"                                                                                                                                
      [17] "      additional_args_ubuntu: |"                                                                                                          
      [18] "        sudo apt-get update"                                                                                                              
      [19] "        sudo apt-get install -y libcurl4-openssl-dev"                                                                                     
      [20] "        sudo add-apt-repository ppa:ubuntu-toolchain-r/test"                                                                              
      [21] "        sudo apt-get install --only-upgrade libstdc++6"                                                                                   
      [22] "      additional_args_macos: |"                                                                                                           
      [23] "        brew install curl"                                                                                                                
      [24] "      additional_args_windows: |"                                                                                                         
      [25] "        tree"                                                                                                                             
      [26] "      use_full_build_matrix: true"                                                                                                        
      [27] "      depends_on_tmb: true"                                                                                                               

---

    Code
      test
    Output
       [1] "# Run r cmd check"                                                                                                                        
       [2] "name: call-r-cmd-check"                                                                                                                   
       [3] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [4] "on:"                                                                                                                                      
       [5] "  push:"                                                                                                                                  
       [6] "    branches: [main]"                                                                                                                     
       [7] ""                                                                                                                                         
       [8] "# no permissions are needed by the default github token for this workflow to "                                                            
       [9] "# run, so don't pass any."                                                                                                                
      [10] "# https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/controlling-permissions-for-github_token"         
      [11] "permissions: {}"                                                                                                                          
      [12] ""                                                                                                                                         
      [13] "jobs:"                                                                                                                                    
      [14] "  call-workflow:"                                                                                                                         
      [15] "    uses: nmfs-ost/ghactions4r/.github/workflows/r-cmd-check.yml@main"                                                                    
      [16] "    with:"                                                                                                                                
      [17] "      additional_args_ubuntu: |"                                                                                                          
      [18] "        sudo apt-get update"                                                                                                              
      [19] "        sudo apt-get install -y libcurl4-openssl-dev"                                                                                     
      [20] "        sudo add-apt-repository ppa:ubuntu-toolchain-r/test"                                                                              
      [21] "        sudo apt-get install --only-upgrade libstdc++6"                                                                                   
      [22] "      additional_args_macos: |"                                                                                                           
      [23] "        brew install curl"                                                                                                                
      [24] "      additional_args_windows: |"                                                                                                         
      [25] "        tree"                                                                                                                             
      [26] "      depends_on_tmb: true"                                                                                                               

---

    Code
      test
    Output
       [1] "# Run r cmd check"                                                                                                                        
       [2] "name: call-r-cmd-check"                                                                                                                   
       [3] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [4] "on:"                                                                                                                                      
       [5] "  push:"                                                                                                                                  
       [6] "    branches: [main]"                                                                                                                     
       [7] ""                                                                                                                                         
       [8] "# no permissions are needed by the default github token for this workflow to "                                                            
       [9] "# run, so don't pass any."                                                                                                                
      [10] "# https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/controlling-permissions-for-github_token"         
      [11] "permissions: {}"                                                                                                                          
      [12] ""                                                                                                                                         
      [13] "jobs:"                                                                                                                                    
      [14] "  call-workflow:"                                                                                                                         
      [15] "    uses: nmfs-ost/ghactions4r/.github/workflows/r-cmd-check.yml@main"                                                                    
      [16] "    with:"                                                                                                                                
      [17] "      additional_args_ubuntu: |"                                                                                                          
      [18] "        sudo apt-get update"                                                                                                              
      [19] "        sudo apt-get install -y libcurl4-openssl-dev"                                                                                     
      [20] "        sudo add-apt-repository ppa:ubuntu-toolchain-r/test"                                                                              
      [21] "        sudo apt-get install --only-upgrade libstdc++6"                                                                                   
      [22] "      additional_args_macos: |"                                                                                                           
      [23] "        brew install curl"                                                                                                                
      [24] "      additional_args_windows: |"                                                                                                         
      [25] "        tree"                                                                                                                             
      [26] "      use_full_build_matrix: true"                                                                                                        

---

    Code
      test
    Output
       [1] "# Run r cmd check"                                                                                                                        
       [2] "name: call-r-cmd-check"                                                                                                                   
       [3] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [4] "on:"                                                                                                                                      
       [5] "  push:"                                                                                                                                  
       [6] "    branches: [main]"                                                                                                                     
       [7] ""                                                                                                                                         
       [8] "# no permissions are needed by the default github token for this workflow to "                                                            
       [9] "# run, so don't pass any."                                                                                                                
      [10] "# https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/controlling-permissions-for-github_token"         
      [11] "permissions: {}"                                                                                                                          
      [12] ""                                                                                                                                         
      [13] "jobs:"                                                                                                                                    
      [14] "  call-workflow:"                                                                                                                         
      [15] "    uses: nmfs-ost/ghactions4r/.github/workflows/r-cmd-check.yml@main"                                                                    
      [16] "    with:"                                                                                                                                
      [17] "      additional_args_ubuntu: |"                                                                                                          
      [18] "        sudo apt-get update"                                                                                                              
      [19] "        sudo apt-get install -y libcurl4-openssl-dev"                                                                                     
      [20] "        sudo add-apt-repository ppa:ubuntu-toolchain-r/test"                                                                              
      [21] "        sudo apt-get install --only-upgrade libstdc++6"                                                                                   
      [22] "      additional_args_macos: |"                                                                                                           
      [23] "        brew install curl"                                                                                                                
      [24] "      additional_args_windows: |"                                                                                                         
      [25] "        tree"                                                                                                                             

# use_r_cmd_check() works with additional_args mac only

    Code
      test
    Output
       [1] "# Run r cmd check"                                                                                                                        
       [2] "name: call-r-cmd-check"                                                                                                                   
       [3] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [4] "on:"                                                                                                                                      
       [5] "  push:"                                                                                                                                  
       [6] "    branches: [main]"                                                                                                                     
       [7] ""                                                                                                                                         
       [8] "# no permissions are needed by the default github token for this workflow to "                                                            
       [9] "# run, so don't pass any."                                                                                                                
      [10] "# https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/controlling-permissions-for-github_token"         
      [11] "permissions: {}"                                                                                                                          
      [12] ""                                                                                                                                         
      [13] "jobs:"                                                                                                                                    
      [14] "  call-workflow:"                                                                                                                         
      [15] "    uses: nmfs-ost/ghactions4r/.github/workflows/r-cmd-check.yml@main"                                                                    
      [16] "    with:"                                                                                                                                
      [17] "      additional_args_macos: |"                                                                                                           
      [18] "        brew install curl"                                                                                                                
      [19] "      use_full_build_matrix: true"                                                                                                        

# use_calc_cov_summaries() works

    Code
      test
    Output
       [1] "# call a workflow that runs covr::codecov() to calculate code coverage, then"                                                             
       [2] "# uses octocov to summarize the coverage information and post it as appropriate."                                                         
       [3] ""                                                                                                                                         
       [4] "# note that a .octocov.yml file in the repository is also necessary."                                                                     
       [5] "name: call-calc-cov-summaries"                                                                                                            
       [6] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [7] "on:"                                                                                                                                      
       [8] "  pull_request:"                                                                                                                          
       [9] ""                                                                                                                                         
      [10] "# limits permissions to write, as the common use case is for pull requests;"                                                              
      [11] "# this means certain options may not work, but makes the workflow more secure"                                                            
      [12] "permissions:"                                                                                                                             
      [13] "  pull-requests: write"                                                                                                                   
      [14] ""                                                                                                                                         
      [15] "jobs:"                                                                                                                                    
      [16] "  call-workflow:"                                                                                                                         
      [17] "    uses: nmfs-ost/ghactions4r/.github/workflows/calc-cov-summaries.yml@main"                                                             

---

    Code
      test_octoyml
    Output
       [1] "# .octocov.yml. See definitions: https://github.com/k1LoW/octocov?tab=readme-ov-file#configuration"
       [2] "coverage:"                                                                                         
       [3] "  paths:"                                                                                          
       [4] "    - coverage.xml"                                                                                
       [5] "codeToTestRatio:"                                                                                  
       [6] "  code:"                                                                                           
       [7] "    - 'R/**.R'"                                                                                    
       [8] "  test:"                                                                                           
       [9] "    - 'tests/testthat/test*.R'"                                                                    
      [10] "testExecutionTime:"                                                                                
      [11] "  if: true"                                                                                        
      [12] "comment:"                                                                                          
      [13] "  if: is_pull_request"                                                                             
      [14] "summary:"                                                                                          
      [15] "  if: true"                                                                                        

# use_calc_cov_summaries() works with use_public_rspm = FALSE

    Code
      test
    Output
       [1] "# call a workflow that runs covr::codecov() to calculate code coverage, then"                                                             
       [2] "# uses octocov to summarize the coverage information and post it as appropriate."                                                         
       [3] ""                                                                                                                                         
       [4] "# note that a .octocov.yml file in the repository is also necessary."                                                                     
       [5] "name: call-calc-cov-summaries"                                                                                                            
       [6] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [7] "on:"                                                                                                                                      
       [8] "  pull_request:"                                                                                                                          
       [9] ""                                                                                                                                         
      [10] "# limits permissions to write, as the common use case is for pull requests;"                                                              
      [11] "# this means certain options may not work, but makes the workflow more secure"                                                            
      [12] "permissions:"                                                                                                                             
      [13] "  pull-requests: write"                                                                                                                   
      [14] ""                                                                                                                                         
      [15] "jobs:"                                                                                                                                    
      [16] "  call-workflow:"                                                                                                                         
      [17] "    uses: nmfs-ost/ghactions4r/.github/workflows/calc-cov-summaries.yml@main"                                                             
      [18] "    with:"                                                                                                                                
      [19] "      use-public-rspm: false"                                                                                                             

# use_calc_cov_summaries() works with use-public-rspm = FALSE and depends_on_quarto = TRUE

    Code
      test
    Output
       [1] "# call a workflow that runs covr::codecov() to calculate code coverage, then"                                                             
       [2] "# uses octocov to summarize the coverage information and post it as appropriate."                                                         
       [3] ""                                                                                                                                         
       [4] "# note that a .octocov.yml file in the repository is also necessary."                                                                     
       [5] "name: call-calc-cov-summaries"                                                                                                            
       [6] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [7] "on:"                                                                                                                                      
       [8] "  pull_request:"                                                                                                                          
       [9] ""                                                                                                                                         
      [10] "# limits permissions to write, as the common use case is for pull requests;"                                                              
      [11] "# this means certain options may not work, but makes the workflow more secure"                                                            
      [12] "permissions:"                                                                                                                             
      [13] "  pull-requests: write"                                                                                                                   
      [14] ""                                                                                                                                         
      [15] "jobs:"                                                                                                                                    
      [16] "  call-workflow:"                                                                                                                         
      [17] "    uses: nmfs-ost/ghactions4r/.github/workflows/calc-cov-summaries.yml@main"                                                             
      [18] "    with:"                                                                                                                                
      [19] "      depends_on_quarto: true"                                                                                                            
      [20] "      use-public-rspm: false"                                                                                                             

# use_calc_cov_summaries() works with use-public-rspm = TRUE and depends_on_quarto = TRUE

    Code
      test
    Output
       [1] "# call a workflow that runs covr::codecov() to calculate code coverage, then"                                                             
       [2] "# uses octocov to summarize the coverage information and post it as appropriate."                                                         
       [3] ""                                                                                                                                         
       [4] "# note that a .octocov.yml file in the repository is also necessary."                                                                     
       [5] "name: call-calc-cov-summaries"                                                                                                            
       [6] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [7] "on:"                                                                                                                                      
       [8] "  pull_request:"                                                                                                                          
       [9] ""                                                                                                                                         
      [10] "# limits permissions to write, as the common use case is for pull requests;"                                                              
      [11] "# this means certain options may not work, but makes the workflow more secure"                                                            
      [12] "permissions:"                                                                                                                             
      [13] "  pull-requests: write"                                                                                                                   
      [14] ""                                                                                                                                         
      [15] "jobs:"                                                                                                                                    
      [16] "  call-workflow:"                                                                                                                         
      [17] "    uses: nmfs-ost/ghactions4r/.github/workflows/calc-cov-summaries.yml@main"                                                             
      [18] "    with:"                                                                                                                                
      [19] "      depends_on_quarto: true"                                                                                                            

# use_calc_coverage() works

    Code
      test
    Output
       [1] "# call a workflow that runs covr::codecov() to calculate code coverage"                                                                   
       [2] "name: call-calc_coverage"                                                                                                                 
       [3] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [4] "# The default is to run the workflow on every push or pull request to every branch."                                                      
       [5] "on: [push, pull_request]"                                                                                                                 
       [6] "jobs:"                                                                                                                                    
       [7] "  call-workflow:"                                                                                                                         
       [8] "    uses: nmfs-ost/ghactions4r/.github/workflows/calc-coverage.yml@main"                                                                  
       [9] "    secrets:"                                                                                                                             
      [10] "      CODECOV_TOKEN: ${{ secrets.CODECOV_TOKEN}}"                                                                                         

# use_calc_coverage() works with use-public-rspm = FALSE

    Code
      test
    Output
       [1] "# call a workflow that runs covr::codecov() to calculate code coverage"                                                                   
       [2] "name: call-calc_coverage"                                                                                                                 
       [3] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [4] "# The default is to run the workflow on every push or pull request to every branch."                                                      
       [5] "on: [push, pull_request]"                                                                                                                 
       [6] "jobs:"                                                                                                                                    
       [7] "  call-workflow:"                                                                                                                         
       [8] "    uses: nmfs-ost/ghactions4r/.github/workflows/calc-coverage.yml@main"                                                                  
       [9] "    with:"                                                                                                                                
      [10] "      use-public-rspm: false"                                                                                                             
      [11] "    secrets:"                                                                                                                             
      [12] "      CODECOV_TOKEN: ${{ secrets.CODECOV_TOKEN}}"                                                                                         

# use_create_cov_badge() works

    Code
      test
    Output
       [1] "# Reusable workflow to calculate coverage add it to a badge that is stored on "                                                           
       [2] "# a branch in the repo called badges."                                                                                                    
       [3] "# note that this has only been tested to build a badge with the main branch"                                                              
       [4] "# coverage; it may not work to calculate coverage from other branches."                                                                   
       [5] "name: call-create-cov-badge"                                                                                                              
       [6] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [7] "on:"                                                                                                                                      
       [8] "  push:"                                                                                                                                  
       [9] "    branches: [main]"                                                                                                                     
      [10] ""                                                                                                                                         
      [11] "# limits permissions to write, which is the minimum permissions needed to create"                                                         
      [12] "# the coverage badge."                                                                                                                    
      [13] "permissions:"                                                                                                                             
      [14] "  contents: write"                                                                                                                        
      [15] ""                                                                                                                                         
      [16] "jobs:"                                                                                                                                    
      [17] "  call-workflow:"                                                                                                                         
      [18] "    uses: nmfs-ost/ghactions4r/.github/workflows/create-cov-badge.yml@main"                                                               

# use_create_cov_badge() works with use-public-rspm = FALSE

    Code
      test
    Output
       [1] "# Reusable workflow to calculate coverage add it to a badge that is stored on "                                                           
       [2] "# a branch in the repo called badges."                                                                                                    
       [3] "# note that this has only been tested to build a badge with the main branch"                                                              
       [4] "# coverage; it may not work to calculate coverage from other branches."                                                                   
       [5] "name: call-create-cov-badge"                                                                                                              
       [6] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [7] "on:"                                                                                                                                      
       [8] "# [build-trigger-goes-here]"                                                                                                              
       [9] ""                                                                                                                                         
      [10] "# limits permissions to write, which is the minimum permissions needed to create"                                                         
      [11] "# the coverage badge."                                                                                                                    
      [12] "permissions:"                                                                                                                             
      [13] "  contents: write"                                                                                                                        
      [14] ""                                                                                                                                         
      [15] "jobs:"                                                                                                                                    
      [16] "  call-workflow:"                                                                                                                         
      [17] "    uses: nmfs-ost/ghactions4r/.github/workflows/create-cov-badge.yml@main"                                                               
      [18] "    with:"                                                                                                                                
      [19] "      use-public-rspm: false"                                                                                                             

# use_create_cov_badge() works with use-public-rspm = FALSE and depends_on_quarto = TRUE

    Code
      test
    Output
       [1] "# Reusable workflow to calculate coverage add it to a badge that is stored on "                                                           
       [2] "# a branch in the repo called badges."                                                                                                    
       [3] "# note that this has only been tested to build a badge with the main branch"                                                              
       [4] "# coverage; it may not work to calculate coverage from other branches."                                                                   
       [5] "name: call-create-cov-badge"                                                                                                              
       [6] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [7] "on:"                                                                                                                                      
       [8] "# [build-trigger-goes-here]"                                                                                                              
       [9] ""                                                                                                                                         
      [10] "# limits permissions to write, which is the minimum permissions needed to create"                                                         
      [11] "# the coverage badge."                                                                                                                    
      [12] "permissions:"                                                                                                                             
      [13] "  contents: write"                                                                                                                        
      [14] ""                                                                                                                                         
      [15] "jobs:"                                                                                                                                    
      [16] "  call-workflow:"                                                                                                                         
      [17] "    uses: nmfs-ost/ghactions4r/.github/workflows/create-cov-badge.yml@main"                                                               
      [18] "    with:"                                                                                                                                
      [19] "      depends_on_quarto: true"                                                                                                            
      [20] "      use-public-rspm: false"                                                                                                             

# use_create_cov_badge() works with use-public-rspm = TRUE and depends-on-quarto = TRUE

    Code
      test
    Output
       [1] "# Reusable workflow to calculate coverage add it to a badge that is stored on "                                                           
       [2] "# a branch in the repo called badges."                                                                                                    
       [3] "# note that this has only been tested to build a badge with the main branch"                                                              
       [4] "# coverage; it may not work to calculate coverage from other branches."                                                                   
       [5] "name: call-create-cov-badge"                                                                                                              
       [6] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [7] "on:"                                                                                                                                      
       [8] "# [build-trigger-goes-here]"                                                                                                              
       [9] ""                                                                                                                                         
      [10] "# limits permissions to write, which is the minimum permissions needed to create"                                                         
      [11] "# the coverage badge."                                                                                                                    
      [12] "permissions:"                                                                                                                             
      [13] "  contents: write"                                                                                                                        
      [14] ""                                                                                                                                         
      [15] "jobs:"                                                                                                                                    
      [16] "  call-workflow:"                                                                                                                         
      [17] "    uses: nmfs-ost/ghactions4r/.github/workflows/create-cov-badge.yml@main"                                                               
      [18] "    with:"                                                                                                                                
      [19] "      depends_on_quarto: true"                                                                                                            

# use_doc_and_style_r() works

    Code
      test
    Output
       [1] "# document and style R code using a reusable workflow"                                                                                    
       [2] "name: call-doc-and-style-r"                                                                                                               
       [3] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [4] "on:"                                                                                                                                      
       [5] "  push:"                                                                                                                                  
       [6] "    branches: [main]"                                                                                                                     
       [7] ""                                                                                                                                         
       [8] "# Give the fewest permissions possible. content and pull-requests are necessary."                                                         
       [9] "# https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/controlling-permissions-for-github_token"         
      [10] "permissions:"                                                                                                                             
      [11] "  contents: write"                                                                                                                        
      [12] "  pull-requests: write"                                                                                                                   
      [13] ""                                                                                                                                         
      [14] "jobs:"                                                                                                                                    
      [15] "  call-workflow:"                                                                                                                         
      [16] "    uses: nmfs-ost/ghactions4r/.github/workflows/doc-and-style-r.yml@main"                                                                
      [17] "    secrets:"                                                                                                                             
      [18] "      PAT: ${{ secrets.PAT }}"                                                                                                            
      [19] "    with:"                                                                                                                                
      [20] "      use-air: true"                                                                                                                      
      [21] "      run-rm_dollar_sign: true"                                                                                                           
      [22] "  "                                                                                                                                       

---

    Code
      test
    Output
       [1] "# document and style R code using a reusable workflow"                                                                                    
       [2] "name: call-doc-and-style-r"                                                                                                               
       [3] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [4] "on:"                                                                                                                                      
       [5] "  push:"                                                                                                                                  
       [6] "    branches: [main]"                                                                                                                     
       [7] ""                                                                                                                                         
       [8] "# Give the fewest permissions possible. content and pull-requests are necessary."                                                         
       [9] "# https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/controlling-permissions-for-github_token"         
      [10] "permissions:"                                                                                                                             
      [11] "  contents: write"                                                                                                                        
      [12] "  pull-requests: write"                                                                                                                   
      [13] ""                                                                                                                                         
      [14] "jobs:"                                                                                                                                    
      [15] "  call-workflow:"                                                                                                                         
      [16] "    uses: nmfs-ost/ghactions4r/.github/workflows/doc-and-style-r.yml@main"                                                                
      [17] "    secrets:"                                                                                                                             
      [18] "      PAT: ${{ secrets.PAT }}"                                                                                                            
      [19] "    with:"                                                                                                                                
      [20] "      use-air: true"                                                                                                                      
      [21] "  "                                                                                                                                       

---

    Code
      test
    Output
       [1] "# document and style R code using a reusable workflow"                                                                                    
       [2] "name: call-doc-and-style-r"                                                                                                               
       [3] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [4] "on:"                                                                                                                                      
       [5] "  pull_request:"                                                                                                                          
       [6] ""                                                                                                                                         
       [7] "# Give the fewest permissions possible. content and pull-requests are necessary."                                                         
       [8] "# https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/controlling-permissions-for-github_token"         
       [9] "permissions:"                                                                                                                             
      [10] "  contents: write"                                                                                                                        
      [11] "  pull-requests: write"                                                                                                                   
      [12] ""                                                                                                                                         
      [13] "jobs:"                                                                                                                                    
      [14] "  call-workflow:"                                                                                                                         
      [15] "    uses: nmfs-ost/ghactions4r/.github/workflows/doc-and-style-r.yml@main"                                                                
      [16] "    secrets:"                                                                                                                             
      [17] "      PAT: ${{ secrets.PAT }}"                                                                                                            
      [18] "    with:"                                                                                                                                
      [19] "      use-air: true"                                                                                                                      
      [20] "      run-rm_dollar_sign: true"                                                                                                           
      [21] "  "                                                                                                                                       

---

    Code
      test
    Output
       [1] "# document and style R code using a reusable workflow"                                                                                    
       [2] "name: call-doc-and-style-r"                                                                                                               
       [3] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [4] "on:"                                                                                                                                      
       [5] "  pull_request:"                                                                                                                          
       [6] ""                                                                                                                                         
       [7] "# Give the fewest permissions possible. content and pull-requests are necessary."                                                         
       [8] "# https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/controlling-permissions-for-github_token"         
       [9] "permissions:"                                                                                                                             
      [10] "  contents: write"                                                                                                                        
      [11] "  pull-requests: write"                                                                                                                   
      [12] ""                                                                                                                                         
      [13] "jobs:"                                                                                                                                    
      [14] "  call-workflow:"                                                                                                                         
      [15] "    uses: nmfs-ost/ghactions4r/.github/workflows/doc-and-style-r.yml@main"                                                                
      [16] "    secrets:"                                                                                                                             
      [17] "      PAT: ${{ secrets.PAT }}"                                                                                                            
      [18] "    with:"                                                                                                                                
      [19] "      use-air: true"                                                                                                                      
      [20] "  "                                                                                                                                       

---

    Code
      test
    Output
       [1] "# document and style R code using a reusable workflow"                                                                                    
       [2] "name: call-doc-and-style-r"                                                                                                               
       [3] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [4] "on:"                                                                                                                                      
       [5] "  issue_comment:"                                                                                                                         
       [6] "    types: [created] "                                                                                                                    
       [7] ""                                                                                                                                         
       [8] "# Give the fewest permissions possible. content and pull-requests are necessary."                                                         
       [9] "# https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/controlling-permissions-for-github_token"         
      [10] "permissions:"                                                                                                                             
      [11] "  contents: write"                                                                                                                        
      [12] "  pull-requests: write"                                                                                                                   
      [13] ""                                                                                                                                         
      [14] "jobs:"                                                                                                                                    
      [15] "  call-workflow:"                                                                                                                         
      [16] "    if: ${{ github.event.issue.pull_request && "                                                                                          
      [17] "            (github.event.comment.author_association == 'MEMBER' || github.event.comment.author_association == 'OWNER') &&"               
      [18] "            (startsWith(github.event.comment.body, '/doc-and-style')) }}"                                                                 
      [19] "    uses: nmfs-ost/ghactions4r/.github/workflows/doc-and-style-r.yml@main"                                                                
      [20] "    secrets:"                                                                                                                             
      [21] "      PAT: ${{ secrets.PAT }}"                                                                                                            
      [22] "    with:"                                                                                                                                
      [23] "      use-air: true"                                                                                                                      
      [24] "      run-rm_dollar_sign: true"                                                                                                           
      [25] "  "                                                                                                                                       

---

    Code
      test
    Output
       [1] "# document and style R code using a reusable workflow"                                                                                    
       [2] "name: call-doc-and-style-r"                                                                                                               
       [3] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [4] "on:"                                                                                                                                      
       [5] "  issue_comment:"                                                                                                                         
       [6] "    types: [created] "                                                                                                                    
       [7] ""                                                                                                                                         
       [8] "# Give the fewest permissions possible. content and pull-requests are necessary."                                                         
       [9] "# https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/controlling-permissions-for-github_token"         
      [10] "permissions:"                                                                                                                             
      [11] "  contents: write"                                                                                                                        
      [12] "  pull-requests: write"                                                                                                                   
      [13] ""                                                                                                                                         
      [14] "jobs:"                                                                                                                                    
      [15] "  call-workflow:"                                                                                                                         
      [16] "    if: ${{ github.event.issue.pull_request && "                                                                                          
      [17] "            (github.event.comment.author_association == 'MEMBER' || github.event.comment.author_association == 'OWNER') &&"               
      [18] "            (startsWith(github.event.comment.body, '/doc-and-style')) }}"                                                                 
      [19] "    uses: nmfs-ost/ghactions4r/.github/workflows/doc-and-style-r.yml@main"                                                                
      [20] "    secrets:"                                                                                                                             
      [21] "      PAT: ${{ secrets.PAT }}"                                                                                                            
      [22] "    with:"                                                                                                                                
      [23] "      use-air: true"                                                                                                                      
      [24] "  "                                                                                                                                       

---

    Code
      test
    Output
       [1] "# document and style R code using a reusable workflow"                                                                                    
       [2] "name: call-doc-and-style-r"                                                                                                               
       [3] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [4] "on:"                                                                                                                                      
       [5] "  workflow_dispatch:"                                                                                                                     
       [6] ""                                                                                                                                         
       [7] "# Give the fewest permissions possible. content and pull-requests are necessary."                                                         
       [8] "# https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/controlling-permissions-for-github_token"         
       [9] "permissions:"                                                                                                                             
      [10] "  contents: write"                                                                                                                        
      [11] "  pull-requests: write"                                                                                                                   
      [12] ""                                                                                                                                         
      [13] "jobs:"                                                                                                                                    
      [14] "  call-workflow:"                                                                                                                         
      [15] "    uses: nmfs-ost/ghactions4r/.github/workflows/doc-and-style-r.yml@main"                                                                
      [16] "    secrets:"                                                                                                                             
      [17] "      PAT: ${{ secrets.PAT }}"                                                                                                            
      [18] "    with:"                                                                                                                                
      [19] "      use-air: true"                                                                                                                      
      [20] "      run-rm_dollar_sign: true"                                                                                                           
      [21] "  "                                                                                                                                       

---

    Code
      test
    Output
       [1] "# document and style R code using a reusable workflow"                                                                                    
       [2] "name: call-doc-and-style-r"                                                                                                               
       [3] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [4] "on:"                                                                                                                                      
       [5] "  workflow_dispatch:"                                                                                                                     
       [6] ""                                                                                                                                         
       [7] "# Give the fewest permissions possible. content and pull-requests are necessary."                                                         
       [8] "# https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/controlling-permissions-for-github_token"         
       [9] "permissions:"                                                                                                                             
      [10] "  contents: write"                                                                                                                        
      [11] "  pull-requests: write"                                                                                                                   
      [12] ""                                                                                                                                         
      [13] "jobs:"                                                                                                                                    
      [14] "  call-workflow:"                                                                                                                         
      [15] "    uses: nmfs-ost/ghactions4r/.github/workflows/doc-and-style-r.yml@main"                                                                
      [16] "    secrets:"                                                                                                                             
      [17] "      PAT: ${{ secrets.PAT }}"                                                                                                            
      [18] "    with:"                                                                                                                                
      [19] "      use-air: true"                                                                                                                      
      [20] "  "                                                                                                                                       

---

    Code
      test
    Output
       [1] "# document and style R code using a reusable workflow"                                                                                    
       [2] "name: call-doc-and-style-r"                                                                                                               
       [3] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [4] "on:"                                                                                                                                      
       [5] "  schedule:"                                                                                                                              
       [6] "# Use https://crontab.guru/ to edit the time"                                                                                             
       [7] "    - cron:  '15 02 * * 0'"                                                                                                               
       [8] ""                                                                                                                                         
       [9] "# Give the fewest permissions possible. content and pull-requests are necessary."                                                         
      [10] "# https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/controlling-permissions-for-github_token"         
      [11] "permissions:"                                                                                                                             
      [12] "  contents: write"                                                                                                                        
      [13] "  pull-requests: write"                                                                                                                   
      [14] ""                                                                                                                                         
      [15] "jobs:"                                                                                                                                    
      [16] "  call-workflow:"                                                                                                                         
      [17] "    uses: nmfs-ost/ghactions4r/.github/workflows/doc-and-style-r.yml@main"                                                                
      [18] "    secrets:"                                                                                                                             
      [19] "      PAT: ${{ secrets.PAT }}"                                                                                                            
      [20] "    with:"                                                                                                                                
      [21] "      use-air: true"                                                                                                                      
      [22] "      run-rm_dollar_sign: true"                                                                                                           
      [23] "  "                                                                                                                                       

---

    Code
      test
    Output
       [1] "# document and style R code using a reusable workflow"                                                                                    
       [2] "name: call-doc-and-style-r"                                                                                                               
       [3] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [4] "on:"                                                                                                                                      
       [5] "  schedule:"                                                                                                                              
       [6] "# Use https://crontab.guru/ to edit the time"                                                                                             
       [7] "    - cron:  '15 02 * * 0'"                                                                                                               
       [8] ""                                                                                                                                         
       [9] "# Give the fewest permissions possible. content and pull-requests are necessary."                                                         
      [10] "# https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/controlling-permissions-for-github_token"         
      [11] "permissions:"                                                                                                                             
      [12] "  contents: write"                                                                                                                        
      [13] "  pull-requests: write"                                                                                                                   
      [14] ""                                                                                                                                         
      [15] "jobs:"                                                                                                                                    
      [16] "  call-workflow:"                                                                                                                         
      [17] "    uses: nmfs-ost/ghactions4r/.github/workflows/doc-and-style-r.yml@main"                                                                
      [18] "    secrets:"                                                                                                                             
      [19] "      PAT: ${{ secrets.PAT }}"                                                                                                            
      [20] "    with:"                                                                                                                                
      [21] "      use-air: true"                                                                                                                      
      [22] "  "                                                                                                                                       

---

    Code
      test
    Output
       [1] "# document and style R code using a reusable workflow"                                                                                    
       [2] "name: call-doc-and-style-r"                                                                                                               
       [3] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [4] "on:"                                                                                                                                      
       [5] "  push:"                                                                                                                                  
       [6] "    branches: [main]"                                                                                                                     
       [7] ""                                                                                                                                         
       [8] "# Give the fewest permissions possible. content and pull-requests are necessary."                                                         
       [9] "# https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/controlling-permissions-for-github_token"         
      [10] "permissions:"                                                                                                                             
      [11] "  contents: write"                                                                                                                        
      [12] "  pull-requests: write"                                                                                                                   
      [13] ""                                                                                                                                         
      [14] "jobs:"                                                                                                                                    
      [15] "  call-workflow:"                                                                                                                         
      [16] "    uses: nmfs-ost/ghactions4r/.github/workflows/doc-and-style-r.yml@main"                                                                
      [17] "    secrets:"                                                                                                                             
      [18] "      PAT: ${{ secrets.PAT }}"                                                                                                            
      [19] "    with:"                                                                                                                                
      [20] "      run-rm_dollar_sign: true"                                                                                                           
      [21] "  "                                                                                                                                       

---

    Code
      test
    Output
       [1] "# document and style R code using a reusable workflow"                                                                                    
       [2] "name: call-doc-and-style-r"                                                                                                               
       [3] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [4] "on:"                                                                                                                                      
       [5] "  push:"                                                                                                                                  
       [6] "    branches: [main]"                                                                                                                     
       [7] ""                                                                                                                                         
       [8] "# Give the fewest permissions possible. content and pull-requests are necessary."                                                         
       [9] "# https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/controlling-permissions-for-github_token"         
      [10] "permissions:"                                                                                                                             
      [11] "  contents: write"                                                                                                                        
      [12] "  pull-requests: write"                                                                                                                   
      [13] ""                                                                                                                                         
      [14] "jobs:"                                                                                                                                    
      [15] "  call-workflow:"                                                                                                                         
      [16] "    uses: nmfs-ost/ghactions4r/.github/workflows/doc-and-style-r.yml@main"                                                                
      [17] "    secrets:"                                                                                                                             
      [18] "      PAT: ${{ secrets.PAT }}"                                                                                                            
      [19] "  "                                                                                                                                       

---

    Code
      test
    Output
       [1] "# document and style R code using a reusable workflow"                                                                                    
       [2] "name: call-doc-and-style-r"                                                                                                               
       [3] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [4] "on:"                                                                                                                                      
       [5] "  pull_request:"                                                                                                                          
       [6] ""                                                                                                                                         
       [7] "# Give the fewest permissions possible. content and pull-requests are necessary."                                                         
       [8] "# https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/controlling-permissions-for-github_token"         
       [9] "permissions:"                                                                                                                             
      [10] "  contents: write"                                                                                                                        
      [11] "  pull-requests: write"                                                                                                                   
      [12] ""                                                                                                                                         
      [13] "jobs:"                                                                                                                                    
      [14] "  call-workflow:"                                                                                                                         
      [15] "    uses: nmfs-ost/ghactions4r/.github/workflows/doc-and-style-r.yml@main"                                                                
      [16] "    secrets:"                                                                                                                             
      [17] "      PAT: ${{ secrets.PAT }}"                                                                                                            
      [18] "    with:"                                                                                                                                
      [19] "      run-rm_dollar_sign: true"                                                                                                           
      [20] "  "                                                                                                                                       

---

    Code
      test
    Output
       [1] "# document and style R code using a reusable workflow"                                                                                    
       [2] "name: call-doc-and-style-r"                                                                                                               
       [3] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [4] "on:"                                                                                                                                      
       [5] "  pull_request:"                                                                                                                          
       [6] ""                                                                                                                                         
       [7] "# Give the fewest permissions possible. content and pull-requests are necessary."                                                         
       [8] "# https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/controlling-permissions-for-github_token"         
       [9] "permissions:"                                                                                                                             
      [10] "  contents: write"                                                                                                                        
      [11] "  pull-requests: write"                                                                                                                   
      [12] ""                                                                                                                                         
      [13] "jobs:"                                                                                                                                    
      [14] "  call-workflow:"                                                                                                                         
      [15] "    uses: nmfs-ost/ghactions4r/.github/workflows/doc-and-style-r.yml@main"                                                                
      [16] "    secrets:"                                                                                                                             
      [17] "      PAT: ${{ secrets.PAT }}"                                                                                                            
      [18] "  "                                                                                                                                       

---

    Code
      test
    Output
       [1] "# document and style R code using a reusable workflow"                                                                                    
       [2] "name: call-doc-and-style-r"                                                                                                               
       [3] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [4] "on:"                                                                                                                                      
       [5] "  issue_comment:"                                                                                                                         
       [6] "    types: [created] "                                                                                                                    
       [7] ""                                                                                                                                         
       [8] "# Give the fewest permissions possible. content and pull-requests are necessary."                                                         
       [9] "# https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/controlling-permissions-for-github_token"         
      [10] "permissions:"                                                                                                                             
      [11] "  contents: write"                                                                                                                        
      [12] "  pull-requests: write"                                                                                                                   
      [13] ""                                                                                                                                         
      [14] "jobs:"                                                                                                                                    
      [15] "  call-workflow:"                                                                                                                         
      [16] "    if: ${{ github.event.issue.pull_request && "                                                                                          
      [17] "            (github.event.comment.author_association == 'MEMBER' || github.event.comment.author_association == 'OWNER') &&"               
      [18] "            (startsWith(github.event.comment.body, '/doc-and-style')) }}"                                                                 
      [19] "    uses: nmfs-ost/ghactions4r/.github/workflows/doc-and-style-r.yml@main"                                                                
      [20] "    secrets:"                                                                                                                             
      [21] "      PAT: ${{ secrets.PAT }}"                                                                                                            
      [22] "    with:"                                                                                                                                
      [23] "      run-rm_dollar_sign: true"                                                                                                           
      [24] "  "                                                                                                                                       

---

    Code
      test
    Output
       [1] "# document and style R code using a reusable workflow"                                                                                    
       [2] "name: call-doc-and-style-r"                                                                                                               
       [3] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [4] "on:"                                                                                                                                      
       [5] "  issue_comment:"                                                                                                                         
       [6] "    types: [created] "                                                                                                                    
       [7] ""                                                                                                                                         
       [8] "# Give the fewest permissions possible. content and pull-requests are necessary."                                                         
       [9] "# https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/controlling-permissions-for-github_token"         
      [10] "permissions:"                                                                                                                             
      [11] "  contents: write"                                                                                                                        
      [12] "  pull-requests: write"                                                                                                                   
      [13] ""                                                                                                                                         
      [14] "jobs:"                                                                                                                                    
      [15] "  call-workflow:"                                                                                                                         
      [16] "    if: ${{ github.event.issue.pull_request && "                                                                                          
      [17] "            (github.event.comment.author_association == 'MEMBER' || github.event.comment.author_association == 'OWNER') &&"               
      [18] "            (startsWith(github.event.comment.body, '/doc-and-style')) }}"                                                                 
      [19] "    uses: nmfs-ost/ghactions4r/.github/workflows/doc-and-style-r.yml@main"                                                                
      [20] "    secrets:"                                                                                                                             
      [21] "      PAT: ${{ secrets.PAT }}"                                                                                                            
      [22] "  "                                                                                                                                       

---

    Code
      test
    Output
       [1] "# document and style R code using a reusable workflow"                                                                                    
       [2] "name: call-doc-and-style-r"                                                                                                               
       [3] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [4] "on:"                                                                                                                                      
       [5] "  workflow_dispatch:"                                                                                                                     
       [6] ""                                                                                                                                         
       [7] "# Give the fewest permissions possible. content and pull-requests are necessary."                                                         
       [8] "# https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/controlling-permissions-for-github_token"         
       [9] "permissions:"                                                                                                                             
      [10] "  contents: write"                                                                                                                        
      [11] "  pull-requests: write"                                                                                                                   
      [12] ""                                                                                                                                         
      [13] "jobs:"                                                                                                                                    
      [14] "  call-workflow:"                                                                                                                         
      [15] "    uses: nmfs-ost/ghactions4r/.github/workflows/doc-and-style-r.yml@main"                                                                
      [16] "    secrets:"                                                                                                                             
      [17] "      PAT: ${{ secrets.PAT }}"                                                                                                            
      [18] "    with:"                                                                                                                                
      [19] "      run-rm_dollar_sign: true"                                                                                                           
      [20] "  "                                                                                                                                       

---

    Code
      test
    Output
       [1] "# document and style R code using a reusable workflow"                                                                                    
       [2] "name: call-doc-and-style-r"                                                                                                               
       [3] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [4] "on:"                                                                                                                                      
       [5] "  workflow_dispatch:"                                                                                                                     
       [6] ""                                                                                                                                         
       [7] "# Give the fewest permissions possible. content and pull-requests are necessary."                                                         
       [8] "# https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/controlling-permissions-for-github_token"         
       [9] "permissions:"                                                                                                                             
      [10] "  contents: write"                                                                                                                        
      [11] "  pull-requests: write"                                                                                                                   
      [12] ""                                                                                                                                         
      [13] "jobs:"                                                                                                                                    
      [14] "  call-workflow:"                                                                                                                         
      [15] "    uses: nmfs-ost/ghactions4r/.github/workflows/doc-and-style-r.yml@main"                                                                
      [16] "    secrets:"                                                                                                                             
      [17] "      PAT: ${{ secrets.PAT }}"                                                                                                            
      [18] "  "                                                                                                                                       

---

    Code
      test
    Output
       [1] "# document and style R code using a reusable workflow"                                                                                    
       [2] "name: call-doc-and-style-r"                                                                                                               
       [3] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [4] "on:"                                                                                                                                      
       [5] "  schedule:"                                                                                                                              
       [6] "# Use https://crontab.guru/ to edit the time"                                                                                             
       [7] "    - cron:  '15 02 * * 0'"                                                                                                               
       [8] ""                                                                                                                                         
       [9] "# Give the fewest permissions possible. content and pull-requests are necessary."                                                         
      [10] "# https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/controlling-permissions-for-github_token"         
      [11] "permissions:"                                                                                                                             
      [12] "  contents: write"                                                                                                                        
      [13] "  pull-requests: write"                                                                                                                   
      [14] ""                                                                                                                                         
      [15] "jobs:"                                                                                                                                    
      [16] "  call-workflow:"                                                                                                                         
      [17] "    uses: nmfs-ost/ghactions4r/.github/workflows/doc-and-style-r.yml@main"                                                                
      [18] "    secrets:"                                                                                                                             
      [19] "      PAT: ${{ secrets.PAT }}"                                                                                                            
      [20] "    with:"                                                                                                                                
      [21] "      run-rm_dollar_sign: true"                                                                                                           
      [22] "  "                                                                                                                                       

---

    Code
      test
    Output
       [1] "# document and style R code using a reusable workflow"                                                                                    
       [2] "name: call-doc-and-style-r"                                                                                                               
       [3] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [4] "on:"                                                                                                                                      
       [5] "  schedule:"                                                                                                                              
       [6] "# Use https://crontab.guru/ to edit the time"                                                                                             
       [7] "    - cron:  '15 02 * * 0'"                                                                                                               
       [8] ""                                                                                                                                         
       [9] "# Give the fewest permissions possible. content and pull-requests are necessary."                                                         
      [10] "# https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/controlling-permissions-for-github_token"         
      [11] "permissions:"                                                                                                                             
      [12] "  contents: write"                                                                                                                        
      [13] "  pull-requests: write"                                                                                                                   
      [14] ""                                                                                                                                         
      [15] "jobs:"                                                                                                                                    
      [16] "  call-workflow:"                                                                                                                         
      [17] "    uses: nmfs-ost/ghactions4r/.github/workflows/doc-and-style-r.yml@main"                                                                
      [18] "    secrets:"                                                                                                                             
      [19] "      PAT: ${{ secrets.PAT }}"                                                                                                            
      [20] "  "                                                                                                                                       

---

    Code
      test
    Output
       [1] "# document and style R code using a reusable workflow"                                                                                    
       [2] "name: call-doc-and-style-r"                                                                                                               
       [3] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [4] "on:"                                                                                                                                      
       [5] "  push:"                                                                                                                                  
       [6] "    branches: [main]"                                                                                                                     
       [7] ""                                                                                                                                         
       [8] "# Give the fewest permissions possible. content and pull-requests are necessary."                                                         
       [9] "# https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/controlling-permissions-for-github_token"         
      [10] "permissions:"                                                                                                                             
      [11] "  contents: write"                                                                                                                        
      [12] "  pull-requests: write"                                                                                                                   
      [13] ""                                                                                                                                         
      [14] "jobs:"                                                                                                                                    
      [15] "  call-workflow:"                                                                                                                         
      [16] "    uses: nmfs-ost/ghactions4r/.github/workflows/doc-and-style-r.yml@main"                                                                
      [17] "    with:"                                                                                                                                
      [18] "      use-air: true"                                                                                                                      
      [19] "      run-rm_dollar_sign: true"                                                                                                           
      [20] "  "                                                                                                                                       

---

    Code
      test
    Output
       [1] "# document and style R code using a reusable workflow"                                                                                    
       [2] "name: call-doc-and-style-r"                                                                                                               
       [3] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [4] "on:"                                                                                                                                      
       [5] "  push:"                                                                                                                                  
       [6] "    branches: [main]"                                                                                                                     
       [7] ""                                                                                                                                         
       [8] "# Give the fewest permissions possible. content and pull-requests are necessary."                                                         
       [9] "# https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/controlling-permissions-for-github_token"         
      [10] "permissions:"                                                                                                                             
      [11] "  contents: write"                                                                                                                        
      [12] "  pull-requests: write"                                                                                                                   
      [13] ""                                                                                                                                         
      [14] "jobs:"                                                                                                                                    
      [15] "  call-workflow:"                                                                                                                         
      [16] "    uses: nmfs-ost/ghactions4r/.github/workflows/doc-and-style-r.yml@main"                                                                
      [17] "    with:"                                                                                                                                
      [18] "      use-air: true"                                                                                                                      
      [19] "  "                                                                                                                                       

---

    Code
      test
    Output
       [1] "# document and style R code using a reusable workflow"                                                                                    
       [2] "name: call-doc-and-style-r"                                                                                                               
       [3] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [4] "on:"                                                                                                                                      
       [5] "  push:"                                                                                                                                  
       [6] "    branches: [main]"                                                                                                                     
       [7] ""                                                                                                                                         
       [8] "# Give the fewest permissions possible. content and pull-requests are necessary."                                                         
       [9] "# https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/controlling-permissions-for-github_token"         
      [10] "permissions:"                                                                                                                             
      [11] "  contents: write"                                                                                                                        
      [12] "  pull-requests: write"                                                                                                                   
      [13] ""                                                                                                                                         
      [14] "jobs:"                                                                                                                                    
      [15] "  call-workflow:"                                                                                                                         
      [16] "    uses: nmfs-ost/ghactions4r/.github/workflows/doc-and-style-r.yml@main"                                                                
      [17] "    with:"                                                                                                                                
      [18] "      use-air: true"                                                                                                                      
      [19] "      run-rm_dollar_sign: true"                                                                                                           
      [20] "      commit-directly: true"                                                                                                              
      [21] "  "                                                                                                                                       

---

    Code
      test
    Output
       [1] "# document and style R code using a reusable workflow"                                                                                    
       [2] "name: call-doc-and-style-r"                                                                                                               
       [3] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [4] "on:"                                                                                                                                      
       [5] "  push:"                                                                                                                                  
       [6] "    branches: [main]"                                                                                                                     
       [7] ""                                                                                                                                         
       [8] "# Give the fewest permissions possible. content and pull-requests are necessary."                                                         
       [9] "# https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/controlling-permissions-for-github_token"         
      [10] "permissions:"                                                                                                                             
      [11] "  contents: write"                                                                                                                        
      [12] "  pull-requests: write"                                                                                                                   
      [13] ""                                                                                                                                         
      [14] "jobs:"                                                                                                                                    
      [15] "  call-workflow:"                                                                                                                         
      [16] "    uses: nmfs-ost/ghactions4r/.github/workflows/doc-and-style-r.yml@main"                                                                
      [17] "    with:"                                                                                                                                
      [18] "      use-air: true"                                                                                                                      
      [19] "      commit-directly: true"                                                                                                              
      [20] "  "                                                                                                                                       

---

    Code
      test
    Output
       [1] "# document and style R code using a reusable workflow"                                                                                    
       [2] "name: call-doc-and-style-r"                                                                                                               
       [3] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [4] "on:"                                                                                                                                      
       [5] "  pull_request:"                                                                                                                          
       [6] ""                                                                                                                                         
       [7] "# Give the fewest permissions possible. content and pull-requests are necessary."                                                         
       [8] "# https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/controlling-permissions-for-github_token"         
       [9] "permissions:"                                                                                                                             
      [10] "  contents: write"                                                                                                                        
      [11] "  pull-requests: write"                                                                                                                   
      [12] ""                                                                                                                                         
      [13] "jobs:"                                                                                                                                    
      [14] "  call-workflow:"                                                                                                                         
      [15] "    uses: nmfs-ost/ghactions4r/.github/workflows/doc-and-style-r.yml@main"                                                                
      [16] "    with:"                                                                                                                                
      [17] "      use-air: true"                                                                                                                      
      [18] "      run-rm_dollar_sign: true"                                                                                                           
      [19] "  "                                                                                                                                       

---

    Code
      test
    Output
       [1] "# document and style R code using a reusable workflow"                                                                                    
       [2] "name: call-doc-and-style-r"                                                                                                               
       [3] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [4] "on:"                                                                                                                                      
       [5] "  pull_request:"                                                                                                                          
       [6] ""                                                                                                                                         
       [7] "# Give the fewest permissions possible. content and pull-requests are necessary."                                                         
       [8] "# https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/controlling-permissions-for-github_token"         
       [9] "permissions:"                                                                                                                             
      [10] "  contents: write"                                                                                                                        
      [11] "  pull-requests: write"                                                                                                                   
      [12] ""                                                                                                                                         
      [13] "jobs:"                                                                                                                                    
      [14] "  call-workflow:"                                                                                                                         
      [15] "    uses: nmfs-ost/ghactions4r/.github/workflows/doc-and-style-r.yml@main"                                                                
      [16] "    with:"                                                                                                                                
      [17] "      use-air: true"                                                                                                                      
      [18] "  "                                                                                                                                       

---

    Code
      test
    Output
       [1] "# document and style R code using a reusable workflow"                                                                                    
       [2] "name: call-doc-and-style-r"                                                                                                               
       [3] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [4] "on:"                                                                                                                                      
       [5] "  pull_request:"                                                                                                                          
       [6] ""                                                                                                                                         
       [7] "# Give the fewest permissions possible. content and pull-requests are necessary."                                                         
       [8] "# https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/controlling-permissions-for-github_token"         
       [9] "permissions:"                                                                                                                             
      [10] "  contents: write"                                                                                                                        
      [11] "  pull-requests: write"                                                                                                                   
      [12] ""                                                                                                                                         
      [13] "jobs:"                                                                                                                                    
      [14] "  call-workflow:"                                                                                                                         
      [15] "    uses: nmfs-ost/ghactions4r/.github/workflows/doc-and-style-r.yml@main"                                                                
      [16] "    with:"                                                                                                                                
      [17] "      use-air: true"                                                                                                                      
      [18] "      run-rm_dollar_sign: true"                                                                                                           
      [19] "      commit-directly: true"                                                                                                              
      [20] "  "                                                                                                                                       

---

    Code
      test
    Output
       [1] "# document and style R code using a reusable workflow"                                                                                    
       [2] "name: call-doc-and-style-r"                                                                                                               
       [3] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [4] "on:"                                                                                                                                      
       [5] "  pull_request:"                                                                                                                          
       [6] ""                                                                                                                                         
       [7] "# Give the fewest permissions possible. content and pull-requests are necessary."                                                         
       [8] "# https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/controlling-permissions-for-github_token"         
       [9] "permissions:"                                                                                                                             
      [10] "  contents: write"                                                                                                                        
      [11] "  pull-requests: write"                                                                                                                   
      [12] ""                                                                                                                                         
      [13] "jobs:"                                                                                                                                    
      [14] "  call-workflow:"                                                                                                                         
      [15] "    uses: nmfs-ost/ghactions4r/.github/workflows/doc-and-style-r.yml@main"                                                                
      [16] "    with:"                                                                                                                                
      [17] "      use-air: true"                                                                                                                      
      [18] "      commit-directly: true"                                                                                                              
      [19] "  "                                                                                                                                       

---

    Code
      test
    Output
       [1] "# document and style R code using a reusable workflow"                                                                                    
       [2] "name: call-doc-and-style-r"                                                                                                               
       [3] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [4] "on:"                                                                                                                                      
       [5] "  issue_comment:"                                                                                                                         
       [6] "    types: [created] "                                                                                                                    
       [7] ""                                                                                                                                         
       [8] "# Give the fewest permissions possible. content and pull-requests are necessary."                                                         
       [9] "# https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/controlling-permissions-for-github_token"         
      [10] "permissions:"                                                                                                                             
      [11] "  contents: write"                                                                                                                        
      [12] "  pull-requests: write"                                                                                                                   
      [13] ""                                                                                                                                         
      [14] "jobs:"                                                                                                                                    
      [15] "  call-workflow:"                                                                                                                         
      [16] "    if: ${{ github.event.issue.pull_request && "                                                                                          
      [17] "            (github.event.comment.author_association == 'MEMBER' || github.event.comment.author_association == 'OWNER') &&"               
      [18] "            (startsWith(github.event.comment.body, '/doc-and-style')) }}"                                                                 
      [19] "    uses: nmfs-ost/ghactions4r/.github/workflows/doc-and-style-r.yml@main"                                                                
      [20] "    with:"                                                                                                                                
      [21] "      use-air: true"                                                                                                                      
      [22] "      run-rm_dollar_sign: true"                                                                                                           
      [23] "  "                                                                                                                                       

---

    Code
      test
    Output
       [1] "# document and style R code using a reusable workflow"                                                                                    
       [2] "name: call-doc-and-style-r"                                                                                                               
       [3] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [4] "on:"                                                                                                                                      
       [5] "  issue_comment:"                                                                                                                         
       [6] "    types: [created] "                                                                                                                    
       [7] ""                                                                                                                                         
       [8] "# Give the fewest permissions possible. content and pull-requests are necessary."                                                         
       [9] "# https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/controlling-permissions-for-github_token"         
      [10] "permissions:"                                                                                                                             
      [11] "  contents: write"                                                                                                                        
      [12] "  pull-requests: write"                                                                                                                   
      [13] ""                                                                                                                                         
      [14] "jobs:"                                                                                                                                    
      [15] "  call-workflow:"                                                                                                                         
      [16] "    if: ${{ github.event.issue.pull_request && "                                                                                          
      [17] "            (github.event.comment.author_association == 'MEMBER' || github.event.comment.author_association == 'OWNER') &&"               
      [18] "            (startsWith(github.event.comment.body, '/doc-and-style')) }}"                                                                 
      [19] "    uses: nmfs-ost/ghactions4r/.github/workflows/doc-and-style-r.yml@main"                                                                
      [20] "    with:"                                                                                                                                
      [21] "      use-air: true"                                                                                                                      
      [22] "  "                                                                                                                                       

---

    Code
      test
    Output
       [1] "# document and style R code using a reusable workflow"                                                                                    
       [2] "name: call-doc-and-style-r"                                                                                                               
       [3] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [4] "on:"                                                                                                                                      
       [5] "  issue_comment:"                                                                                                                         
       [6] "    types: [created] "                                                                                                                    
       [7] ""                                                                                                                                         
       [8] "# Give the fewest permissions possible. content and pull-requests are necessary."                                                         
       [9] "# https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/controlling-permissions-for-github_token"         
      [10] "permissions:"                                                                                                                             
      [11] "  contents: write"                                                                                                                        
      [12] "  pull-requests: write"                                                                                                                   
      [13] ""                                                                                                                                         
      [14] "jobs:"                                                                                                                                    
      [15] "  call-workflow:"                                                                                                                         
      [16] "    if: ${{ github.event.issue.pull_request && "                                                                                          
      [17] "            (github.event.comment.author_association == 'MEMBER' || github.event.comment.author_association == 'OWNER') &&"               
      [18] "            (startsWith(github.event.comment.body, '/doc-and-style')) }}"                                                                 
      [19] "    uses: nmfs-ost/ghactions4r/.github/workflows/doc-and-style-r.yml@main"                                                                
      [20] "    with:"                                                                                                                                
      [21] "      use-air: true"                                                                                                                      
      [22] "      run-rm_dollar_sign: true"                                                                                                           
      [23] "      commit-directly: true"                                                                                                              
      [24] "  "                                                                                                                                       

---

    Code
      test
    Output
       [1] "# document and style R code using a reusable workflow"                                                                                    
       [2] "name: call-doc-and-style-r"                                                                                                               
       [3] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [4] "on:"                                                                                                                                      
       [5] "  issue_comment:"                                                                                                                         
       [6] "    types: [created] "                                                                                                                    
       [7] ""                                                                                                                                         
       [8] "# Give the fewest permissions possible. content and pull-requests are necessary."                                                         
       [9] "# https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/controlling-permissions-for-github_token"         
      [10] "permissions:"                                                                                                                             
      [11] "  contents: write"                                                                                                                        
      [12] "  pull-requests: write"                                                                                                                   
      [13] ""                                                                                                                                         
      [14] "jobs:"                                                                                                                                    
      [15] "  call-workflow:"                                                                                                                         
      [16] "    if: ${{ github.event.issue.pull_request && "                                                                                          
      [17] "            (github.event.comment.author_association == 'MEMBER' || github.event.comment.author_association == 'OWNER') &&"               
      [18] "            (startsWith(github.event.comment.body, '/doc-and-style')) }}"                                                                 
      [19] "    uses: nmfs-ost/ghactions4r/.github/workflows/doc-and-style-r.yml@main"                                                                
      [20] "    with:"                                                                                                                                
      [21] "      use-air: true"                                                                                                                      
      [22] "      commit-directly: true"                                                                                                              
      [23] "  "                                                                                                                                       

---

    Code
      test
    Output
       [1] "# document and style R code using a reusable workflow"                                                                                    
       [2] "name: call-doc-and-style-r"                                                                                                               
       [3] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [4] "on:"                                                                                                                                      
       [5] "  workflow_dispatch:"                                                                                                                     
       [6] ""                                                                                                                                         
       [7] "# Give the fewest permissions possible. content and pull-requests are necessary."                                                         
       [8] "# https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/controlling-permissions-for-github_token"         
       [9] "permissions:"                                                                                                                             
      [10] "  contents: write"                                                                                                                        
      [11] "  pull-requests: write"                                                                                                                   
      [12] ""                                                                                                                                         
      [13] "jobs:"                                                                                                                                    
      [14] "  call-workflow:"                                                                                                                         
      [15] "    uses: nmfs-ost/ghactions4r/.github/workflows/doc-and-style-r.yml@main"                                                                
      [16] "    with:"                                                                                                                                
      [17] "      use-air: true"                                                                                                                      
      [18] "      run-rm_dollar_sign: true"                                                                                                           
      [19] "  "                                                                                                                                       

---

    Code
      test
    Output
       [1] "# document and style R code using a reusable workflow"                                                                                    
       [2] "name: call-doc-and-style-r"                                                                                                               
       [3] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [4] "on:"                                                                                                                                      
       [5] "  workflow_dispatch:"                                                                                                                     
       [6] ""                                                                                                                                         
       [7] "# Give the fewest permissions possible. content and pull-requests are necessary."                                                         
       [8] "# https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/controlling-permissions-for-github_token"         
       [9] "permissions:"                                                                                                                             
      [10] "  contents: write"                                                                                                                        
      [11] "  pull-requests: write"                                                                                                                   
      [12] ""                                                                                                                                         
      [13] "jobs:"                                                                                                                                    
      [14] "  call-workflow:"                                                                                                                         
      [15] "    uses: nmfs-ost/ghactions4r/.github/workflows/doc-and-style-r.yml@main"                                                                
      [16] "    with:"                                                                                                                                
      [17] "      use-air: true"                                                                                                                      
      [18] "  "                                                                                                                                       

---

    Code
      test
    Output
       [1] "# document and style R code using a reusable workflow"                                                                                    
       [2] "name: call-doc-and-style-r"                                                                                                               
       [3] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [4] "on:"                                                                                                                                      
       [5] "  workflow_dispatch:"                                                                                                                     
       [6] ""                                                                                                                                         
       [7] "# Give the fewest permissions possible. content and pull-requests are necessary."                                                         
       [8] "# https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/controlling-permissions-for-github_token"         
       [9] "permissions:"                                                                                                                             
      [10] "  contents: write"                                                                                                                        
      [11] "  pull-requests: write"                                                                                                                   
      [12] ""                                                                                                                                         
      [13] "jobs:"                                                                                                                                    
      [14] "  call-workflow:"                                                                                                                         
      [15] "    uses: nmfs-ost/ghactions4r/.github/workflows/doc-and-style-r.yml@main"                                                                
      [16] "    with:"                                                                                                                                
      [17] "      use-air: true"                                                                                                                      
      [18] "      run-rm_dollar_sign: true"                                                                                                           
      [19] "      commit-directly: true"                                                                                                              
      [20] "  "                                                                                                                                       

---

    Code
      test
    Output
       [1] "# document and style R code using a reusable workflow"                                                                                    
       [2] "name: call-doc-and-style-r"                                                                                                               
       [3] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [4] "on:"                                                                                                                                      
       [5] "  workflow_dispatch:"                                                                                                                     
       [6] ""                                                                                                                                         
       [7] "# Give the fewest permissions possible. content and pull-requests are necessary."                                                         
       [8] "# https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/controlling-permissions-for-github_token"         
       [9] "permissions:"                                                                                                                             
      [10] "  contents: write"                                                                                                                        
      [11] "  pull-requests: write"                                                                                                                   
      [12] ""                                                                                                                                         
      [13] "jobs:"                                                                                                                                    
      [14] "  call-workflow:"                                                                                                                         
      [15] "    uses: nmfs-ost/ghactions4r/.github/workflows/doc-and-style-r.yml@main"                                                                
      [16] "    with:"                                                                                                                                
      [17] "      use-air: true"                                                                                                                      
      [18] "      commit-directly: true"                                                                                                              
      [19] "  "                                                                                                                                       

---

    Code
      test
    Output
       [1] "# document and style R code using a reusable workflow"                                                                                    
       [2] "name: call-doc-and-style-r"                                                                                                               
       [3] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [4] "on:"                                                                                                                                      
       [5] "  schedule:"                                                                                                                              
       [6] "# Use https://crontab.guru/ to edit the time"                                                                                             
       [7] "    - cron:  '15 02 * * 0'"                                                                                                               
       [8] ""                                                                                                                                         
       [9] "# Give the fewest permissions possible. content and pull-requests are necessary."                                                         
      [10] "# https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/controlling-permissions-for-github_token"         
      [11] "permissions:"                                                                                                                             
      [12] "  contents: write"                                                                                                                        
      [13] "  pull-requests: write"                                                                                                                   
      [14] ""                                                                                                                                         
      [15] "jobs:"                                                                                                                                    
      [16] "  call-workflow:"                                                                                                                         
      [17] "    uses: nmfs-ost/ghactions4r/.github/workflows/doc-and-style-r.yml@main"                                                                
      [18] "    with:"                                                                                                                                
      [19] "      use-air: true"                                                                                                                      
      [20] "      run-rm_dollar_sign: true"                                                                                                           
      [21] "  "                                                                                                                                       

---

    Code
      test
    Output
       [1] "# document and style R code using a reusable workflow"                                                                                    
       [2] "name: call-doc-and-style-r"                                                                                                               
       [3] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [4] "on:"                                                                                                                                      
       [5] "  schedule:"                                                                                                                              
       [6] "# Use https://crontab.guru/ to edit the time"                                                                                             
       [7] "    - cron:  '15 02 * * 0'"                                                                                                               
       [8] ""                                                                                                                                         
       [9] "# Give the fewest permissions possible. content and pull-requests are necessary."                                                         
      [10] "# https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/controlling-permissions-for-github_token"         
      [11] "permissions:"                                                                                                                             
      [12] "  contents: write"                                                                                                                        
      [13] "  pull-requests: write"                                                                                                                   
      [14] ""                                                                                                                                         
      [15] "jobs:"                                                                                                                                    
      [16] "  call-workflow:"                                                                                                                         
      [17] "    uses: nmfs-ost/ghactions4r/.github/workflows/doc-and-style-r.yml@main"                                                                
      [18] "    with:"                                                                                                                                
      [19] "      use-air: true"                                                                                                                      
      [20] "  "                                                                                                                                       

---

    Code
      test
    Output
       [1] "# document and style R code using a reusable workflow"                                                                                    
       [2] "name: call-doc-and-style-r"                                                                                                               
       [3] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [4] "on:"                                                                                                                                      
       [5] "  schedule:"                                                                                                                              
       [6] "# Use https://crontab.guru/ to edit the time"                                                                                             
       [7] "    - cron:  '15 02 * * 0'"                                                                                                               
       [8] ""                                                                                                                                         
       [9] "# Give the fewest permissions possible. content and pull-requests are necessary."                                                         
      [10] "# https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/controlling-permissions-for-github_token"         
      [11] "permissions:"                                                                                                                             
      [12] "  contents: write"                                                                                                                        
      [13] "  pull-requests: write"                                                                                                                   
      [14] ""                                                                                                                                         
      [15] "jobs:"                                                                                                                                    
      [16] "  call-workflow:"                                                                                                                         
      [17] "    uses: nmfs-ost/ghactions4r/.github/workflows/doc-and-style-r.yml@main"                                                                
      [18] "    with:"                                                                                                                                
      [19] "      use-air: true"                                                                                                                      
      [20] "      run-rm_dollar_sign: true"                                                                                                           
      [21] "      commit-directly: true"                                                                                                              
      [22] "  "                                                                                                                                       

---

    Code
      test
    Output
       [1] "# document and style R code using a reusable workflow"                                                                                    
       [2] "name: call-doc-and-style-r"                                                                                                               
       [3] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [4] "on:"                                                                                                                                      
       [5] "  schedule:"                                                                                                                              
       [6] "# Use https://crontab.guru/ to edit the time"                                                                                             
       [7] "    - cron:  '15 02 * * 0'"                                                                                                               
       [8] ""                                                                                                                                         
       [9] "# Give the fewest permissions possible. content and pull-requests are necessary."                                                         
      [10] "# https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/controlling-permissions-for-github_token"         
      [11] "permissions:"                                                                                                                             
      [12] "  contents: write"                                                                                                                        
      [13] "  pull-requests: write"                                                                                                                   
      [14] ""                                                                                                                                         
      [15] "jobs:"                                                                                                                                    
      [16] "  call-workflow:"                                                                                                                         
      [17] "    uses: nmfs-ost/ghactions4r/.github/workflows/doc-and-style-r.yml@main"                                                                
      [18] "    with:"                                                                                                                                
      [19] "      use-air: true"                                                                                                                      
      [20] "      commit-directly: true"                                                                                                              
      [21] "  "                                                                                                                                       

---

    Code
      test
    Output
       [1] "# document and style R code using a reusable workflow"                                                                                    
       [2] "name: call-doc-and-style-r"                                                                                                               
       [3] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [4] "on:"                                                                                                                                      
       [5] "  push:"                                                                                                                                  
       [6] "    branches: [main]"                                                                                                                     
       [7] ""                                                                                                                                         
       [8] "# Give the fewest permissions possible. content and pull-requests are necessary."                                                         
       [9] "# https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/controlling-permissions-for-github_token"         
      [10] "permissions:"                                                                                                                             
      [11] "  contents: write"                                                                                                                        
      [12] "  pull-requests: write"                                                                                                                   
      [13] ""                                                                                                                                         
      [14] "jobs:"                                                                                                                                    
      [15] "  call-workflow:"                                                                                                                         
      [16] "    uses: nmfs-ost/ghactions4r/.github/workflows/doc-and-style-r.yml@main"                                                                
      [17] "    with:"                                                                                                                                
      [18] "      run-rm_dollar_sign: true"                                                                                                           
      [19] "  "                                                                                                                                       

---

    Code
      test
    Output
       [1] "# document and style R code using a reusable workflow"                                                                                    
       [2] "name: call-doc-and-style-r"                                                                                                               
       [3] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [4] "on:"                                                                                                                                      
       [5] "  push:"                                                                                                                                  
       [6] "    branches: [main]"                                                                                                                     
       [7] ""                                                                                                                                         
       [8] "# Give the fewest permissions possible. content and pull-requests are necessary."                                                         
       [9] "# https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/controlling-permissions-for-github_token"         
      [10] "permissions:"                                                                                                                             
      [11] "  contents: write"                                                                                                                        
      [12] "  pull-requests: write"                                                                                                                   
      [13] ""                                                                                                                                         
      [14] "jobs:"                                                                                                                                    
      [15] "  call-workflow:"                                                                                                                         
      [16] "    uses: nmfs-ost/ghactions4r/.github/workflows/doc-and-style-r.yml@main"                                                                
      [17] "  "                                                                                                                                       

---

    Code
      test
    Output
       [1] "# document and style R code using a reusable workflow"                                                                                    
       [2] "name: call-doc-and-style-r"                                                                                                               
       [3] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [4] "on:"                                                                                                                                      
       [5] "  push:"                                                                                                                                  
       [6] "    branches: [main]"                                                                                                                     
       [7] ""                                                                                                                                         
       [8] "# Give the fewest permissions possible. content and pull-requests are necessary."                                                         
       [9] "# https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/controlling-permissions-for-github_token"         
      [10] "permissions:"                                                                                                                             
      [11] "  contents: write"                                                                                                                        
      [12] "  pull-requests: write"                                                                                                                   
      [13] ""                                                                                                                                         
      [14] "jobs:"                                                                                                                                    
      [15] "  call-workflow:"                                                                                                                         
      [16] "    uses: nmfs-ost/ghactions4r/.github/workflows/doc-and-style-r.yml@main"                                                                
      [17] "    with:"                                                                                                                                
      [18] "      run-rm_dollar_sign: true"                                                                                                           
      [19] "      commit-directly: true"                                                                                                              
      [20] "  "                                                                                                                                       

---

    Code
      test
    Output
       [1] "# document and style R code using a reusable workflow"                                                                                    
       [2] "name: call-doc-and-style-r"                                                                                                               
       [3] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [4] "on:"                                                                                                                                      
       [5] "  push:"                                                                                                                                  
       [6] "    branches: [main]"                                                                                                                     
       [7] ""                                                                                                                                         
       [8] "# Give the fewest permissions possible. content and pull-requests are necessary."                                                         
       [9] "# https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/controlling-permissions-for-github_token"         
      [10] "permissions:"                                                                                                                             
      [11] "  contents: write"                                                                                                                        
      [12] "  pull-requests: write"                                                                                                                   
      [13] ""                                                                                                                                         
      [14] "jobs:"                                                                                                                                    
      [15] "  call-workflow:"                                                                                                                         
      [16] "    uses: nmfs-ost/ghactions4r/.github/workflows/doc-and-style-r.yml@main"                                                                
      [17] "    with:"                                                                                                                                
      [18] "      commit-directly: true"                                                                                                              
      [19] "  "                                                                                                                                       

---

    Code
      test
    Output
       [1] "# document and style R code using a reusable workflow"                                                                                    
       [2] "name: call-doc-and-style-r"                                                                                                               
       [3] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [4] "on:"                                                                                                                                      
       [5] "  pull_request:"                                                                                                                          
       [6] ""                                                                                                                                         
       [7] "# Give the fewest permissions possible. content and pull-requests are necessary."                                                         
       [8] "# https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/controlling-permissions-for-github_token"         
       [9] "permissions:"                                                                                                                             
      [10] "  contents: write"                                                                                                                        
      [11] "  pull-requests: write"                                                                                                                   
      [12] ""                                                                                                                                         
      [13] "jobs:"                                                                                                                                    
      [14] "  call-workflow:"                                                                                                                         
      [15] "    uses: nmfs-ost/ghactions4r/.github/workflows/doc-and-style-r.yml@main"                                                                
      [16] "    with:"                                                                                                                                
      [17] "      run-rm_dollar_sign: true"                                                                                                           
      [18] "  "                                                                                                                                       

---

    Code
      test
    Output
       [1] "# document and style R code using a reusable workflow"                                                                                    
       [2] "name: call-doc-and-style-r"                                                                                                               
       [3] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [4] "on:"                                                                                                                                      
       [5] "  pull_request:"                                                                                                                          
       [6] ""                                                                                                                                         
       [7] "# Give the fewest permissions possible. content and pull-requests are necessary."                                                         
       [8] "# https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/controlling-permissions-for-github_token"         
       [9] "permissions:"                                                                                                                             
      [10] "  contents: write"                                                                                                                        
      [11] "  pull-requests: write"                                                                                                                   
      [12] ""                                                                                                                                         
      [13] "jobs:"                                                                                                                                    
      [14] "  call-workflow:"                                                                                                                         
      [15] "    uses: nmfs-ost/ghactions4r/.github/workflows/doc-and-style-r.yml@main"                                                                
      [16] "  "                                                                                                                                       

---

    Code
      test
    Output
       [1] "# document and style R code using a reusable workflow"                                                                                    
       [2] "name: call-doc-and-style-r"                                                                                                               
       [3] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [4] "on:"                                                                                                                                      
       [5] "  pull_request:"                                                                                                                          
       [6] ""                                                                                                                                         
       [7] "# Give the fewest permissions possible. content and pull-requests are necessary."                                                         
       [8] "# https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/controlling-permissions-for-github_token"         
       [9] "permissions:"                                                                                                                             
      [10] "  contents: write"                                                                                                                        
      [11] "  pull-requests: write"                                                                                                                   
      [12] ""                                                                                                                                         
      [13] "jobs:"                                                                                                                                    
      [14] "  call-workflow:"                                                                                                                         
      [15] "    uses: nmfs-ost/ghactions4r/.github/workflows/doc-and-style-r.yml@main"                                                                
      [16] "    with:"                                                                                                                                
      [17] "      run-rm_dollar_sign: true"                                                                                                           
      [18] "      commit-directly: true"                                                                                                              
      [19] "  "                                                                                                                                       

---

    Code
      test
    Output
       [1] "# document and style R code using a reusable workflow"                                                                                    
       [2] "name: call-doc-and-style-r"                                                                                                               
       [3] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [4] "on:"                                                                                                                                      
       [5] "  pull_request:"                                                                                                                          
       [6] ""                                                                                                                                         
       [7] "# Give the fewest permissions possible. content and pull-requests are necessary."                                                         
       [8] "# https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/controlling-permissions-for-github_token"         
       [9] "permissions:"                                                                                                                             
      [10] "  contents: write"                                                                                                                        
      [11] "  pull-requests: write"                                                                                                                   
      [12] ""                                                                                                                                         
      [13] "jobs:"                                                                                                                                    
      [14] "  call-workflow:"                                                                                                                         
      [15] "    uses: nmfs-ost/ghactions4r/.github/workflows/doc-and-style-r.yml@main"                                                                
      [16] "    with:"                                                                                                                                
      [17] "      commit-directly: true"                                                                                                              
      [18] "  "                                                                                                                                       

---

    Code
      test
    Output
       [1] "# document and style R code using a reusable workflow"                                                                                    
       [2] "name: call-doc-and-style-r"                                                                                                               
       [3] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [4] "on:"                                                                                                                                      
       [5] "  issue_comment:"                                                                                                                         
       [6] "    types: [created] "                                                                                                                    
       [7] ""                                                                                                                                         
       [8] "# Give the fewest permissions possible. content and pull-requests are necessary."                                                         
       [9] "# https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/controlling-permissions-for-github_token"         
      [10] "permissions:"                                                                                                                             
      [11] "  contents: write"                                                                                                                        
      [12] "  pull-requests: write"                                                                                                                   
      [13] ""                                                                                                                                         
      [14] "jobs:"                                                                                                                                    
      [15] "  call-workflow:"                                                                                                                         
      [16] "    if: ${{ github.event.issue.pull_request && "                                                                                          
      [17] "            (github.event.comment.author_association == 'MEMBER' || github.event.comment.author_association == 'OWNER') &&"               
      [18] "            (startsWith(github.event.comment.body, '/doc-and-style')) }}"                                                                 
      [19] "    uses: nmfs-ost/ghactions4r/.github/workflows/doc-and-style-r.yml@main"                                                                
      [20] "    with:"                                                                                                                                
      [21] "      run-rm_dollar_sign: true"                                                                                                           
      [22] "  "                                                                                                                                       

---

    Code
      test
    Output
       [1] "# document and style R code using a reusable workflow"                                                                                    
       [2] "name: call-doc-and-style-r"                                                                                                               
       [3] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [4] "on:"                                                                                                                                      
       [5] "  issue_comment:"                                                                                                                         
       [6] "    types: [created] "                                                                                                                    
       [7] ""                                                                                                                                         
       [8] "# Give the fewest permissions possible. content and pull-requests are necessary."                                                         
       [9] "# https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/controlling-permissions-for-github_token"         
      [10] "permissions:"                                                                                                                             
      [11] "  contents: write"                                                                                                                        
      [12] "  pull-requests: write"                                                                                                                   
      [13] ""                                                                                                                                         
      [14] "jobs:"                                                                                                                                    
      [15] "  call-workflow:"                                                                                                                         
      [16] "    if: ${{ github.event.issue.pull_request && "                                                                                          
      [17] "            (github.event.comment.author_association == 'MEMBER' || github.event.comment.author_association == 'OWNER') &&"               
      [18] "            (startsWith(github.event.comment.body, '/doc-and-style')) }}"                                                                 
      [19] "    uses: nmfs-ost/ghactions4r/.github/workflows/doc-and-style-r.yml@main"                                                                
      [20] "  "                                                                                                                                       

---

    Code
      test
    Output
       [1] "# document and style R code using a reusable workflow"                                                                                    
       [2] "name: call-doc-and-style-r"                                                                                                               
       [3] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [4] "on:"                                                                                                                                      
       [5] "  issue_comment:"                                                                                                                         
       [6] "    types: [created] "                                                                                                                    
       [7] ""                                                                                                                                         
       [8] "# Give the fewest permissions possible. content and pull-requests are necessary."                                                         
       [9] "# https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/controlling-permissions-for-github_token"         
      [10] "permissions:"                                                                                                                             
      [11] "  contents: write"                                                                                                                        
      [12] "  pull-requests: write"                                                                                                                   
      [13] ""                                                                                                                                         
      [14] "jobs:"                                                                                                                                    
      [15] "  call-workflow:"                                                                                                                         
      [16] "    if: ${{ github.event.issue.pull_request && "                                                                                          
      [17] "            (github.event.comment.author_association == 'MEMBER' || github.event.comment.author_association == 'OWNER') &&"               
      [18] "            (startsWith(github.event.comment.body, '/doc-and-style')) }}"                                                                 
      [19] "    uses: nmfs-ost/ghactions4r/.github/workflows/doc-and-style-r.yml@main"                                                                
      [20] "    with:"                                                                                                                                
      [21] "      run-rm_dollar_sign: true"                                                                                                           
      [22] "      commit-directly: true"                                                                                                              
      [23] "  "                                                                                                                                       

---

    Code
      test
    Output
       [1] "# document and style R code using a reusable workflow"                                                                                    
       [2] "name: call-doc-and-style-r"                                                                                                               
       [3] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [4] "on:"                                                                                                                                      
       [5] "  issue_comment:"                                                                                                                         
       [6] "    types: [created] "                                                                                                                    
       [7] ""                                                                                                                                         
       [8] "# Give the fewest permissions possible. content and pull-requests are necessary."                                                         
       [9] "# https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/controlling-permissions-for-github_token"         
      [10] "permissions:"                                                                                                                             
      [11] "  contents: write"                                                                                                                        
      [12] "  pull-requests: write"                                                                                                                   
      [13] ""                                                                                                                                         
      [14] "jobs:"                                                                                                                                    
      [15] "  call-workflow:"                                                                                                                         
      [16] "    if: ${{ github.event.issue.pull_request && "                                                                                          
      [17] "            (github.event.comment.author_association == 'MEMBER' || github.event.comment.author_association == 'OWNER') &&"               
      [18] "            (startsWith(github.event.comment.body, '/doc-and-style')) }}"                                                                 
      [19] "    uses: nmfs-ost/ghactions4r/.github/workflows/doc-and-style-r.yml@main"                                                                
      [20] "    with:"                                                                                                                                
      [21] "      commit-directly: true"                                                                                                              
      [22] "  "                                                                                                                                       

---

    Code
      test
    Output
       [1] "# document and style R code using a reusable workflow"                                                                                    
       [2] "name: call-doc-and-style-r"                                                                                                               
       [3] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [4] "on:"                                                                                                                                      
       [5] "  workflow_dispatch:"                                                                                                                     
       [6] ""                                                                                                                                         
       [7] "# Give the fewest permissions possible. content and pull-requests are necessary."                                                         
       [8] "# https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/controlling-permissions-for-github_token"         
       [9] "permissions:"                                                                                                                             
      [10] "  contents: write"                                                                                                                        
      [11] "  pull-requests: write"                                                                                                                   
      [12] ""                                                                                                                                         
      [13] "jobs:"                                                                                                                                    
      [14] "  call-workflow:"                                                                                                                         
      [15] "    uses: nmfs-ost/ghactions4r/.github/workflows/doc-and-style-r.yml@main"                                                                
      [16] "    with:"                                                                                                                                
      [17] "      run-rm_dollar_sign: true"                                                                                                           
      [18] "  "                                                                                                                                       

---

    Code
      test
    Output
       [1] "# document and style R code using a reusable workflow"                                                                                    
       [2] "name: call-doc-and-style-r"                                                                                                               
       [3] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [4] "on:"                                                                                                                                      
       [5] "  workflow_dispatch:"                                                                                                                     
       [6] ""                                                                                                                                         
       [7] "# Give the fewest permissions possible. content and pull-requests are necessary."                                                         
       [8] "# https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/controlling-permissions-for-github_token"         
       [9] "permissions:"                                                                                                                             
      [10] "  contents: write"                                                                                                                        
      [11] "  pull-requests: write"                                                                                                                   
      [12] ""                                                                                                                                         
      [13] "jobs:"                                                                                                                                    
      [14] "  call-workflow:"                                                                                                                         
      [15] "    uses: nmfs-ost/ghactions4r/.github/workflows/doc-and-style-r.yml@main"                                                                
      [16] "  "                                                                                                                                       

---

    Code
      test
    Output
       [1] "# document and style R code using a reusable workflow"                                                                                    
       [2] "name: call-doc-and-style-r"                                                                                                               
       [3] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [4] "on:"                                                                                                                                      
       [5] "  workflow_dispatch:"                                                                                                                     
       [6] ""                                                                                                                                         
       [7] "# Give the fewest permissions possible. content and pull-requests are necessary."                                                         
       [8] "# https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/controlling-permissions-for-github_token"         
       [9] "permissions:"                                                                                                                             
      [10] "  contents: write"                                                                                                                        
      [11] "  pull-requests: write"                                                                                                                   
      [12] ""                                                                                                                                         
      [13] "jobs:"                                                                                                                                    
      [14] "  call-workflow:"                                                                                                                         
      [15] "    uses: nmfs-ost/ghactions4r/.github/workflows/doc-and-style-r.yml@main"                                                                
      [16] "    with:"                                                                                                                                
      [17] "      run-rm_dollar_sign: true"                                                                                                           
      [18] "      commit-directly: true"                                                                                                              
      [19] "  "                                                                                                                                       

---

    Code
      test
    Output
       [1] "# document and style R code using a reusable workflow"                                                                                    
       [2] "name: call-doc-and-style-r"                                                                                                               
       [3] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [4] "on:"                                                                                                                                      
       [5] "  workflow_dispatch:"                                                                                                                     
       [6] ""                                                                                                                                         
       [7] "# Give the fewest permissions possible. content and pull-requests are necessary."                                                         
       [8] "# https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/controlling-permissions-for-github_token"         
       [9] "permissions:"                                                                                                                             
      [10] "  contents: write"                                                                                                                        
      [11] "  pull-requests: write"                                                                                                                   
      [12] ""                                                                                                                                         
      [13] "jobs:"                                                                                                                                    
      [14] "  call-workflow:"                                                                                                                         
      [15] "    uses: nmfs-ost/ghactions4r/.github/workflows/doc-and-style-r.yml@main"                                                                
      [16] "    with:"                                                                                                                                
      [17] "      commit-directly: true"                                                                                                              
      [18] "  "                                                                                                                                       

---

    Code
      test
    Output
       [1] "# document and style R code using a reusable workflow"                                                                                    
       [2] "name: call-doc-and-style-r"                                                                                                               
       [3] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [4] "on:"                                                                                                                                      
       [5] "  schedule:"                                                                                                                              
       [6] "# Use https://crontab.guru/ to edit the time"                                                                                             
       [7] "    - cron:  '15 02 * * 0'"                                                                                                               
       [8] ""                                                                                                                                         
       [9] "# Give the fewest permissions possible. content and pull-requests are necessary."                                                         
      [10] "# https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/controlling-permissions-for-github_token"         
      [11] "permissions:"                                                                                                                             
      [12] "  contents: write"                                                                                                                        
      [13] "  pull-requests: write"                                                                                                                   
      [14] ""                                                                                                                                         
      [15] "jobs:"                                                                                                                                    
      [16] "  call-workflow:"                                                                                                                         
      [17] "    uses: nmfs-ost/ghactions4r/.github/workflows/doc-and-style-r.yml@main"                                                                
      [18] "    with:"                                                                                                                                
      [19] "      run-rm_dollar_sign: true"                                                                                                           
      [20] "  "                                                                                                                                       

---

    Code
      test
    Output
       [1] "# document and style R code using a reusable workflow"                                                                                    
       [2] "name: call-doc-and-style-r"                                                                                                               
       [3] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [4] "on:"                                                                                                                                      
       [5] "  schedule:"                                                                                                                              
       [6] "# Use https://crontab.guru/ to edit the time"                                                                                             
       [7] "    - cron:  '15 02 * * 0'"                                                                                                               
       [8] ""                                                                                                                                         
       [9] "# Give the fewest permissions possible. content and pull-requests are necessary."                                                         
      [10] "# https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/controlling-permissions-for-github_token"         
      [11] "permissions:"                                                                                                                             
      [12] "  contents: write"                                                                                                                        
      [13] "  pull-requests: write"                                                                                                                   
      [14] ""                                                                                                                                         
      [15] "jobs:"                                                                                                                                    
      [16] "  call-workflow:"                                                                                                                         
      [17] "    uses: nmfs-ost/ghactions4r/.github/workflows/doc-and-style-r.yml@main"                                                                
      [18] "  "                                                                                                                                       

---

    Code
      test
    Output
       [1] "# document and style R code using a reusable workflow"                                                                                    
       [2] "name: call-doc-and-style-r"                                                                                                               
       [3] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [4] "on:"                                                                                                                                      
       [5] "  schedule:"                                                                                                                              
       [6] "# Use https://crontab.guru/ to edit the time"                                                                                             
       [7] "    - cron:  '15 02 * * 0'"                                                                                                               
       [8] ""                                                                                                                                         
       [9] "# Give the fewest permissions possible. content and pull-requests are necessary."                                                         
      [10] "# https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/controlling-permissions-for-github_token"         
      [11] "permissions:"                                                                                                                             
      [12] "  contents: write"                                                                                                                        
      [13] "  pull-requests: write"                                                                                                                   
      [14] ""                                                                                                                                         
      [15] "jobs:"                                                                                                                                    
      [16] "  call-workflow:"                                                                                                                         
      [17] "    uses: nmfs-ost/ghactions4r/.github/workflows/doc-and-style-r.yml@main"                                                                
      [18] "    with:"                                                                                                                                
      [19] "      run-rm_dollar_sign: true"                                                                                                           
      [20] "      commit-directly: true"                                                                                                              
      [21] "  "                                                                                                                                       

---

    Code
      test
    Output
       [1] "# document and style R code using a reusable workflow"                                                                                    
       [2] "name: call-doc-and-style-r"                                                                                                               
       [3] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [4] "on:"                                                                                                                                      
       [5] "  schedule:"                                                                                                                              
       [6] "# Use https://crontab.guru/ to edit the time"                                                                                             
       [7] "    - cron:  '15 02 * * 0'"                                                                                                               
       [8] ""                                                                                                                                         
       [9] "# Give the fewest permissions possible. content and pull-requests are necessary."                                                         
      [10] "# https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/controlling-permissions-for-github_token"         
      [11] "permissions:"                                                                                                                             
      [12] "  contents: write"                                                                                                                        
      [13] "  pull-requests: write"                                                                                                                   
      [14] ""                                                                                                                                         
      [15] "jobs:"                                                                                                                                    
      [16] "  call-workflow:"                                                                                                                         
      [17] "    uses: nmfs-ost/ghactions4r/.github/workflows/doc-and-style-r.yml@main"                                                                
      [18] "    with:"                                                                                                                                
      [19] "      commit-directly: true"                                                                                                              
      [20] "  "                                                                                                                                       

# use_doc_and_style_r() errors when multiple build triggers selected

    Code
      use_doc_and_style_r(workflow_name = "doc_style_mult_triggers.yml",
        build_trigger = c("manually", "pull_request"))
    Condition
      Error in `validate_build_trigger()`:
      ! `build_trigger` must be be a vector of length 1.
      i Multiple build triggers are not yet implemented.
      x There are 2 elements.

# use_update_pkgdown()) works

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

# use_update_pkgdown()) works with additional_args

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
      [21] "        sudo add-apt-repository ppa:ubuntu-toolchain-r/test"                                                                              
      [22] "        sudo apt-get install --only-upgrade libstdc++6"                                                                                   
      [23] "      additional_args_macos: |"                                                                                                           
      [24] "        brew install curl"                                                                                                                
      [25] "      additional_args_windows: |"                                                                                                         
      [26] "        tree"                                                                                                                             

# use_build_pkgdown()) works with additional_args

    Code
      test
    Output
       [1] "# Checks that the pkgdown site builds for a repository."                                                                                  
       [2] "# this assumes pkgdown is already set up."                                                                                                
       [3] "name: call-build-pkgdown"                                                                                                                 
       [4] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [5] "on:"                                                                                                                                      
       [6] "  push:"                                                                                                                                  
       [7] ""                                                                                                                                         
       [8] "# no permissions are needed by the default github token for this workflow to "                                                            
       [9] "# run, so don't pass any."                                                                                                                
      [10] "# https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/controlling-permissions-for-github_token"         
      [11] "permissions: {}"                                                                                                                          
      [12] ""                                                                                                                                         
      [13] "jobs:"                                                                                                                                    
      [14] "  call-workflow:"                                                                                                                         
      [15] "    uses: nmfs-ost/ghactions4r/.github/workflows/build-pkgdown.yml@main"                                                                  
      [16] "    with:"                                                                                                                                
      [17] "      additional_args_ubuntu: |"                                                                                                          
      [18] "        sudo apt-get update"                                                                                                              
      [19] "        sudo apt-get install -y libcurl4-openssl-dev"                                                                                     
      [20] "        sudo add-apt-repository ppa:ubuntu-toolchain-r/test"                                                                              
      [21] "        sudo apt-get install --only-upgrade libstdc++6"                                                                                   
      [22] "      additional_args_macos: |"                                                                                                           
      [23] "        brew install curl"                                                                                                                
      [24] "      additional_args_windows: |"                                                                                                         
      [25] "        tree"                                                                                                                             

# use_spell_check() works

    Code
      test
    Output
       [1] "# run devtools::spell_check()"                                                                                                            
       [2] "name: call-spell-check"                                                                                                                   
       [3] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [4] "on:"                                                                                                                                      
       [5] "  workflow_dispatch:"                                                                                                                     
       [6] ""                                                                                                                                         
       [7] "# no permissions are needed by the default github token for this workflow to "                                                            
       [8] "# run, so don't pass any."                                                                                                                
       [9] "# https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/controlling-permissions-for-github_token"         
      [10] "permissions: {}"                                                                                                                          
      [11] ""                                                                                                                                         
      [12] "jobs:"                                                                                                                                    
      [13] "  call-workflow:"                                                                                                                         
      [14] "    uses: nmfs-ost/ghactions4r/.github/workflows/spell-check.yml@main"                                                                    

---

    Code
      full_spell_check_content
    Output
       [1] "# run devtools::spell_check()"                                                                                                            
       [2] "name: call-spell-check"                                                                                                                   
       [3] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [4] "on:"                                                                                                                                      
       [5] "  schedule:"                                                                                                                              
       [6] "# Use https://crontab.guru/ to edit the time"                                                                                             
       [7] "    - cron:  '15 02 * * 0'"                                                                                                               
       [8] ""                                                                                                                                         
       [9] "# no permissions are needed by the default github token for this workflow to "                                                            
      [10] "# run, so don't pass any."                                                                                                                
      [11] "# https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/controlling-permissions-for-github_token"         
      [12] "permissions: {}"                                                                                                                          
      [13] ""                                                                                                                                         
      [14] "jobs:"                                                                                                                                    
      [15] "  call-workflow:"                                                                                                                         
      [16] "    uses: nmfs-ost/ghactions4r/.github/workflows/spell-check.yml@main"                                                                    
      [17] "    with:"                                                                                                                                
      [18] "      spell_check_additional_files: true"                                                                                                 
      [19] "      spell_check_report_level: warning"                                                                                                  

---

    Code
      full_spell_check_content
    Output
       [1] "# run devtools::spell_check()"                                                                                                            
       [2] "name: call-spell-check"                                                                                                                   
       [3] "# on specifies the build triggers. See more info at https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows"
       [4] "on:"                                                                                                                                      
       [5] "  schedule:"                                                                                                                              
       [6] "# Use https://crontab.guru/ to edit the time"                                                                                             
       [7] "    - cron:  '15 02 * * 0'"                                                                                                               
       [8] ""                                                                                                                                         
       [9] "# no permissions are needed by the default github token for this workflow to "                                                            
      [10] "# run, so don't pass any."                                                                                                                
      [11] "# https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/controlling-permissions-for-github_token"         
      [12] "permissions: {}"                                                                                                                          
      [13] ""                                                                                                                                         
      [14] "jobs:"                                                                                                                                    
      [15] "  call-workflow:"                                                                                                                         
      [16] "    uses: nmfs-ost/ghactions4r/.github/workflows/spell-check.yml@main"                                                                    
      [17] "    with:"                                                                                                                                
      [18] "      spell_check_additional_files: true"                                                                                                 
      [19] "      spell_check_report_level: error"                                                                                                    

