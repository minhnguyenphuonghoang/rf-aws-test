**Installation**  
[Download & install python3 & pip3](https://www.python.org/)
```bash
pip3 install -r requirements.txt
```

**Structure** (TBD)  

    .
    ├── Build Pipeline                      # Contains build/deployment scripts
    ├── Data                                # Data for automated test
    ├── Libraries                           # Libraries for automated test (`requests` or utilities)
    ├── Listeners                           # Can access to multiple levels of tests to perform additional actions
    ├── Object Repositories                 # Store all element locators
    ├── Reports                             # Optional (editor MUST NOT commit this folder to the repo) - contains test reports
    ├── Resources                           # RF User defined keywords which will be used in the `Test Suites` or othher keywords
    ├── Test Suites                         # All test cases will be stored here under test suite
    ├── .gitignore                          
    ├── Makefile                            # Bash/shell utility commands
    ├── README.md
    └── requirements.txt                    # All python libraries/dependencies that need to be installed in advance 

**Usage**  
There are 2 ways you can run a test:  
- *Test suite:*
```bash
python -m robot -v run_in_server:True \
    -v sleep_between_two_step:0 \
    -v time_out:10 -d Reports -s "$FileNameWithoutAllExtensions$" "$FileDir$"
```

- *Test case:* 
```bash
python -m robot -v run_in_server:True \
    -v sleep_between_two_step:0 \
    -v time_out:10 -d Reports -t "$SelectedText$" "$FileDir$"
```

**Test coverage**  
TBD. Will be integrated with a Test management system to show numbers here.

**Editor**  
Pycharm

**Code Snippet**
TBD

**CICD Integration**  
We'd like to integrate our test framework with AWS Code Pipeline or take advantage of docker to install

