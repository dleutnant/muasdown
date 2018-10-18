#' Taylor & Fracis journal format.
#'
#' Format for creating submissions to a Taylor & Francis journal. Adapted from
#' \href{http://www.tandf.co.uk/journals/authors/InteractCADLaTeX.zip}{http://www.tandf.co.uk/journals/authors/InteractCADLaTeX.zip}.
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
#' draft("MyArticle.Rmd", template = "muas_thesis", package = "muasdown")
#' }
#'
#' @export
thesis <- function(..., keep_tex = TRUE) {
  inherit_pdf_document(...,
                      keep_tex = keep_tex,
                      template = find_resource("thesis", "template.tex"),
                      citation_package = "natbib")
}
