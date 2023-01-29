daily_budget <- 100
monthly_budget <- 3100
days_left_in_month <- 31

while(days_left_in_month >= 1) {
  daily_spent <- as.numeric(readline(prompt = paste0("Enter daily spent amount for day ", 32-days_left_in_month, ": ")))
  monthly_budget <- monthly_budget - daily_spent
  days_left_in_month <- days_left_in_month - 1
  daily_budget <- ifelse(monthly_budget/days_left_in_month < 50, 50, monthly_budget/days_left_in_month)
  print(paste("Daily budget limit for day ", 32-days_left_in_month, " is now:", daily_budget, "RON."))
}

print("Monthly budget reset, starting over with initial values")
daily_budget <- 100
monthly_budget <- 3100
days_left_in_month <- 31
