@rem w2p -- filter from perlweb to PERL
@rem Two parameters are needed:
@rem   1. the name of the PerlWEB file (mandatory)
@rem   2. the name of a change file    (optional)
@rem Output goes to the file specified after a "-o" switch.
@rem If there is no such parameter, junk.prl is used instead.
@rem
@rem The tangling occurs in three steps
@rem   - web2perl.prl:  reorders the chunks in the perlweb input
@rem   - perlcpp:       expands the macro definitions
@rem   - stripline:     kicks out the #line comments after the expansion
@rem   - perlbeau:	puts correct indentation into the resulting perl file

@set file_names=
@set outfile=junk.prl
:LOOP
  @set param=%1
  @if "%param%"=="" GOTO ENDLOOP
  @if "%param%"=="-o" GOTO ELSE
    @set file_names=%file_names% %param%
    @GOTO ENDIF
: ELSE
    @shift
    @set param=%1
    @if NOT "%param%"=="" set outfile=%param%
: ENDIF
  @shift
  @GOTO LOOP
:ENDLOOP
perl web2perl.prl %file_names% >junk1
perlcpp <junk1 >junk2
perl striplin.prl <junk2 >junk3
perl perlbeau.prl <junk3 >%outfile%
@del junk1
@del junk2
@del junk3

