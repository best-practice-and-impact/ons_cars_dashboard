quarto::quarto_render("quarto/ons_counts.qmd", output_file = "docs/ons_counts.html")

# ASPX conversion

replace_utf8 <- function(x) {
  x <- gsub("”", "\"", x)
  x <- gsub("“", "\"", x)
  x <- gsub("’", "\'", x)
  x <- gsub("", "link", x)
}

readr::write_file(replace_utf8(readr::read_file("docs/ons_counts.html")), "docs/ons_counts.aspx")
