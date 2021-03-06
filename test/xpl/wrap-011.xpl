<p:pipeline xmlns:t="http://xproc.org/ns/testsuite" xmlns:p="http://www.w3.org/ns/xproc" xmlns:c="http://www.w3.org/ns/xproc-step" xmlns:err="http://www.w3.org/ns/xproc-error" version="1.0">
      
      <p:wrap match="element" wrapper="wrapper" wrapper-namespace="http://baz.com" wrapper-prefix="baz"/>
      
      <p:escape-markup/>

      <p:choose>
        <p:when test="contains(/document, '&lt;baz:wrapper') and contains(/document, 'xmlns:baz=&#34;http://baz.com&#34;')">
          <p:identity>
            <p:input port="source">
              <p:inline>
                <success/>
              </p:inline>
            </p:input>
          </p:identity>
        </p:when>
        <p:otherwise>
          <p:identity>
            <p:input port="source">
              <p:inline>
                <failure/>
              </p:inline>
            </p:input>
          </p:identity>
        </p:otherwise>
      </p:choose>


    </p:pipeline>