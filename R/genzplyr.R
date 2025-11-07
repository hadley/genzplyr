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

#' left_join()	link_up()
#' 
#' Merge datasets but keep only your day-ones (left table stays main squad)
#' 
#' @param x A data frame or tibble (main squad)
#' @param y A data frame or tibble (joining squad)
#' @param by Columns to join by
#' @return A merged data frame
#' @example
#' df1 <- data.frame(id = 1:3, name = c("Alice", "Bob", "Charlie"))
#' df2 <- data.frame(id = c(2, 3, 4), score = c(90, 85, 88))
#' df1 |> link_up(df2, by = "id")
#' @export
link_up <- function(x, y, ...) {
  left_join(x, y, ...)
}

#' right_join()	clout_chase()
#' 
#' Merge, but the other chums call the shots on who stays (right table is main squad)
#' 
#' @param x A data frame or tibble (main squad)
#' @param y A data frame or tibble (joining squad)
#' @param by Columns to join by
#' @return A merged data frame
#' @export
clout_chase <- function(x, y, ...) {
  right_join(x, y, ...)
}

#' inner_join()	mutuals_only()
#' 
#' Merge, but only keep rows where both tables are mutually following each other
#' 
#' @param x A data frame or tibble
#' @param y A data frame or tibble
#' @param by Columns to join by
#' @return A merged data frame
#' @export
mutuals_only <- function(x, y, ...) {
  inner_join(x, y, ...)
}

#' full_join()	everyone_in_the_groupchat()
#' 
#' Bring everyone, even if messy (keeps all rows)
#' 
#' @param x A data frame or tibble
#' @param y A data frame or tibble
#' @return A merged data frame
#' @export
everyone_in_the_groupchat <- function(x, y, ...) {
  full_join(x, y, ...)
}

#' anti_join()	ghost()
#' 
#' Forget about those who don't vibe with you (remove non-matching rows)
#' 
#' @param x A data frame or tibble
#' @param y A data frame or tibble
#' @return A data frame with non-matching rows
#' @export
ghost <- function(x, y, ...) {
  anti_join(x, y, ...)
}

#' semi_join()	only_the_reals()
#' 
#' Just keep the rows that vibe with both tables (matching rows only)
#' 
#' @param x A data frame or tibble
#' @param y A data frame or tibble
#' @return A data frame with matching rows
#' @export
only_the_reals <- function(x, y, ...) {
  semi_join(x, y, ...)
}


.onAttach <- function(libname, pkgname) {
  packageStartupMessage("genzplyr loaded fr fr \U0001f485\nYour data wrangling is about to be bussin no cap")
}
