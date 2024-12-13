! Some examples of working with strings.
program string_ex

    implicit none
    
    character(len=*), parameter :: filename = "/home/mpiper/foo.md"
    character(len=1) :: delimiter

    write(*, "(a)") "Hello!"

    write(*, "(a)") "Hello from " // filename

    ! Questionable code, along with a refactor
    write(*, '(/'' FILE '',a, '' DOES NOT EXIST'')') trim(filename)
    write(*, "(/' FILE ',a, ' DOES NOT EXIST')") trim(filename)

    ! Questionable code
    ! delimiter = "@"
    delimiter = "\"
    write(*, "(a)") "Delimiter outside conditional: " // delimiter
    if (delimiter=='/'.or.delimiter=='\') then
        write(*, "(a)") "Delimiter inside conditional: " // delimiter
    endif

    ! How does this work?
    write(*, '(1x,a/1x,a/1x,a)') 'Could not obtain home directory path.', &
        'Restart program and manually insert path', &
        'to folder/directory containing input files.'

end program string_ex
