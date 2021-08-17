library(tidyverse)

### Task: Visualize "Asia 2020 Netflix Ranking Data" 

df_ranking_taiwan <- read_rds("2021-08-26_meeting03/df_ranking_taiwan.rds") %>% select(-gg,-sub_count) %>%
  mutate(drama_country_zh = if_else(drama_country == "Philippines", "菲律賓", drama_country_zh))
df_ranking_japan <- read_rds("2021-08-26_meeting03/df_ranking_japan.rds") %>% select(-gg,-sub_count) %>%
  mutate(drama_country_zh = if_else(drama_country == "Philippines", "菲律賓", drama_country_zh))
df_ranking_korea <- read_rds("2021-08-26_meeting03/df_ranking_korea.rds") %>% select(-gg,-sub_count) %>%
  mutate(drama_country_zh = if_else(drama_country == "Philippines", "菲律賓", drama_country_zh))
df_ranking_hongkong <- read_rds("2021-08-26_meeting03/df_ranking_hongkong.rds") %>% select(-gg,-sub_count) %>%
  mutate(drama_country_zh = if_else(drama_country == "Philippines", "菲律賓", drama_country_zh))

df_ranking_taiwan %>% write_csv("2021-08-26_meeting03/df_ranking_taiwan.csv")
df_ranking_japan %>% write_csv("2021-08-26_meeting03/df_ranking_japan.csv")
df_ranking_korea %>% write_csv("2021-08-26_meeting03/df_ranking_korea.csv")
df_ranking_hongkong %>% write_csv("2021-08-26_meeting03/df_ranking_hongkong.csv")

df_ranking_taiwan %>% clipr::write_clip()
df_ranking_japan %>% clipr::write_clip()
df_ranking_korea %>% clipr::write_clip()
df_ranking_hongkong %>% clipr::write_clip()
