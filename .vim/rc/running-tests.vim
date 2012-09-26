" Functions for running tests from different frameworks in Ruby.

function! RunTests(filename)
    " Write the file and run tests for the given filename
    :w

    " :silent !echo;echo;echo;echo;echo;echo;echo;echo;echo;echo
    " :silent !echo;echo;echo;echo;echo;echo;echo;echo;echo;echo
    " :silent !echo;echo;echo;echo;echo;echo;echo;echo;echo;echo
    " :silent !echo;echo;echo;echo;echo;echo;echo;echo;echo;echo
    " :silent !echo;echo;echo;echo;echo;echo;echo;echo;echo;echo
    " :silent !echo;echo;echo;echo;echo;echo;echo;echo;echo;echo

    if match(a:filename, '\.feature$') != -1
        exec ":!script/features " . a:filename
    else
        if filereadable("script/test")
            exec ":!script/test " . a:filename
        elseif filereadable("Gemfile")
            " Skip bundler, until it gets faster.
            " exec ":!bundle exec rspec --color " . a:filename
            exec ":!rspec --format=doc --color " . a:filename
        else
            exec ":!rspec --format=doc --color " . a:filename
        end
    end
endfunction

function! SetTestFile()
    " Set the spec file that tests will be run for.
    let t:grb_test_file=@%
endfunction

function! RunTestFile(...)
    if a:0
        let command_suffix = a:1
    else
        let command_suffix = ""
    endif

    " Run the tests for the previously-marked file.
    let in_test_file = match(expand("%"), '\(.feature\|_spec.rb\)$') != -1
    if in_test_file
        call SetTestFile()
    elseif !exists("t:grb_test_file")
        return
    end
    call RunTests(t:grb_test_file . command_suffix)
endfunction

function! RunNearestTest()
    let spec_line_number = line('.')
    call RunTestFile(":" . spec_line_number . " -b")
endfunction

