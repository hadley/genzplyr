#' @import dplyr
NULL

#' Yeet rows from your data
#' 
#' Remove rows that don't pass the vibe check (filter equivalent)
#' 
#' @param .data A data frame or tibble
#' @param ... Logical predicates to keep rows
#' @return A data frame with yeeted rows removed
#' @export
#' @examples
#' mtcars |> yeet(mpg > 20, cyl == 4)
yeet <- function(.data, ...) {
  filter(.data, ...)
}

#' Vibe check your columns
#' 
#' Keep only the columns that pass the vibe check (select equivalent)
#' 
#' @param .data A data frame or tibble
#' @param ... Columns to keep
#' @return A data frame with selected columns
#' @export
#' @examples
#' mtcars |> vibe_check(mpg, cyl, hp)
vibe_check <- function(.data, ...) {
  select(.data, ...)
}

#' Glow up your data
#' 
#' Transform or create new columns (mutate equivalent)
#' 
#' @param .data A data frame or tibble
#' @param ... Name-value pairs of expressions
#' @return A data frame with new/modified columns
#' @export
#' @examples
#' mtcars |> glow_up(mpg_squared = mpg^2, high_hp = hp > 150)
glow_up <- function(.data, ...) {
  mutate(.data, ...)
}

#' No cap summary stats
#' 
#' Get the real stats, no cap (summarise equivalent)
#' 
#' @param .data A data frame or tibble
#' @param ... Name-value pairs of summary expressions
#' @return A data frame with summary statistics
#' @export
#' @examples
#' mtcars |> no_cap(avg_mpg = mean(mpg), max_hp = max(hp))
no_cap <- function(.data, ...) {
  summarise(.data, ...)
}

#' Sort by slay factor
#' 
#' Arrange rows by columns (arrange equivalent)
#' 
#' @param .data A data frame or tibble
#' @param ... Variables to sort by
#' @return A sorted data frame
#' @export
#' @examples
#' mtcars |> slay(desc(mpg), hp)
slay <- function(.data, ...) {
  arrange(.data, ...)
}

#' Squad up your data
#' 
#' Group by categories to analyze squads (group_by equivalent)
#' 
#' @param .data A data frame or tibble
#' @param ... Variables to group by
#' @return A grouped data frame
#' @export
#' @examples
#' mtcars |> squad_up(cyl) |> no_cap(avg_mpg = mean(mpg))
squad_up <- function(.data, ...) {
  group_by(.data, ...)
}

#' Disband the squad
#' 
#' Remove grouping (ungroup equivalent)
#' 
#' @param .data A grouped data frame
#' @return An ungrouped data frame
#' @export
#' @examples
#' mtcars |> squad_up(cyl) |> disband()
disband <- function(.data) {
  ungroup(.data)
}

#' Lowkey rename columns
#' 
#' Change column names on the down-low (rename equivalent)
#' 
#' @param .data A data frame or tibble
#' @param ... Name-value pairs (new_name = old_name)
#' @return A data frame with renamed columns
#' @export
#' @examples
#' mtcars |> lowkey(miles_per_gallon = mpg, horse_power = hp)
lowkey <- function(.data, ...) {
  rename(.data, ...)
}

#' Periodt - keep distinct rows
#' 
#' Remove duplicate rows, and that's on periodt (distinct equivalent)
#' 
#' @param .data A data frame or tibble
#' @param ... Optional columns to determine uniqueness
#' @return A data frame with unique rows
#' @export
#' @examples
#' mtcars |> periodt(cyl)
periodt <- function(.data, ...) {
  distinct(.data, ...)
}

#' Main character energy - pull a column
#' 
#' Extract a column as a vector (pull equivalent)
#' 
#' @param .data A data frame or tibble
#' @param var Column to extract
#' @return A vector
#' @export
#' @examples
#' mtcars |> main_character(mpg)
main_character <- function(.data, var) {
  pull(.data, {{ var }})
}

#' Send it - take the first n rows
#' 
#' Get the top rows (head/slice_head equivalent)
#' 
#' @param .data A data frame or tibble
#' @param n Number of rows to keep
#' @return A data frame with first n rows
#' @export
#' @examples
#' mtcars |> send_it(5)
send_it <- function(.data, n = 6) {
  slice_head(.data, n = n)
}

#' Its giving... count occurrences
#' 
#' Count observations by group (count equivalent)
#' 
#' @param .data A data frame or tibble
#' @param ... Variables to count by
#' @return A data frame with counts
#' @export
#' @examples
#' mtcars |> its_giving(cyl, gear)
its_giving <- function(.data, ...) {
  count(.data, ...)
}

#' Bussin analysis
#' 
#' Chain multiple operations when your analysis is absolutely bussin
#' 
#' @param .data A data frame or tibble
#' @return The data frame (for piping)
#' @export
bussin <- function(.data) {
  .data
}

#' Fit check
#'
#' Don't get shooketh, spill the tea on your data frame
#'
#' @return x original x is (invisibly) returned, allowing `fit_check()` to be
#'   used within a data pipeline.
#' @export
#' @usage NULL
fit_check <- glimpse


.onAttach <- function(libname, pkgname) {
  packageStartupMessage("genzplyr loaded fr fr \U0001f485\nYour data wrangling is about to be bussin no cap")
}
