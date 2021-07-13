library(tidyverse)

### Task(01): Visualize "US Streaming Market Share Chang" 

df_streaming <- tibble::tribble(
  ~service, ~`2020`, ~`2021`,
  "netflix",    29, 20,
  "prime",      21, 16,
  "hulu",       16, 13,
  "disney",     12, 11,
  "apple",       4,  5,
  "peacock",     0,  5,
  "hbo",         3, 12,
  "paramount",   2,  3,
  "other",      13, 15,
)
df_streaming %>% write_csv("2021-07-15_meeting01/df_streaming.csv")


### Task(02): Visualize "NTU Student Congress Members Election & Attendance Data" 

df_candidate_final <-
  read_csv("https://raw.githubusercontent.com/Dennishi0925/RUserGroup_sharing/master/Sharing/data/NTUSC/df_candidate_final.csv") %>%
  filter(term != "103-2")
df_college_join <- read_csv("https://raw.githubusercontent.com/Dennishi0925/RUserGroup_sharing/master/Sharing/data/NTUSC/df_college_join.csv") %>%
  filter(term != "103-2")
df_sc_attnd <- read_csv("https://raw.githubusercontent.com/Dennishi0925/RUserGroup_sharing/master/Sharing/data/NTUSC/df_sc_attnd.csv") %>%
  filter(term != "103-2")
df_sc_attnd_vis <- read_csv("https://raw.githubusercontent.com/Dennishi0925/RUserGroup_sharing/master/Sharing/data/NTUSC/df_sc_attnd_vis.csv") %>%
  filter(term != "103-2")
df_vote_college <- read_csv("https://raw.githubusercontent.com/Dennishi0925/RUserGroup_sharing/master/Sharing/data/NTUSC/df_vote_college.csv") %>%
  filter(start != "103-2")

df_candidate_final %>% write_csv("2021-07-15_meeting01/df_candidate_final.csv")
df_college_join %>% write_csv("2021-07-15_meeting01/df_college_join.csv")
df_sc_attnd %>% write_csv("2021-07-15_meeting01/df_sc_attnd.csv")
df_sc_attnd_vis %>% write_csv("2021-07-15_meeting01/df_sc_attnd_vis.csv")
df_vote_college %>% write_csv("2021-07-15_meeting01/df_vote_college.csv")
