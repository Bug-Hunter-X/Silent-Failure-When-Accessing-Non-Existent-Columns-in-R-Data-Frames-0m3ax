# Silent Failure When Accessing Non-Existent Columns in R Data Frames

This repository demonstrates a common, yet subtle, error in R programming related to accessing columns in data frames that do not exist.  The issue is that attempting to access a non-existent column does *not* throw an error; rather, it returns `NULL`. This can lead to unexpected behavior and difficult-to-debug issues, particularly in larger, more complex scripts.

The `bug.R` file contains an example illustrating the problem. The `bugSolution.R` file provides a solution to handle this potential issue.

## How to Reproduce

1. Clone the repository.
2. Open `bug.R` in your R environment.
3. Run the script. Observe that no error is thrown, but the result is `NULL`.
4. Observe the unexpected behavior when computing the `mean` of the non-existent column.
5. Open `bugSolution.R` to see how to proactively handle this type of error.

## Solution

The best way to avoid this is to explicitly check for the existence of columns using `%in%` before attempting to access them.  This way you can handle the situation gracefully and avoid silent failures.