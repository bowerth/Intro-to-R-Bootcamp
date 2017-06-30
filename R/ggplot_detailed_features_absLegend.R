
## p <- p1
## h <- unit(0.4, "cm")
## absLegend <- function(p, h=unit(0.4, "cm")) {
absLegend <- function(p) {

  ## new_height <- h

  gp <- ggplot2::ggplotGrob(p)
  leg <- gtable::gtable_filter(gp, "guide-box")
  panel <- gtable::gtable_filter(gp, "panel")

  gp_no_leg <- cowplot::gtable_remove_grobs(gp, "guide-box")

  ## leg[[1]][[1]]$heights[[3]] = new_height

  ## library(egg)
  ## grid.arrange(egg::expose_layout(p, FALSE, FALSE))
  ## egg::.dummy_ggplot(p)

  ## elem <- 3
  ## leg[[1]][[1]]$widths[[elem]] =
  ##   panel$grobs[[1]]$children[[1]]$children[[1]]$width -
  ##   sum(leg[[1]][[1]]$widths) +
  ##   leg[[1]][[1]]$widths[[elem]]

  ## gp.new = gtable::gtable_add_grob(gp_no_leg, leg, t = 4, l = 4)

  grey_rect_grop <-
    rectGrob(
      gp =
        gpar(
          col = panel$grobs[[1]]$children[[1]]$children[[1]]$gp$col,
          fill = panel$grobs[[1]]$children[[1]]$children[[1]]$gp$fill))
  gp.new_1 = gtable::gtable_add_grob(gp_no_leg, grey_rect_grop, t = 4, l = 4)

  leg_w_bg <- grobTree(grey_rect_grop, leg)

  gp.new <-
    gtable::gtable_add_grob(gp_no_leg, leg_w_bg, t = 4, l = 4)

  return(gp.new)
  ## grid.newpage()
  ## grid.draw(gp.new)
}
## absLegend(p1)


## testGrobs <- function(ii) {
##   grobTree(rectGrob(gp=gpar(fill=ii, alpha=0.5)), textGrob(ii))
## }

## execGrobs <- function() {
##   gs <- lapply(1:9, testGrobs)
##   gridExtra::grid.arrange(grobs=gs, ncol=4,
##                top="top label", bottom="bottom\nlabel",
##                left="left label", right="right label")
##   grid::grid.rect(gp=gpar(fill=NA))
## }

## execGrobs()
