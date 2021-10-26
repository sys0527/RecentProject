
# ~~~~~~~~~~~~~~~~~~~~~~ Exercise 1 ~~~~~~~~~~~~~~~~~~~~~~
# Run the following code and answer the question
#  pfda_yourscore = runif(1)
#  pfda_cgpa = pfda_yourscore*4
#  1. What is the data type of pfda_cgpa
# ====================== Answer ==========================
pfda_yourScore = runif(1)
pfda_cgpa = pfda_yourScore*4
class(pfda_cgpa)
is.numeric(pfda_cgpa)
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#  2. How to prove it is NOT a character
# ====================== Answer ==========================
is.character((pfda_cgpa))
cat("Statement : pfda_cgpa is Not a character:",!is.character(pfda_cgpa))

pass = c(T,T,F,T)
fail = !pass
fail
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#  3. Convert pfda_cgpa to integer so it will be 4 state (or 4 category)
# ["Fail", "Pass", "Credit", "Distinction"]
# ====================== Answer ==========================

grade = c("fail", "Pass", "Credit","Distinction")
grade[as.integer(pfda_cgpa)+1]

