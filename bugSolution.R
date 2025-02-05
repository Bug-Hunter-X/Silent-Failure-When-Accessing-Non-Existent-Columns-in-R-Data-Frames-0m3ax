```R
# Improved version with error handling
df <- data.frame(col1 = c(1, 2, 3), col2 = c("a", "b", "c"))

#Check if the column exists before accessing it
if ("col3" %in% names(df)) {
  result <- df$col3
  print(result)
  print(mean(result, na.rm = TRUE))
} else {
  print("Column 'col3' does not exist in the data frame.")
}

#Alternative approach using tryCatch
result <- tryCatch({
  df$col3
}, error = function(e) {
  print(paste("Error accessing column: ", e))
  return(NULL)
})

print(result)
```