#' Rmarkdown Thesis Template at Muenster University of Applied Sciences
#'
#' Create your thesis with all the beauty of R.
#'
#' @inheritParams rmarkdown::pdf_document
#' @param ... Additional arguments to \code{rmarkdown::pdf_document}
#'
#' @return R Markdown output format to pass to
#'   \code{\link[rmarkdown:render]{render}}
#'
#' @examples
#'
#' \dontrun{
#' library(rmarkdown)
#' draft("MyThesis.Rmd", template = "muas_thesis", package = "muasdown")
#' }
#'
#' @export
thesis <- function(..., keep_tex = TRUE) {
  inherit_pdf_document(...,
                       keep_tex = keep_tex,
                       template = find_resource("thesis", "template.tex"),
                       citation_package = "biblatex")
}
