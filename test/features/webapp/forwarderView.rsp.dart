//Auto-generated by RSP Compiler
//Source: test/features/forwarderView.rsp.html
part of features;

/** Template, forwarderView, for rendering the view. */
Future forwarderView(HttpConnect connect) { //#3
  var _cs_ = new List<HttpConnect>(), request = connect.request, response = connect.response;

  if (!connect.isIncluded)
    response.headers.contentType = new ContentType.fromString("""text/html; charset=utf-8""");

  if (true) { //if#3

    return connect.forward("""/forward"""); //#4
  } //if

  return $nnf();
}