#! /bin/sh
# Generated by niminst

if [ $# -eq 1 ] ; then
  if test -f bin/nimrod
  then 
    echo "Nimrod build detected"
  else
    echo "Please build Nimrod before installing it"
    exit 1
  fi
  case $1 in
    "--help"|"-h"|"help"|"h")
      echo "Nimrod installation script"
      echo "Usage: [sudo] sh install.sh DIR"
      echo "Where DIR may be:"
      echo "  /usr/bin"
      echo "  /usr/local/bin"
      echo "  /opt"
      echo "  <some other dir> (treated like '/opt')"
      echo "To deinstall, use the command:"
      echo "sh deinstall.sh DIR"
      exit 1
      ;;
    "/usr/bin")
      bindir=/usr/bin
      configdir=/etc
      libdir=/usr/lib/nimrod
      docdir=/usr/share/nimrod/doc
      datadir=/usr/share/nimrod/data
      ;;
    "/usr/local/bin")
      bindir=/usr/local/bin
      configdir=/etc
      libdir=/usr/local/lib/nimrod
      docdir=/usr/local/share/nimrod/doc
      datadir=/usr/local/share/nimrod/data
      ;;
    *)
      bindir="$1/nimrod/bin"
      configdir="$1/nimrod/config"
      libdir="$1/nimrod/lib"
      docdir="$1/nimrod/doc"
      datadir="$1/nimrod/data"
      
      mkdir -p $1/nimrod || exit 1
      mkdir -p $bindir || exit 1
      mkdir -p $configdir || exit 1
      ;;
  esac
  mkdir -p $libdir || exit 1
  mkdir -p $docdir || exit 1
  echo "copying files..."
  mkdir -p $libdir/system || exit 1
  mkdir -p $libdir/core || exit 1
  mkdir -p $libdir/pure || exit 1
  mkdir -p $libdir/impure || exit 1
  mkdir -p $libdir/wrappers || exit 1
  mkdir -p $libdir/wrappers/cairo || exit 1
  mkdir -p $libdir/wrappers/gtk || exit 1
  mkdir -p $libdir/wrappers/lua || exit 1
  mkdir -p $libdir/wrappers/opengl || exit 1
  mkdir -p $libdir/wrappers/sdl || exit 1
  mkdir -p $libdir/wrappers/x11 || exit 1
  mkdir -p $libdir/wrappers/zip || exit 1
  mkdir -p $libdir/windows || exit 1
  mkdir -p $libdir/posix || exit 1
  mkdir -p $libdir/ecmas || exit 1

  cp bin/nimrod $bindir/nimrod || exit 1
  chmod 755 $bindir/nimrod
  cp config/nimrod.cfg $configdir/nimrod.cfg || exit 1
  chmod 644 $configdir/nimrod.cfg
  cp config/nimdoc.cfg $configdir/nimdoc.cfg || exit 1
  chmod 644 $configdir/nimdoc.cfg
  cp config/nimdoc.tex.cfg $configdir/nimdoc.tex.cfg || exit 1
  chmod 644 $configdir/nimdoc.tex.cfg
  cp doc/abstypes.txt $docdir/abstypes.txt || exit 1
  chmod 644 $docdir/abstypes.txt
  cp doc/advopt.txt $docdir/advopt.txt || exit 1
  chmod 644 $docdir/advopt.txt
  cp doc/apis.txt $docdir/apis.txt || exit 1
  chmod 644 $docdir/apis.txt
  cp doc/astspec.txt $docdir/astspec.txt || exit 1
  chmod 644 $docdir/astspec.txt
  cp doc/basicopt.txt $docdir/basicopt.txt || exit 1
  chmod 644 $docdir/basicopt.txt
  cp doc/c2nim.txt $docdir/c2nim.txt || exit 1
  chmod 644 $docdir/c2nim.txt
  cp doc/docs.txt $docdir/docs.txt || exit 1
  chmod 644 $docdir/docs.txt
  cp doc/effects.txt $docdir/effects.txt || exit 1
  chmod 644 $docdir/effects.txt
  cp doc/endb.txt $docdir/endb.txt || exit 1
  chmod 644 $docdir/endb.txt
  cp doc/filelist.txt $docdir/filelist.txt || exit 1
  chmod 644 $docdir/filelist.txt
  cp doc/filters.txt $docdir/filters.txt || exit 1
  chmod 644 $docdir/filters.txt
  cp doc/gramcurl.txt $docdir/gramcurl.txt || exit 1
  chmod 644 $docdir/gramcurl.txt
  cp doc/grammar.txt $docdir/grammar.txt || exit 1
  chmod 644 $docdir/grammar.txt
  cp doc/intern.txt $docdir/intern.txt || exit 1
  chmod 644 $docdir/intern.txt
  cp doc/keywords.txt $docdir/keywords.txt || exit 1
  chmod 644 $docdir/keywords.txt
  cp doc/lib.txt $docdir/lib.txt || exit 1
  chmod 644 $docdir/lib.txt
  cp doc/manual.txt $docdir/manual.txt || exit 1
  chmod 644 $docdir/manual.txt
  cp doc/niminst.txt $docdir/niminst.txt || exit 1
  chmod 644 $docdir/niminst.txt
  cp doc/nimrodc.txt $docdir/nimrodc.txt || exit 1
  chmod 644 $docdir/nimrodc.txt
  cp doc/overview.txt $docdir/overview.txt || exit 1
  chmod 644 $docdir/overview.txt
  cp doc/pegdocs.txt $docdir/pegdocs.txt || exit 1
  chmod 644 $docdir/pegdocs.txt
  cp doc/readme.txt $docdir/readme.txt || exit 1
  chmod 644 $docdir/readme.txt
  cp doc/regexprs.txt $docdir/regexprs.txt || exit 1
  chmod 644 $docdir/regexprs.txt
  cp doc/rst.txt $docdir/rst.txt || exit 1
  chmod 644 $docdir/rst.txt
  cp doc/theindex.txt $docdir/theindex.txt || exit 1
  chmod 644 $docdir/theindex.txt
  cp doc/tools.txt $docdir/tools.txt || exit 1
  chmod 644 $docdir/tools.txt
  cp doc/tut1.txt $docdir/tut1.txt || exit 1
  chmod 644 $docdir/tut1.txt
  cp doc/tut2.txt $docdir/tut2.txt || exit 1
  chmod 644 $docdir/tut2.txt
  cp doc/mytest.cfg $docdir/mytest.cfg || exit 1
  chmod 644 $docdir/mytest.cfg
  cp doc/c2nim.pdf $docdir/c2nim.pdf || exit 1
  chmod 644 $docdir/c2nim.pdf
  cp doc/lib.pdf $docdir/lib.pdf || exit 1
  chmod 644 $docdir/lib.pdf
  cp doc/manual.pdf $docdir/manual.pdf || exit 1
  chmod 644 $docdir/manual.pdf
  cp doc/niminst.pdf $docdir/niminst.pdf || exit 1
  chmod 644 $docdir/niminst.pdf
  cp doc/nimrodc.pdf $docdir/nimrodc.pdf || exit 1
  chmod 644 $docdir/nimrodc.pdf
  cp doc/tut1.pdf $docdir/tut1.pdf || exit 1
  chmod 644 $docdir/tut1.pdf
  cp doc/tut2.pdf $docdir/tut2.pdf || exit 1
  chmod 644 $docdir/tut2.pdf
  cp lib/nimbase.h $libdir/nimbase.h || exit 1
  chmod 644 $libdir/nimbase.h
  cp lib/cycle.h $libdir/cycle.h || exit 1
  chmod 644 $libdir/cycle.h
  cp lib/nimrtl.nim $libdir/nimrtl.nim || exit 1
  chmod 644 $libdir/nimrtl.nim
  cp lib/prelude.nim $libdir/prelude.nim || exit 1
  chmod 644 $libdir/prelude.nim
  cp lib/system.nim $libdir/system.nim || exit 1
  chmod 644 $libdir/system.nim
  cp lib/nimrtl.cfg $libdir/nimrtl.cfg || exit 1
  chmod 644 $libdir/nimrtl.cfg
  cp lib/system/alloc.nim $libdir/system/alloc.nim || exit 1
  chmod 644 $libdir/system/alloc.nim
  cp lib/system/ansi_c.nim $libdir/system/ansi_c.nim || exit 1
  chmod 644 $libdir/system/ansi_c.nim
  cp lib/system/arithm.nim $libdir/system/arithm.nim || exit 1
  chmod 644 $libdir/system/arithm.nim
  cp lib/system/assign.nim $libdir/system/assign.nim || exit 1
  chmod 644 $libdir/system/assign.nim
  cp lib/system/atomics.nim $libdir/system/atomics.nim || exit 1
  chmod 644 $libdir/system/atomics.nim
  cp lib/system/cellsets.nim $libdir/system/cellsets.nim || exit 1
  chmod 644 $libdir/system/cellsets.nim
  cp lib/system/cgprocs.nim $libdir/system/cgprocs.nim || exit 1
  chmod 644 $libdir/system/cgprocs.nim
  cp lib/system/debugger.nim $libdir/system/debugger.nim || exit 1
  chmod 644 $libdir/system/debugger.nim
  cp lib/system/dyncalls.nim $libdir/system/dyncalls.nim || exit 1
  chmod 644 $libdir/system/dyncalls.nim
  cp lib/system/ecmasys.nim $libdir/system/ecmasys.nim || exit 1
  chmod 644 $libdir/system/ecmasys.nim
  cp lib/system/excpt.nim $libdir/system/excpt.nim || exit 1
  chmod 644 $libdir/system/excpt.nim
  cp lib/system/gc.nim $libdir/system/gc.nim || exit 1
  chmod 644 $libdir/system/gc.nim
  cp lib/system/hti.nim $libdir/system/hti.nim || exit 1
  chmod 644 $libdir/system/hti.nim
  cp lib/system/inclrtl.nim $libdir/system/inclrtl.nim || exit 1
  chmod 644 $libdir/system/inclrtl.nim
  cp lib/system/mmdisp.nim $libdir/system/mmdisp.nim || exit 1
  chmod 644 $libdir/system/mmdisp.nim
  cp lib/system/profiler.nim $libdir/system/profiler.nim || exit 1
  chmod 644 $libdir/system/profiler.nim
  cp lib/system/repr.nim $libdir/system/repr.nim || exit 1
  chmod 644 $libdir/system/repr.nim
  cp lib/system/sets.nim $libdir/system/sets.nim || exit 1
  chmod 644 $libdir/system/sets.nim
  cp lib/system/sysio.nim $libdir/system/sysio.nim || exit 1
  chmod 644 $libdir/system/sysio.nim
  cp lib/system/sysstr.nim $libdir/system/sysstr.nim || exit 1
  chmod 644 $libdir/system/sysstr.nim
  cp lib/system/threads.nim $libdir/system/threads.nim || exit 1
  chmod 644 $libdir/system/threads.nim
  cp lib/core/macros.nim $libdir/core/macros.nim || exit 1
  chmod 644 $libdir/core/macros.nim
  cp lib/core/marshal.nim $libdir/core/marshal.nim || exit 1
  chmod 644 $libdir/core/marshal.nim
  cp lib/core/typeinfo.nim $libdir/core/typeinfo.nim || exit 1
  chmod 644 $libdir/core/typeinfo.nim
  cp lib/pure/algorithm.nim $libdir/pure/algorithm.nim || exit 1
  chmod 644 $libdir/pure/algorithm.nim
  cp lib/pure/base64.nim $libdir/pure/base64.nim || exit 1
  chmod 644 $libdir/pure/base64.nim
  cp lib/pure/browsers.nim $libdir/pure/browsers.nim || exit 1
  chmod 644 $libdir/pure/browsers.nim
  cp lib/pure/cgi.nim $libdir/pure/cgi.nim || exit 1
  chmod 644 $libdir/pure/cgi.nim
  cp lib/pure/colors.nim $libdir/pure/colors.nim || exit 1
  chmod 644 $libdir/pure/colors.nim
  cp lib/pure/complex.nim $libdir/pure/complex.nim || exit 1
  chmod 644 $libdir/pure/complex.nim
  cp lib/pure/cookies.nim $libdir/pure/cookies.nim || exit 1
  chmod 644 $libdir/pure/cookies.nim
  cp lib/pure/dynlib.nim $libdir/pure/dynlib.nim || exit 1
  chmod 644 $libdir/pure/dynlib.nim
  cp lib/pure/gentabs.nim $libdir/pure/gentabs.nim || exit 1
  chmod 644 $libdir/pure/gentabs.nim
  cp lib/pure/hashes.nim $libdir/pure/hashes.nim || exit 1
  chmod 644 $libdir/pure/hashes.nim
  cp lib/pure/htmlparser.nim $libdir/pure/htmlparser.nim || exit 1
  chmod 644 $libdir/pure/htmlparser.nim
  cp lib/pure/httpclient.nim $libdir/pure/httpclient.nim || exit 1
  chmod 644 $libdir/pure/httpclient.nim
  cp lib/pure/httpserver.nim $libdir/pure/httpserver.nim || exit 1
  chmod 644 $libdir/pure/httpserver.nim
  cp lib/pure/json.nim $libdir/pure/json.nim || exit 1
  chmod 644 $libdir/pure/json.nim
  cp lib/pure/lexbase.nim $libdir/pure/lexbase.nim || exit 1
  chmod 644 $libdir/pure/lexbase.nim
  cp lib/pure/logging.nim $libdir/pure/logging.nim || exit 1
  chmod 644 $libdir/pure/logging.nim
  cp lib/pure/math.nim $libdir/pure/math.nim || exit 1
  chmod 644 $libdir/pure/math.nim
  cp lib/pure/md5.nim $libdir/pure/md5.nim || exit 1
  chmod 644 $libdir/pure/md5.nim
  cp lib/pure/os.nim $libdir/pure/os.nim || exit 1
  chmod 644 $libdir/pure/os.nim
  cp lib/pure/osproc.nim $libdir/pure/osproc.nim || exit 1
  chmod 644 $libdir/pure/osproc.nim
  cp lib/pure/parsecfg.nim $libdir/pure/parsecfg.nim || exit 1
  chmod 644 $libdir/pure/parsecfg.nim
  cp lib/pure/parsecsv.nim $libdir/pure/parsecsv.nim || exit 1
  chmod 644 $libdir/pure/parsecsv.nim
  cp lib/pure/parseopt.nim $libdir/pure/parseopt.nim || exit 1
  chmod 644 $libdir/pure/parseopt.nim
  cp lib/pure/parsesql.nim $libdir/pure/parsesql.nim || exit 1
  chmod 644 $libdir/pure/parsesql.nim
  cp lib/pure/parseurl.nim $libdir/pure/parseurl.nim || exit 1
  chmod 644 $libdir/pure/parseurl.nim
  cp lib/pure/parseutils.nim $libdir/pure/parseutils.nim || exit 1
  chmod 644 $libdir/pure/parseutils.nim
  cp lib/pure/parsexml.nim $libdir/pure/parsexml.nim || exit 1
  chmod 644 $libdir/pure/parsexml.nim
  cp lib/pure/pegs.nim $libdir/pure/pegs.nim || exit 1
  chmod 644 $libdir/pure/pegs.nim
  cp lib/pure/redis.nim $libdir/pure/redis.nim || exit 1
  chmod 644 $libdir/pure/redis.nim
  cp lib/pure/regexprs.nim $libdir/pure/regexprs.nim || exit 1
  chmod 644 $libdir/pure/regexprs.nim
  cp lib/pure/ropes.nim $libdir/pure/ropes.nim || exit 1
  chmod 644 $libdir/pure/ropes.nim
  cp lib/pure/scgi.nim $libdir/pure/scgi.nim || exit 1
  chmod 644 $libdir/pure/scgi.nim
  cp lib/pure/smtp.nim $libdir/pure/smtp.nim || exit 1
  chmod 644 $libdir/pure/smtp.nim
  cp lib/pure/sockets.nim $libdir/pure/sockets.nim || exit 1
  chmod 644 $libdir/pure/sockets.nim
  cp lib/pure/streams.nim $libdir/pure/streams.nim || exit 1
  chmod 644 $libdir/pure/streams.nim
  cp lib/pure/strtabs.nim $libdir/pure/strtabs.nim || exit 1
  chmod 644 $libdir/pure/strtabs.nim
  cp lib/pure/strutils.nim $libdir/pure/strutils.nim || exit 1
  chmod 644 $libdir/pure/strutils.nim
  cp lib/pure/terminal.nim $libdir/pure/terminal.nim || exit 1
  chmod 644 $libdir/pure/terminal.nim
  cp lib/pure/times.nim $libdir/pure/times.nim || exit 1
  chmod 644 $libdir/pure/times.nim
  cp lib/pure/unicode.nim $libdir/pure/unicode.nim || exit 1
  chmod 644 $libdir/pure/unicode.nim
  cp lib/pure/xmldom.nim $libdir/pure/xmldom.nim || exit 1
  chmod 644 $libdir/pure/xmldom.nim
  cp lib/pure/xmldomparser.nim $libdir/pure/xmldomparser.nim || exit 1
  chmod 644 $libdir/pure/xmldomparser.nim
  cp lib/pure/xmlgen.nim $libdir/pure/xmlgen.nim || exit 1
  chmod 644 $libdir/pure/xmlgen.nim
  cp lib/pure/xmlparser.nim $libdir/pure/xmlparser.nim || exit 1
  chmod 644 $libdir/pure/xmlparser.nim
  cp lib/pure/xmltree.nim $libdir/pure/xmltree.nim || exit 1
  chmod 644 $libdir/pure/xmltree.nim
  cp lib/pure/yamllexer.nim $libdir/pure/yamllexer.nim || exit 1
  chmod 644 $libdir/pure/yamllexer.nim
  cp lib/impure/db_mysql.nim $libdir/impure/db_mysql.nim || exit 1
  chmod 644 $libdir/impure/db_mysql.nim
  cp lib/impure/db_postgres.nim $libdir/impure/db_postgres.nim || exit 1
  chmod 644 $libdir/impure/db_postgres.nim
  cp lib/impure/db_sqlite.nim $libdir/impure/db_sqlite.nim || exit 1
  chmod 644 $libdir/impure/db_sqlite.nim
  cp lib/impure/dialogs.nim $libdir/impure/dialogs.nim || exit 1
  chmod 644 $libdir/impure/dialogs.nim
  cp lib/impure/encodings.nim $libdir/impure/encodings.nim || exit 1
  chmod 644 $libdir/impure/encodings.nim
  cp lib/impure/graphics.nim $libdir/impure/graphics.nim || exit 1
  chmod 644 $libdir/impure/graphics.nim
  cp lib/impure/osinfo_posix.nim $libdir/impure/osinfo_posix.nim || exit 1
  chmod 644 $libdir/impure/osinfo_posix.nim
  cp lib/impure/osinfo_win.nim $libdir/impure/osinfo_win.nim || exit 1
  chmod 644 $libdir/impure/osinfo_win.nim
  cp lib/impure/rdstdin.nim $libdir/impure/rdstdin.nim || exit 1
  chmod 644 $libdir/impure/rdstdin.nim
  cp lib/impure/re.nim $libdir/impure/re.nim || exit 1
  chmod 644 $libdir/impure/re.nim
  cp lib/impure/ssl.nim $libdir/impure/ssl.nim || exit 1
  chmod 644 $libdir/impure/ssl.nim
  cp lib/impure/web.nim $libdir/impure/web.nim || exit 1
  chmod 644 $libdir/impure/web.nim
  cp lib/impure/zipfiles.nim $libdir/impure/zipfiles.nim || exit 1
  chmod 644 $libdir/impure/zipfiles.nim
  cp lib/wrappers/claro.nim $libdir/wrappers/claro.nim || exit 1
  chmod 644 $libdir/wrappers/claro.nim
  cp lib/wrappers/expat.nim $libdir/wrappers/expat.nim || exit 1
  chmod 644 $libdir/wrappers/expat.nim
  cp lib/wrappers/iup.nim $libdir/wrappers/iup.nim || exit 1
  chmod 644 $libdir/wrappers/iup.nim
  cp lib/wrappers/libcurl.nim $libdir/wrappers/libcurl.nim || exit 1
  chmod 644 $libdir/wrappers/libcurl.nim
  cp lib/wrappers/mysql.nim $libdir/wrappers/mysql.nim || exit 1
  chmod 644 $libdir/wrappers/mysql.nim
  cp lib/wrappers/odbcsql.nim $libdir/wrappers/odbcsql.nim || exit 1
  chmod 644 $libdir/wrappers/odbcsql.nim
  cp lib/wrappers/openssl.nim $libdir/wrappers/openssl.nim || exit 1
  chmod 644 $libdir/wrappers/openssl.nim
  cp lib/wrappers/pcre.nim $libdir/wrappers/pcre.nim || exit 1
  chmod 644 $libdir/wrappers/pcre.nim
  cp lib/wrappers/postgres.nim $libdir/wrappers/postgres.nim || exit 1
  chmod 644 $libdir/wrappers/postgres.nim
  cp lib/wrappers/python.nim $libdir/wrappers/python.nim || exit 1
  chmod 644 $libdir/wrappers/python.nim
  cp lib/wrappers/sphinx.nim $libdir/wrappers/sphinx.nim || exit 1
  chmod 644 $libdir/wrappers/sphinx.nim
  cp lib/wrappers/sqlite3.nim $libdir/wrappers/sqlite3.nim || exit 1
  chmod 644 $libdir/wrappers/sqlite3.nim
  cp lib/wrappers/tcl.nim $libdir/wrappers/tcl.nim || exit 1
  chmod 644 $libdir/wrappers/tcl.nim
  cp lib/wrappers/tinyc.nim $libdir/wrappers/tinyc.nim || exit 1
  chmod 644 $libdir/wrappers/tinyc.nim
  cp lib/wrappers/tre.nim $libdir/wrappers/tre.nim || exit 1
  chmod 644 $libdir/wrappers/tre.nim
  cp lib/wrappers/zmq.nim $libdir/wrappers/zmq.nim || exit 1
  chmod 644 $libdir/wrappers/zmq.nim
  cp lib/wrappers/cairo/cairo.nim $libdir/wrappers/cairo/cairo.nim || exit 1
  chmod 644 $libdir/wrappers/cairo/cairo.nim
  cp lib/wrappers/cairo/cairoft.nim $libdir/wrappers/cairo/cairoft.nim || exit 1
  chmod 644 $libdir/wrappers/cairo/cairoft.nim
  cp lib/wrappers/cairo/cairowin32.nim $libdir/wrappers/cairo/cairowin32.nim || exit 1
  chmod 644 $libdir/wrappers/cairo/cairowin32.nim
  cp lib/wrappers/cairo/cairoxlib.nim $libdir/wrappers/cairo/cairoxlib.nim || exit 1
  chmod 644 $libdir/wrappers/cairo/cairoxlib.nim
  cp lib/wrappers/gtk/atk.nim $libdir/wrappers/gtk/atk.nim || exit 1
  chmod 644 $libdir/wrappers/gtk/atk.nim
  cp lib/wrappers/gtk/gdk2.nim $libdir/wrappers/gtk/gdk2.nim || exit 1
  chmod 644 $libdir/wrappers/gtk/gdk2.nim
  cp lib/wrappers/gtk/gdk2pixbuf.nim $libdir/wrappers/gtk/gdk2pixbuf.nim || exit 1
  chmod 644 $libdir/wrappers/gtk/gdk2pixbuf.nim
  cp lib/wrappers/gtk/gdkglext.nim $libdir/wrappers/gtk/gdkglext.nim || exit 1
  chmod 644 $libdir/wrappers/gtk/gdkglext.nim
  cp lib/wrappers/gtk/glib2.nim $libdir/wrappers/gtk/glib2.nim || exit 1
  chmod 644 $libdir/wrappers/gtk/glib2.nim
  cp lib/wrappers/gtk/gtk2.nim $libdir/wrappers/gtk/gtk2.nim || exit 1
  chmod 644 $libdir/wrappers/gtk/gtk2.nim
  cp lib/wrappers/gtk/gtkglext.nim $libdir/wrappers/gtk/gtkglext.nim || exit 1
  chmod 644 $libdir/wrappers/gtk/gtkglext.nim
  cp lib/wrappers/gtk/gtkhtml.nim $libdir/wrappers/gtk/gtkhtml.nim || exit 1
  chmod 644 $libdir/wrappers/gtk/gtkhtml.nim
  cp lib/wrappers/gtk/libglade2.nim $libdir/wrappers/gtk/libglade2.nim || exit 1
  chmod 644 $libdir/wrappers/gtk/libglade2.nim
  cp lib/wrappers/gtk/pango.nim $libdir/wrappers/gtk/pango.nim || exit 1
  chmod 644 $libdir/wrappers/gtk/pango.nim
  cp lib/wrappers/gtk/pangoutils.nim $libdir/wrappers/gtk/pangoutils.nim || exit 1
  chmod 644 $libdir/wrappers/gtk/pangoutils.nim
  cp lib/wrappers/lua/lauxlib.nim $libdir/wrappers/lua/lauxlib.nim || exit 1
  chmod 644 $libdir/wrappers/lua/lauxlib.nim
  cp lib/wrappers/lua/lua.nim $libdir/wrappers/lua/lua.nim || exit 1
  chmod 644 $libdir/wrappers/lua/lua.nim
  cp lib/wrappers/lua/lualib.nim $libdir/wrappers/lua/lualib.nim || exit 1
  chmod 644 $libdir/wrappers/lua/lualib.nim
  cp lib/wrappers/opengl/gl.nim $libdir/wrappers/opengl/gl.nim || exit 1
  chmod 644 $libdir/wrappers/opengl/gl.nim
  cp lib/wrappers/opengl/glext.nim $libdir/wrappers/opengl/glext.nim || exit 1
  chmod 644 $libdir/wrappers/opengl/glext.nim
  cp lib/wrappers/opengl/glu.nim $libdir/wrappers/opengl/glu.nim || exit 1
  chmod 644 $libdir/wrappers/opengl/glu.nim
  cp lib/wrappers/opengl/glut.nim $libdir/wrappers/opengl/glut.nim || exit 1
  chmod 644 $libdir/wrappers/opengl/glut.nim
  cp lib/wrappers/opengl/glx.nim $libdir/wrappers/opengl/glx.nim || exit 1
  chmod 644 $libdir/wrappers/opengl/glx.nim
  cp lib/wrappers/opengl/wingl.nim $libdir/wrappers/opengl/wingl.nim || exit 1
  chmod 644 $libdir/wrappers/opengl/wingl.nim
  cp lib/wrappers/sdl/sdl.nim $libdir/wrappers/sdl/sdl.nim || exit 1
  chmod 644 $libdir/wrappers/sdl/sdl.nim
  cp lib/wrappers/sdl/sdl_gfx.nim $libdir/wrappers/sdl/sdl_gfx.nim || exit 1
  chmod 644 $libdir/wrappers/sdl/sdl_gfx.nim
  cp lib/wrappers/sdl/sdl_image.nim $libdir/wrappers/sdl/sdl_image.nim || exit 1
  chmod 644 $libdir/wrappers/sdl/sdl_image.nim
  cp lib/wrappers/sdl/sdl_mixer.nim $libdir/wrappers/sdl/sdl_mixer.nim || exit 1
  chmod 644 $libdir/wrappers/sdl/sdl_mixer.nim
  cp lib/wrappers/sdl/sdl_mixer_nosmpeg.nim $libdir/wrappers/sdl/sdl_mixer_nosmpeg.nim || exit 1
  chmod 644 $libdir/wrappers/sdl/sdl_mixer_nosmpeg.nim
  cp lib/wrappers/sdl/sdl_net.nim $libdir/wrappers/sdl/sdl_net.nim || exit 1
  chmod 644 $libdir/wrappers/sdl/sdl_net.nim
  cp lib/wrappers/sdl/sdl_ttf.nim $libdir/wrappers/sdl/sdl_ttf.nim || exit 1
  chmod 644 $libdir/wrappers/sdl/sdl_ttf.nim
  cp lib/wrappers/sdl/smpeg.nim $libdir/wrappers/sdl/smpeg.nim || exit 1
  chmod 644 $libdir/wrappers/sdl/smpeg.nim
  cp lib/wrappers/x11/cursorfont.nim $libdir/wrappers/x11/cursorfont.nim || exit 1
  chmod 644 $libdir/wrappers/x11/cursorfont.nim
  cp lib/wrappers/x11/keysym.nim $libdir/wrappers/x11/keysym.nim || exit 1
  chmod 644 $libdir/wrappers/x11/keysym.nim
  cp lib/wrappers/x11/x.nim $libdir/wrappers/x11/x.nim || exit 1
  chmod 644 $libdir/wrappers/x11/x.nim
  cp lib/wrappers/x11/xatom.nim $libdir/wrappers/x11/xatom.nim || exit 1
  chmod 644 $libdir/wrappers/x11/xatom.nim
  cp lib/wrappers/x11/xcms.nim $libdir/wrappers/x11/xcms.nim || exit 1
  chmod 644 $libdir/wrappers/x11/xcms.nim
  cp lib/wrappers/x11/xf86dga.nim $libdir/wrappers/x11/xf86dga.nim || exit 1
  chmod 644 $libdir/wrappers/x11/xf86dga.nim
  cp lib/wrappers/x11/xf86vmode.nim $libdir/wrappers/x11/xf86vmode.nim || exit 1
  chmod 644 $libdir/wrappers/x11/xf86vmode.nim
  cp lib/wrappers/x11/xi.nim $libdir/wrappers/x11/xi.nim || exit 1
  chmod 644 $libdir/wrappers/x11/xi.nim
  cp lib/wrappers/x11/xinerama.nim $libdir/wrappers/x11/xinerama.nim || exit 1
  chmod 644 $libdir/wrappers/x11/xinerama.nim
  cp lib/wrappers/x11/xkb.nim $libdir/wrappers/x11/xkb.nim || exit 1
  chmod 644 $libdir/wrappers/x11/xkb.nim
  cp lib/wrappers/x11/xkblib.nim $libdir/wrappers/x11/xkblib.nim || exit 1
  chmod 644 $libdir/wrappers/x11/xkblib.nim
  cp lib/wrappers/x11/xlib.nim $libdir/wrappers/x11/xlib.nim || exit 1
  chmod 644 $libdir/wrappers/x11/xlib.nim
  cp lib/wrappers/x11/xrandr.nim $libdir/wrappers/x11/xrandr.nim || exit 1
  chmod 644 $libdir/wrappers/x11/xrandr.nim
  cp lib/wrappers/x11/xrender.nim $libdir/wrappers/x11/xrender.nim || exit 1
  chmod 644 $libdir/wrappers/x11/xrender.nim
  cp lib/wrappers/x11/xresource.nim $libdir/wrappers/x11/xresource.nim || exit 1
  chmod 644 $libdir/wrappers/x11/xresource.nim
  cp lib/wrappers/x11/xshm.nim $libdir/wrappers/x11/xshm.nim || exit 1
  chmod 644 $libdir/wrappers/x11/xshm.nim
  cp lib/wrappers/x11/xutil.nim $libdir/wrappers/x11/xutil.nim || exit 1
  chmod 644 $libdir/wrappers/x11/xutil.nim
  cp lib/wrappers/x11/xv.nim $libdir/wrappers/x11/xv.nim || exit 1
  chmod 644 $libdir/wrappers/x11/xv.nim
  cp lib/wrappers/x11/xvlib.nim $libdir/wrappers/x11/xvlib.nim || exit 1
  chmod 644 $libdir/wrappers/x11/xvlib.nim
  cp lib/wrappers/zip/libzip.nim $libdir/wrappers/zip/libzip.nim || exit 1
  chmod 644 $libdir/wrappers/zip/libzip.nim
  cp lib/wrappers/zip/zlib.nim $libdir/wrappers/zip/zlib.nim || exit 1
  chmod 644 $libdir/wrappers/zip/zlib.nim
  cp lib/wrappers/zip/zzip.nim $libdir/wrappers/zip/zzip.nim || exit 1
  chmod 644 $libdir/wrappers/zip/zzip.nim
  cp lib/wrappers/zip/libzip_all.c $libdir/wrappers/zip/libzip_all.c || exit 1
  chmod 644 $libdir/wrappers/zip/libzip_all.c
  cp lib/windows/mmsystem.nim $libdir/windows/mmsystem.nim || exit 1
  chmod 644 $libdir/windows/mmsystem.nim
  cp lib/windows/nb30.nim $libdir/windows/nb30.nim || exit 1
  chmod 644 $libdir/windows/nb30.nim
  cp lib/windows/ole2.nim $libdir/windows/ole2.nim || exit 1
  chmod 644 $libdir/windows/ole2.nim
  cp lib/windows/psapi.nim $libdir/windows/psapi.nim || exit 1
  chmod 644 $libdir/windows/psapi.nim
  cp lib/windows/shellapi.nim $libdir/windows/shellapi.nim || exit 1
  chmod 644 $libdir/windows/shellapi.nim
  cp lib/windows/shfolder.nim $libdir/windows/shfolder.nim || exit 1
  chmod 644 $libdir/windows/shfolder.nim
  cp lib/windows/windows.nim $libdir/windows/windows.nim || exit 1
  chmod 644 $libdir/windows/windows.nim
  cp lib/windows/winlean.nim $libdir/windows/winlean.nim || exit 1
  chmod 644 $libdir/windows/winlean.nim
  cp lib/posix/posix.nim $libdir/posix/posix.nim || exit 1
  chmod 644 $libdir/posix/posix.nim
  cp lib/ecmas/dom.nim $libdir/ecmas/dom.nim || exit 1
  chmod 644 $libdir/ecmas/dom.nim
  
  echo "installation successful"
else
  echo "Nimrod installation script"
  echo "Usage: [sudo] sh install.sh DIR"
  echo "Where DIR may be:"
  echo "  /usr/bin"
  echo "  /usr/local/bin"
  echo "  /opt"
  echo "  <some other dir> (treated like '/opt')"
  echo "To deinstall, use the command:"
  echo "sh deinstall.sh DIR"
  exit 1
fi

