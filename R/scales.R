#' warhol palette with ramped colours
#'
#' @param palette Choose from 'warhol_palettes' list
#'
#' @param alpha transparency
#'
#' @param reverse If TRUE, the direction of the colours is reversed.
#'
#' @examples
#' library(scales)
#' show_col(warhol_pal()(10))
#'
#' filled.contour(volcano,color.palette = warhol_pal(), asp=1)
#'
#' @export
warhol_pal <- function(palette="marilyn_62", alpha = 1, reverse = FALSE) {
  pal <- warhol_palettes[[palette]]
  if (reverse){
    pal <- rev(pal)
  }
  return(colorRampPalette(pal, alpha))
}

#' Setup colour palette for ggplot2
#'
#' @rdname scale_color_warhol
#'
#' @param palette Choose from 'warhol_palettes' list
#'
#' @param reverse logical, Reverse the order of the colours?
#'
#' @param alpha transparency
#'
#' @param discrete whether to use a discrete colour palette
#'
#' @param ... additional arguments to pass to scale_color_gradientn
#'
#' @inheritParams viridis::scale_color_viridis
#'
#' @importFrom ggplot2 scale_colour_manual
#'
#' @examples
#' library(ggplot2)
#' ggplot(mtcars, aes(mpg, wt)) +
#'   geom_point(aes(colour = factor(cyl))) +
#'   scale_colour_warhol(palette="olsen_qual")
#' ggplot(mtcars, aes(mpg, wt)) +
#'   geom_point(aes(colour = hp)) +
#'   scale_colour_warhol(palette="olsen_qual", discrete = FALSE)
#' ggplot(data = mpg) +
#'   geom_point(mapping = aes(x = displ, y = hwy, color = class)) +
#'   scale_colour_warhol(palette="winmar")
#' ggplot(diamonds) + geom_bar(aes(x = cut, fill = clarity)) +
#'   scale_fill_warhol()
#' @export
#'
#' @importFrom ggplot2 discrete_scale scale_color_gradientn
scale_color_warhol <- function(..., palette="marilyn_62",
                              discrete = TRUE, alpha = 1, reverse = FALSE) {
  if (discrete) {
    discrete_scale("colour", "warhol", palette=warhol_pal(palette, alpha = alpha, reverse = reverse))
  } else {
    scale_color_gradientn(colours = warhol_pal(palette, alpha = alpha, reverse = reverse, ...)(256))
  }
  #scale_colour_manual(values=warhol_palettes[[palette]])
}

#' @rdname scale_color_warhol
#' @export
scale_colour_warhol <- scale_color_warhol

#' #' Setup fill palette for ggplot2
#'
#' @param palette Choose from 'warhol_palettes' list
#'
#' @inheritParams viridis::scale_fill_viridis
#' @inheritParams warhol_pal
#'
#' @param discrete whether to use a discrete colour palette
#'
#' @param ... additional arguments to pass to scale_color_gradientn
#'
#' @importFrom ggplot2 scale_fill_manual discrete_scale scale_fill_gradientn
#'
#' @export
scale_fill_warhol <- function(..., palette="marilyn_62",
                             discrete = TRUE, alpha=1, reverse = TRUE) {
  if (discrete) {
    discrete_scale("fill", "warhol", palette=warhol_pal(palette, alpha = alpha, reverse = reverse))
  }
  else {
    scale_fill_gradientn(colours = warhol_pal(palette, alpha = alpha, reverse = reverse, ...)(256))
  }
}
