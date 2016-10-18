#' Help start conversations
#'
#' This function ...
#'
#'@param who character(1) The name of the person who you wish to start
#'      a conversation with,
#'
#'@param how character(1) How to greet the conversant. Either "shout" (default)
#' or "whisper"
#'
#'@return character(1) A kine if text to be used when starting conversations.
#'
#'@examples
#'  hi("Song Liu")
#'
#'
#'@export

hi <- function(who, how=c("shout", "whisper")){
  #  stopifnot(
  #   is.character(who),
  #    length(who) == 1,
  #    !is.na(who)
  #  )

    stopifnot(is_scalar_character(who))
    how = match.arg(how)
    fun = switch(how, shout=shout, whisper=whisper)
    paste("hello", fun(who), "you have", nchar(who), "letters in your name!")
}

shout <-function(who){
  toupper(who)
}

whisper <- function(who){
  tolower(who)
}

