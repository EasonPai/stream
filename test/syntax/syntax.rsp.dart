//Auto-generated by RSP Compiler
//Source: test/syntax/syntax.rsp.html
library syntax_rsp;

import 'dart:io';
import 'package:stream/stream.dart';
import 'dart:collection' show LinkedHashMap;
import 'dart:async';

/** Template, syntax, for rendering the view. */
void syntax(HttpConnect connect, {foo, bool c:false}) { //5
  var _cxs = new List<HttpConnect>(), request = connect.request, response = connect.response, _v_;

  response.headers.contentType = new ContentType.fromString("""${foo.contentType}""");

  response.headers.add("age", """129"""); //header#8

  response.headers.add("accept-ranges", foo.acceptRanges); //header#8

  response.addString("""
<!DOCTYPE html>
<html>
  <head>
    <title>"""); //#5

  _v_ = "$foo.name [${foo.title}]"; //#8
  if (_v_ != null) response.addString("$_v_");

  //#8
  response.addString("""
</title>
  </head>
  <body>
    <p>This is a test with """);
  response.addString('"""');
  response.addString("""
.
    <p>Another expresion: """);

  _v_ = foo.description; //#12
  if (_v_ != null) response.addString("$_v_");

  response.addString("""

    <p>An empty expression: """); //#12

  response.addString("""

    <p>This is not a tag: [foo ], [another and [/none].
    <ul>
"""); //#14

  for (var user in foo.friends) { //for#17

    response.addString("""      <li>"""); //#18

    _v_ = user.name; //#18
    if (_v_ != null) response.addString("$_v_");

    response.addString("""

"""); //#18

    if (user.isCustomer) { //if#19

      response.addString("""
      <i>!important!</i>
"""); //#20
    } //if

    while (user.hasMore()) { //while#22

      response.addString("""        """); //#23

      _v_ = user.showMore(); //#23
      if (_v_ != null) response.addString("$_v_");

      response.addString("""

"""); //#23
    } //while

    response.addString("""
      </li>
"""); //#25
  } //for

  response.addString("""
    </ul>

"""); //#27

  for (var fruit in ["apple", "orange"]) { //for#29
  } //for

  response.addString("""

"""); //#31

  if (foo.isCustomer) { //if#32

    response.addString("""
      *Custmer*
"""); //#33

  } else if (c) { //else#34

    connect.forward("""/x/y/z"""); //#35
    return;

  } else if (foo.isEmployee) { //else#36

    response.addString("""
      *Employee*
"""); //#37

    syntax(connect, c: true, foo: """abc"""); //#38
    return;

  } else { //else#39

    response.addString("""
      *Unknown* [/if] 
"""); //#40
  } //if

  response.addString("""

"""); //#42

  var whatever = new StringBuffer(); _cxs.add(connect); //var#43
  connect = new HttpConnect.buffer(connect, whatever); response = connect.response;

  response.addString("""
    define a variable
"""); //#44

  for (var fruit in ["apple", "orange"]) { //for#45

    response.addString("""        """); //#46

    _v_ = fruit; //#46
    if (_v_ != null) response.addString("$_v_");

    response.addString("""

"""); //#46
  } //for

  connect = _cxs.removeLast(); response = connect.response;
  whatever = whatever.toString();

  response.addString("""

"""); //#49

  connect.include("""/abc""", success: () { //#50

    var _0 = new StringBuffer(); _cxs.add(connect); //var#52
    connect = new HttpConnect.buffer(connect, _0); response = connect.response;

    response.addString("""
      The content for foo
"""); //#53

    connect = _cxs.removeLast(); response = connect.response;

    syntax(connect.server.connectForInclusion(connect, success: () { //#51

      response.addString("""

"""); //#56

      if (foo.isMeaningful) { //if#57

        response.addString("""
    something is meaningful
"""); //#58
      } //if

      response.addString("""
  </body>
</html>

"""); //#60

      response.addString("""

"""); //#64

      connect.close();
    }), c: true, foo: _0.toString()); //end-of-include
  }); //end-of-include
}
