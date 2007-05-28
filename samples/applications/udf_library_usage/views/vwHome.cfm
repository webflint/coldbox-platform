<cfoutput>  <table width="550" align="center" cellpadding="10" cellspacing="0" style="border-bottom:2px solid ##ddd;border-right:2px solid ##ddd; border-left:1px solid ##eaeaea; border-top: 1px solid ##eaeaea;background: ##f5f5f5">    <tr>      <td style="font-family:Georgia, 'Times New Roman', Times, serif; font-size:25px"><strong>UDFLibraryFile </strong></td>    </tr>    <tr>      <td><p>This application shows how to use UDF Libraries on ColdBox.  The first thing you have to see is that the config.xml has        a Setting called: UDFLibraryFile, which you have control over.                                      </p>      <pre>&lt;Setting name=&quot;UDFLibraryFile&quot; value=&quot;includes/udf.cfm&quot; /&gt; </pre>      <p>As for the value field, you can use just the filename and ColdBox will look for the file in that directory. If it cannot find it, it will treat the value as a relative value, expands its path and tries to validate.&nbsp; That is why you can use a CFMX Mapping or a relative path.</p>      <p><strong>CFMX Mapping:</strong></p>      <pre>&lt;Setting name=&quot;UDFLibraryFile&quot; value=&quot;ColdBoxSamples/applications/blogcfc/includes/udf.cfm&quot; /&gt; </pre>      <p><strong>Relative Path From The App Root:</strong></p>      <pre>&lt;Setting name=&quot;UDFLibraryFile&quot; value=&quot;../myparentdirectory/udf.cfm&quot; /&gt;</pre>      <p>You can also see in the debuggin information that the UDF has loaded: UDF Library Loading...  </p></td>    </tr>     <tr>      <td style="font-family:Georgia, 'Times New Roman', Times, serif; font-size:25px"><strong>Use the UDF Library </strong></td>    </tr>	 <!--- ColdBox messages box if errors --->    <cfif not getPlugin("messagebox").isEmpty()>      <tr>        <td>#getPlugin("messagebox").renderit()#</td>      </tr>    </cfif>     <tr>       <td>	   <form id="form1" name="form1" method="post" action="#cgi.SCRIPT_NAME#">	   <input type="hidden" name="event" value="#Event.getValue("xehUDFValidation")#"  />         Validate Email:          <input type="text" name="email" />              <input type="submit" name="Submit" value="Validate" />       </form>       </td>     </tr>  </table></cfoutput><h3 >&nbsp;</h3><p>&nbsp;</p><p>&nbsp;</p>