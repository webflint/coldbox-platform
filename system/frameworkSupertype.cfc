<!-----------------------------------------------------------------------
		<cfreturn variables.controller/>
	</cffunction>
	<cffunction name="setcontroller" access="private" output="false" returntype="void" hint="Set controller">
		<cfargument name="controller" type="any" required="true" hint="coldbox.system.controller"/>
		<cfset variables.controller = arguments.controller/>
	</cffunction>
	</cffunction>