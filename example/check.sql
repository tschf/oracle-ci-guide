set verify off

whenever sqlerror exit failure

declare
    l_obj user_objects%rowtype;
begin
    select *
    into l_obj
    from user_objects
    where object_name = upper('&1');

    if l_obj.status = 'INVALID'
    then
        raise_application_error(
            -20000,
            '&1 did not compile successfully'
        );
    end if;

end;
/

exit
