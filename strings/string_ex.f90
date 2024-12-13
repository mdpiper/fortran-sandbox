! Some examples of working with strings.
program string_ex

    implicit none
    
    character(len=*), parameter :: filename = "/home/mpiper/foo.md"

    write(*, "(a)") "Hello!"

    write(*, "(a)") "Hello from " // filename

    ! Some questionable code, along with a refactor
    write(*, '(/'' FILE '',a, '' DOES NOT EXIST'')') trim(filename)
    write(*, "(/' FILE ',a, ' DOES NOT EXIST')") trim(filename)
end program string_ex
