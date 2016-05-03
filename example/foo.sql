create or replace package foo
as

    bar NUMBER := 1;

end foo;
/

exit
--@check foo
