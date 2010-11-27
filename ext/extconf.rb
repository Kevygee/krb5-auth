require 'mkmf'

have_library("krb5","krb5_init_context")
create_makefile('krb5')
