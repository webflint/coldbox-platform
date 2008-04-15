<!-----------------------------------------------------------------------
********************************************************************************
Copyright 2005-2007 ColdBox Framework by Luis Majano and Ortus Solutions, Corp
www.coldboxframework.com | www.luismajano.com | www.ortussolutions.com
********************************************************************************

Author     :	Sana Ullah
Date        :	March 05 2008
Description :
	This proxy is an inherited coldbox remote proxy used for enabling
	coldbox as a model framework.
----------------------------------------------------------------------->
<cfcomponent name="ehAjax" extends="coldbox.system.eventhandler" output="false">
	
	<!--- This init format is mandatory if you are writing init code else is optional, include the super.init(arguments.controller). ---> 
	<cffunction name="init" access="public" returntype="any" output="false">
		<cfargument name="controller" type="any">
		<cfset super.init(arguments.controller)>
		<!--- Any constructor code here --->
		<cfreturn this>
	</cffunction>

	<cffunction name="dspHome" access="public" returntype="void" output="false">
		<cfargument name="Event" type="coldbox.system.beans.requestContext">
		<!--- Do Your Logic Here to prepare a view --->
		<cfset Event.setValue("welcomeMessage","Welcome to ColdBox!")>	
		<!--- Set the View To Display, after Logic --->
		<cfset Event.setView("ajax/vwAjaxHome")>
	</cffunction>
	
	<!--- CFGRID example --->
	<cffunction name="dspGrid" access="public" returntype="any" output="false">
		<cfargument name="Event" type="coldbox.system.beans.requestContext">
		<!--- Do Your Logic Here to prepare a view --->
		<cfset Event.setValue("welcomeMessage","Welcome to ColdBox and CF8 CFGRID!")>
		<!--- Set the View To Display, after Logic --->
		<cfset Event.setView("ajax/vwCFGrid")>
	</cffunction>
	
	<!--- CFINPUT Auto Suggest example --->
	<cffunction name="dspCFInput" access="public" returntype="any" output="false">
		<cfargument name="Event" type="coldbox.system.beans.requestContext">
		<!--- Do Your Logic Here to prepare a view --->
		<cfset Event.setValue("welcomeMessage","Welcome to ColdBox and CF8 CFINPUT Aut-Suggest!")>
		<!--- Set the View To Display, after Logic --->
		<cfset Event.setView("ajax/vwCFinputAutoSuggest")>
	</cffunction>
	
	<!--- CFAJAXPROXY feature... using client side javascript  --->
	<cffunction name="dspAjaxProxy" access="public" returntype="void" output="false">
		<cfargument name="Event" type="coldbox.system.beans.requestContext">
		
		<!--- Do Your Logic Here to prepare a view --->
		<cfset Event.setValue("welcomeMessage","Welcome to ColdBox and CF8 Ajax Proxy feature!")>	
		<!--- Set the View To Display, after Logic --->
		<cfset Event.setView("ajax/vwCFAjaxProxy")>
	</cffunction>
	
</cfcomponent>
