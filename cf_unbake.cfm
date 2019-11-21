<cfset cakestring = #FORM.stringcontent# />
<cfset headerposition = FindNoCase("|",cakestring) />
<cfset contentposition = Len(cakestring) - headerposition />
<cfset header = Left(#cakestring#, #headerposition# - 1) />
<cfset content = Right(#cakestring#, #contentposition#) />
<cfset cakearraynew = [] />
<cfset startpos = 1 />
<cfloop list="#header#" index="i" item="j">
    <cfset endpos = #j# />
    <cfset temparrayvalue = mid(#content#, #startpos#, #endpos#) />
    <cfset ArrayAppend(#cakearraynew#, #temparrayvalue#) />
    <cfset temparrayvalue = "" />
    <cfset startpos = startpos + #j# />
</cfloop>
<cfdump var="#cakearraynew#" />