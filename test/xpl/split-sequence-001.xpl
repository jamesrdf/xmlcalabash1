<p:pipeline xmlns:t="http://xproc.org/ns/testsuite" xmlns:p="http://www.w3.org/ns/xproc" xmlns:c="http://www.w3.org/ns/xproc-step" xmlns:err="http://www.w3.org/ns/xproc-error" version="1.0" name="pipeline">

<p:identity name="identity">
  <p:input port="source">
    <p:pipe step="pipeline" port="source"/>
    <p:pipe step="pipeline" port="source"/>
    <p:pipe step="pipeline" port="source"/>
    <p:pipe step="pipeline" port="source"/>
  </p:input>
</p:identity>

<p:split-sequence name="splitseq" test="position() &lt;= 2"/>

<p:count name="count"/>

</p:pipeline>