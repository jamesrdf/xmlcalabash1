<p:declare-step xmlns:t="http://xproc.org/ns/testsuite" xmlns:p="http://www.w3.org/ns/xproc" xmlns:c="http://www.w3.org/ns/xproc-step" xmlns:err="http://www.w3.org/ns/xproc-error" version="1.0">
      <p:http-request>
        <p:input port="source">
          <p:inline>
            <c:request method="POST" href="http://whatever">
              <c:body content-type="image/svg+xml">D3D3ER<?foo bar?></c:body>
            </c:request>
          </p:inline>
        </p:input>
      </p:http-request>
      <p:sink/>
    </p:declare-step>