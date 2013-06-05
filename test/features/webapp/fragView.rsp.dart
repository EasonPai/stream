//Auto-generated by RSP Compiler
//Source: ../fragView.rsp.html
part of features;

/** Template, fragView, for rendering the view. */
Future fragView(HttpConnect connect, {Map infos: const {}, header, footer}) { //#2
  var _t0_, _cs_ = new List<HttpConnect>();
  HttpRequest request = connect.request;
  HttpResponse response = connect.response;

  if (!connect.isIncluded)
    response.headers.contentType = ContentType.parse("""text/html; charset=utf-8""");

  if (header != null) { //if#2

    response.write(Rsp.nnx(header, encode: 'none')); //#3


    response.write("""

"""); //#3
  } //if

  response.write("""
<ul>
  <li>This is a fragment and generated dynamically</li>
"""); //#5

  for (var type in infos.keys) { //for#7

    response.write("""    <li>"""); //#8

    response.write(Rsp.nnx(type)); //#8


    response.write("""

      <ol>
"""); //#8

    for (var name in infos[type]) { //for#10

      response.write("""        <li>"""); //#11

      response.write(Rsp.nnx(name)); //#11


      response.write("""
</li>
"""); //#11
    } //for

    response.write("""
      </ol>
    </li>
"""); //#13
  } //for

  response.write("""  <li>Browser is """); //#16

  response.write(Rsp.nnx(connect.browser)); //#16


  response.write("""
</li>
</ul>
"""); //#16

  if (footer != null) { //if#18

    response.write("""  """); //#19

    response.write(Rsp.nnx(footer, encode: 'none')); //#19


    response.write("""

"""); //#19
  } //if

  return Rsp.nnf();
}
