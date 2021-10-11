@rem w2h -- filter from PerlWEB to HTML
@rem Two parameters are needed:
@rem   1. the name of the PerlWEB file (mandatory)
@rem   2. the name of a change file    (optional)
@rem Output goes to the file specified after a "-o" switch.
@rem If there is no such parameter, junk.htm is used instead.
@rem
@rem The weaving consists of one step
@rem   - web2html.prl:	expands the PERLWeb file into HTML

@set file_names=
@set outfile=junk.htm
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
perl web2html.prl %file_names% >%outfile%

