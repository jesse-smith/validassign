# Building a Prod-Ready, Robust Shiny Application.
#
# README: each step of the dev files is optional, and you don't have to
# fill every dev scripts before getting started.
# 01_start.R should be filled at start.
# 02_dev.R should be used to keep track of your development during the project.
# 03_deploy.R should be used once you need to deploy your app.
#
#
########################################
#### CURRENT FILE: ON START SCRIPT #####
########################################

## Fill the DESCRIPTION ----
## Add meta data about your application
##
## /!\ Note: if you want to change the name of your app during development,
## either re-run this function, call golem::set_golem_name(), or don't forget
## to change the name in the app_sys() function in app_config.R /!\
##
golem::fill_desc(
  pkg_name = "validassign", # The Name of the package containing the App
  pkg_title = "Validate COVID-19 Case Assignment Data", # The Title of the package containing the App
  pkg_description = paste(
    "The validassign package validates data used to assign COVID-19 cases for",
    "investigation within the Shelby County Health Department. It mainly",
    "functions as a Shiny app that fulfills this purpose."
  ), # The Description of the package containing the App
  author_first_name = "Jesse", # Your First Name
  author_last_name = "Smith", # Your Last Name
  author_email = "jesse.smith@shelbycountytn.gov", # Your Email
  repo_url = "https://github.com/jesse-smith/validassign" # The URL of the GitHub Repo (optional)
)

## Set {golem} options ----
golem::set_golem_options()

## Create Common Files ----
## See ?usethis for more information
usethis::use_gpl3_license()
usethis::use_readme_md()
usethis::use_code_of_conduct()
usethis::use_lifecycle_badge("experimental")

## Use git ----
usethis::use_git()

## Init Testing Infrastructure ----
## Create a template for tests
golem::use_recommended_tests()

## Use Recommended Packages ----
golem::use_recommended_deps()

## Favicon ----
# If you want to change the favicon (default is golem's one)
golem::use_favicon() # path = "path/to/ico". Can be an online file.
golem::remove_favicon()

## Add helper functions ----
golem::use_utils_ui()
golem::use_utils_server()

# You're now set! ----

# go to dev/02_dev.R
rstudioapi::navigateToFile( "dev/02_dev.R" )

