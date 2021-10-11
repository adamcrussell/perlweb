Purpose
=======

PerlWEB is a literate programming system for Perl and HTML. There are two
tools (as in every LP-system) called w2p and w2h. w2p converts PerlWEB into
Perl and w2h converts PerlWEB into HTML. The Perl output is reasonably
indented but not intended for maintenance. The HTML output contains
hyperlinks for modules and subroutines to support navigation with a
HTML-browser.


Installation
============

The PerlWEB-distribution contains:

 - w2p:                   UNIX shell script for converting PerlWEB to PERL;
 - w2p.bat:               DOS shell script for converting PerlWEB to PERL;
 - w2h:                   UNIX shell script for converting PerlWEB to HTML;
 - w2h.bat:               DOS shell script for converting PerlWEB to HTML;
 - web2perl.prl:          PERL program for converting PerlWEB to PERL;
 - web2html.prl:          PERL program for converting PerlWEB to HTML;
 - striplin.prl:          supporting PERL programm;
 - perlbeau.prl:          supporting PERL programm (PERL beautifier);
 - web2perl/web2perl.web: PerlWEB program for converting PerlWEB to PERL;
 - web2perl/web2perl.dos: change file for web2perl.web to adapt it to DOS
                          peculiarities;
 - web2html/web2html.web: PerlWEB program for converting PerlWEB to HTML;
 - web2html/web2html.dos: change file for web2html.web to adapt it to DOS
                          peculiarities;
 - includes/general.web:  include file to introduce some general concepts into
                          PerlWEB programs;
 - includes/web2xxx.web:  common part for web2html.web and web2perl.web;
 - doc/perlweb.htm:       documentation in HTML;


To install the distribution on your system you have to do the following 

    1. Expand the LHA-file in some directory (DOS) or unzip and untar the
       Unix archive.
    2. Put all PERL programs in some directory where they can be located by
       PERL. 
    3. The script files must be put in some directory on the path of the
       shell (in UNIX) or COMMAND.COM (in DOS). 
    4. Make sure that PERL (version 5) is accessible. The DOS version
       additionally needs a C preprocessor PERLCPP which must be in the
       DOS path.

After that installation PerlWEB is operational.

The original files web2perl.web and web2perl.dos together with DOS change
files and necessary include files (general.web, web2xxx.web) are also
included in the distribution. Whenever code has to be changed, don't do it
in the Perl files...


Running the programs
====================

The UNIX and DOS command line for w2p is

      w2p web_file.web [ change_file.ch ] [ -o outfile ] 

and the same conventions apply to w2h:

      w2h web_file.web [ change_file.ch ] [ -o outfile ] 

If no outfile is given output goes either to STDOUT (in UNIX) or to
junk.prl for w2p or junk.htm for w2h (in DOS). If no change file is
specified, the change file is null (i.e. no changes are incorporated...).
