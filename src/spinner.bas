#include once "spinner.bi"

function SpinnerNew(byval spinner as Spinners, byref message as const string) as Spinner
    dim spin as spinner_t = spinner_new(spinner, strptr(message))
    dim newspin as Spinner
    newspin._spinner = spin
    return newspin
end function

function SpinnerNewWithTimer(byval spinner as Spinners, byref message as const string) as Spinner
    dim spin as spinner_t = spinner_new_with_timer(spinner, strptr(message))
    dim newspin as Spinner
    newspin._spinner = spin
    return newspin
end function

sub SpinnerStop(byref _spinner as Spinner)
    spinner_stop(@_spinner._spinner)
end sub

sub SpinnerStopWithSymbol(byref _spinner as Spinner, byref symbol as const string)
    spinner_stop_with_symbol(@_spinner._spinner, strptr(symbol))
end sub

sub SpinnerStopWithNewline(byref _spinner as Spinner)
    spinner_stop_with_newline(@_spinner._spinner)
end sub

sub SpinnerStopWithMessage(byref _spinner as Spinner, byref msg as const string)
    spinner_stop_with_message(@_spinner._spinner, strptr(msg))
end sub

sub SpinnerStopAndPersist(byref _spinner as Spinner, byref symbol as const string, byref msg as const string)
    spinner_stop_and_persist(@_spinner._spinner, strptr(symbol), strptr(msg))
end sub

sub SpinnerClean(byref _spinner as Spinner)
    spinner_clean(@_spinner._spinner)
end sub
