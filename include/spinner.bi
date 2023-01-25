/'
 ' Copyright (c) 2023 XXIV
 '
 ' Permission is hereby granted, free of charge, to any person obtaining a copy
 ' of this software and associated documentation files (the "Software"), to deal
 ' in the Software without restriction, including without limitation the rights
 ' to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 ' copies of the Software, and to permit persons to whom the Software is
 ' furnished to do so, subject to the following conditions:
 '
 ' The above copyright notice and this permission notice shall be included in all
 ' copies or substantial portions of the Software.
 '
 ' THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 ' IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 ' FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 ' AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 ' LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 ' OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 ' SOFTWARE.
 '/
#ifndef __SPINNER_WRAPPER_BI__
#define __SPINNER_WRAPPER_BI__

#include once "spinner_raw.bi"

type Spinners as spinner_spinners_t
type Spinner
    _spinner as spinner_t
end type

declare function SpinnerNew(byval spinner as Spinners, byref message as const string) as Spinner

declare function SpinnerNewWithTimer(byval spinner as Spinners, byref message as const string) as Spinner

declare sub SpinnerStop(byref _spinner as Spinner)

declare sub SpinnerStopWithSymbol(byref _spinner as Spinner, byref symbol as const string)

declare sub SpinnerStopWithNewline(byref _spinner as Spinner)

declare sub SpinnerStopWithMessage(byref _spinner as Spinner, byref msg as const string)

declare sub SpinnerStopAndPersist(byref _spinner as Spinner, byref symbol as const string, byref msg as const string)

declare sub SpinnerClean(byref _spinner as Spinner)

#endif '__SPINNER_WRAPPER_BI__
