#!/usr/bin/perl
# restart.cgi
# reStart the tomcat daemon
  
#!/usr/bin/perl

require './tomcat-lib.pl';
&ReadParse();
&error_setup($text{'stop_err'});
my ($rc, $err) = tomcat_service_ctl('restart');
if ($rc != 0){
	&ui_print_header(undef, $text{'index_title'}, "");
	&error($err);
	&ui_print_footer("", $text{'index_return'});
	exit;
}
&redirect("");
