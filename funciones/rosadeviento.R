rosadeviento <- function(bd, tb){

  png(filename = "www/ro_vi_cc.png", bg = "transparent")
  
  openair::windRose( 
    mydata = bd %>% dplyr::select(!starts_with("B_")),
    breaks = tb %>% dplyr::pull(CORTES),
    cols = tb %>% dplyr::pull(PAL_COL),
    paddle = F,
    border = T,
    key = F,
    width = 0.5,
    offset = 3,
    grid.line = list(value = 10, lty = 1, col = "black"),
    angle = 22.5,
    annotate = F,
    cex = 30,
    par.settings = list(fontsize = list(text = 16),
                        axis.line = list(col = 0)))
  
  dev.off()

}
