# Individuals GGplots Plots

# Low income plot 
low_income <- ggplot(summary_sub_df, 
                     aes(x = grade, 
                         y = lowincome_mean, )) + 
  geom_col(fill = "royalblue2") + 
  labs(title = "Low Income Percentages\nper HOLC Grades", 
       y = "Low income (%)", 
       x = "HOLC Grade") + 
  theme(plot.title = element_text(size = 9))

# PM2.5 plot 
pm2.5 <- ggplot(summary_sub_df, 
                aes(x = grade, 
                    y = pm2.5_mean)) + 
  geom_col(fill = "orangered1") + 
  labs(title = "Percentile for Particulate Matter\n2.5 per HOLC Grades", 
       y = "PM 2.5 Percentiles", 
       x = "HOLC Grade") + 
  theme(plot.title = element_text(size = 9))

# Life exp plot 
lexp <- ggplot(summary_sub_df, 
               aes(x = grade, 
                   y = lexp_mean)) + 
  geom_col(fill = "plum2") + 
  labs(title = "Percentile for Life Expectancy\n per HOLC Grades", 
       y = "Life Expectancy Percentiles", 
       x = "HOLC Grade") + 
  theme(plot.title = element_text(size = 9))

# Put them together 
(low_income | pm2.5 | lexp)


# ---------------------------------------------------