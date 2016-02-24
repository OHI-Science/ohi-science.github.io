# ohi-science_listserve.r
# January 7, 2015 by @jules32

# pull email addresses from the private Google Spreadsheet ohi-science_listserve and separate by commas for emailing
# https://docs.google.com/spreadsheets/d/1-mDnsAa9J9UZmu-gak4wA9pRkoSSJuWJhml0DVyTLh8/edit#gid=0

#### setup ----
library(googlesheets) # install.packages('googlesheets') # by Jenny Bryan
library(dplyr)

gs_auth(new_user = TRUE) ## authorize googledocs -- requires user interaction with default browser

g = gs_title('ohi-science_listserve') ## read in sheet
full_list = g %>% gs_read(); head(full_list)


#### extract email addresses: run either full list or subset ----  

## email entire full_list
list_extract_email(full_list, all_updates = FALSE)


## email subset of full_list: only send_all_updates == TRUE
list_extract_email(full_list, all_updates = TRUE)


## email subset of full_list: for survey only
list_extract_email(full_list, all_updates = FALSE, survey = 'sent')


#### function: list_extract_email
list_extract_email = function(full_list, all_updates = TRUE, survey = '') { 
  
  if (all_updates == TRUE) {
    full_list_extract = full_list %>%
      filter(send_all_updates == TRUE)
    print(sprintf('there are %s contacts identified: use this subsetted list to email specific technical updates.', 
                  dim(full_list_extract)[1]))
  } else {
    full_list_extract = full_list
    print(sprintf('there are %s contacts identified in the full list: use this list sparingly for broad, general emails.', 
                  dim(full_list_extract)[1]))
  }
  
  if (survey != '') {
    full_list_extract = full_list_extract %>%
      filter(survey == 'sent')
  }
  
  print(sprintf('printing collated emails for %s records:', dim(full_list_extract)[1]))
  
  paste(
    unlist(
      full_list_extract %>%
        filter(!is.na(email)) %>%
        select(email)), 
    collapse = ', ')
  
}




## list github_usernames
