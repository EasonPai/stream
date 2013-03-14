//Auto-generated by RSP Compiler
//Source: example/hello-rsp/webapp/helloView.rsp.html
part of hello_rsp;

/** Template, helloView, for rendering the view. */
void helloView(HttpConnect connect) { //2
  var _cxs = new List<HttpConnect>(), request = connect.request, response = connect.response, _v_;

  if (!connect.isIncluded)
    response.headers.contentType = new ContentType.fromString("""text/html; charset=utf-8""");

  response.addString("""

<!DOCTYPE html>
<html>
  <head>
    <title>Stream: Hello RSP</title>
    <link href="theme.css" rel="stylesheet" type="text/css" />
  </head>
  <body>
    <h1>Stream: Hello RSP</h1>
    <p>Now is """); //#2

  _v_ = new DateTime.now(); //#11
  if (_v_ != null) response.addString("$_v_");

  response.addString("""
.</p>
    <p>This page is served by Rikulo Stream """); //#11

  _v_ = connect.server.version; //#12
  if (_v_ != null) response.addString("$_v_");

  response.addString("""
.</p>
    <p>Please refer to
  <a href="https://github.com/rikulo/stream/tree/master/example/hello-rsp">Github</a> for how it is implemented.</a>
  </body>
</html>
"""); //#12

  connect.close();
}
