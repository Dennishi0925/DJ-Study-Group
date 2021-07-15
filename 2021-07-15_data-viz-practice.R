library(tidyverse)

### Task(1): Visualize US Streaming Market Share Change
df_streaming <- read_csv("2021-07-15_meeting01/df_streaming.csv")

# 這份資料有 2020 & 2021 年的美國串流市場市占率
# 請畫出兩種你覺得可以呈現市占率變化的圖表

# 1-1 Visualize Amounts/Proportions

# 1-2 Visualize Amounts/Proportions

### Task(2): Visualize NTU Student Congress Members Election & Attendance Rate
df_attnd_vote <- read_csv("2021-07-15_meeting01/df_attnd_vote.csv")
df_college_join <- read_csv("2021-07-15_meeting01/df_college_join.csv")
df_vote_college <- read_csv("2021-07-15_meeting01/df_vote_college.csv") %>% rename(term = start)

## 2-1 - Visualizing Time Series
# 這份資料有各院每期選舉的投票情形
# 請畫出各院每期(term)投票率(vote_rate)
df_college_join

## 2-2 - Visualize Amounts/Proportions
# 這份資料有每期選舉每個候選人的選舉結果
# 請畫出各院每期(term)的選舉結果，要包含選上與否(elected)與同額競選(competitive)的資訊
# competitive = 0 代表為同額競選, = 1 代表非同額競選
df_vote_college

## 2-3 - Visualizing Associations
# 這份資料有每期議會學生代表的出席率以及選舉時的得票率
# 請畫出得票率(college_support_rate)與出席率(Attnd_Rate)結果並將同額競選(competitive)納入考量
df_attnd_vote

