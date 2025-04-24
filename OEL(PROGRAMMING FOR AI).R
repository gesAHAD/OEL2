df<-read.csv("students_score.csv")
avg_attendance <- mean(df$Attendance_Percentage, na.rm = TRUE)


df$Attendance_Percentage[is.na(df$Attendance_Percentage)] <- avg_attendance

cat("\nNumber of NA values in Attendance_Percentage after replacement:", 
    sum(is.na(df$Attendance_Percentage)), "\n")
# Calculating the average of the three subjects
df$Average_Score <- rowMeans(df[, c("Math_score", "Physics_score", "Chemistry_score")], na.rm = TRUE)

head(df, 5)
filtered_students <- df %>%
  filter(Gender == "Female", 
         Average_Score > 75, 
         Attendance_Percentage > 80)


cat("\nFemale students with Average Score > 75 and Attendance > 80%:\n")
print(filtered_students)
top_5_performers <- students %>%
  arrange(desc(Average_Score)) %>%
  head(5)


top_5_performers <- students %>%
  arrange(desc(Average_Score)) %>%
  select(Student_Name, Average_Score, .other_columns.) %>%
  head(5)

