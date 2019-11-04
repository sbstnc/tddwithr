rom2dec <- function(roman) {
  if (roman == "M")
    1000
  else if (roman == "D")
    500
  else
    100
}