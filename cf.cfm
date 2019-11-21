<cfset arrayvals = "#ListToArray(FORM.input_arrayvals)#" />

<cfset stringheader = "" />
<cfset stringcontent = "" />
<cfloop array="#arrayvals#" index="i">
   <cfset stringheader = listappend(stringheader,#Len(i)#) />
   <cfset stringcontent = stringcontent & #i# />
</cfloop>
<cfset finalstring = #stringheader# & "|" & #stringcontent# />
<h4>Coldfusion (tag based)</h4>
<strong>ColdCake:</strong><div id="bakedcake"><cfdump var="#finalstring#" /></div>
<br />
<strong>Cake Header:</strong>
<div id="cakeheader"><cfoutput>#stringheader#</cfoutput></div>
<br />
<strong>Cake Content</strong>
<div id="cakecontent"><cfoutput>#stringcontent#</cfoutput></div>


<form>
<input type="hidden" name="stringcontent" id="stringcontent" value="<cfoutput>#EncodeForHTML(finalstring)#</cfoutput>" />    
<button ic-post-to="cf_unbake.cfm" ic-target="#viewport-bottom" type="submit" id="btn_unbake" name="btn_unbake" class="btn btn-danger" type="button">Unbake the cake</button>
</form>