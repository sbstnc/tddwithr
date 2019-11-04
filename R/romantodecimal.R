rom2dec <- function(l_chars) {
  up_revs <- sapply(l_chars, function(chs) { intToUtf8(rev(utf8ToInt(toupper(chs)))) }, USE.NAMES = FALSE)
  mapping <- data.frame(rom = c("M", "D", "C", "L", "X", "V", "I"),
                        dec = c(1000, 500, 100, 50, 10, 5, 1), stringsAsFactors = FALSE)
  splits <- strsplit(up_revs, split = "", fixed = TRUE)
  dfs <- lapply(splits, function(sp) { data.frame(rom = sp, stringsAsFactors = FALSE) } )
  map_dfs <- lapply(dfs, plyr::join, mapping)
  lag_dfs <- lapply(map_dfs, function(df) { rbind(data.frame(rom = "-", dec = 0), head(df, -1)) })
  comp_tables <- lapply(1:length(lag_dfs), function(i) { cbind(map_dfs[[i]], data.frame(add=map_dfs[[i]]$dec >= lag_dfs[[i]]$dec)) })
  sapply(1:length(comp_tables), function(i) { sum(comp_tables[[i]][which(comp_tables[[i]]$add == TRUE), ]$dec) - sum(comp_tables[[i]][which(comp_tables[[i]]$add == FALSE), ]$dec) })
}