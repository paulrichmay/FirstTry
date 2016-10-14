#' Helps start conversations
#'
#' This function generates a string with name, numchars ldladnflanflanfnal
#' ladkflfamlaklallafmkaaflmlamalfk
#'
#' @param who character(1) The name of the person you wish to talk to start a
#'   conversation with
#'
#' @param how char(1) how to greet the person.  Either "shout" (default) or
#'   "whisper"
#'
#' @return character(1) A line of hello world with num of chars
#'
#' @examples
#' hi("Paul")
#' hi("Paul", "whisper")
#'
#' @export
#'
hi = function(who, how = c("shout", "whisper")) {
     #check value of who to be char, length 1, not NA, otherwise stop
     stopifnot(
          is_scalar_character(who)
     )
     how = match.arg(how)
     fun = switch(how, shout = shout, whisper = whisper)
     paste("hello", fun(who),"you have", nchar(who), "letters in your name!")
}

shout = function(who){
     toupper(who)
}

whisper = function(who){
     tolower(who)
}
