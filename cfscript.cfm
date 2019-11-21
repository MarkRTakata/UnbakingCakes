<cfscript>
    function CreateArrayFromFormList(){
        arrayvals = ""; 
        stringheader = "";
        stringcontent = "";
        finalstring = "";
        arrayvals = FORM.input_arrayvals.ListToArray(); 
        arrayvals.each(function(key,value){
            stringheader = stringheader.listAppend(#key.len()#);
            stringcontent = stringcontent & #key#;
        });
        finalstring = stringheader & "|" & stringcontent;
    }
   CreateArrayFromFormList();
</cfscript>
<h4>Coldfusion (script based)</h4>
<strong>CFScriptCake:</strong>
<cfscript>
    writeOutput("<div id='bakedcake'>" & #finalstring# & "</div>");
</cfscript>
<br />
<strong>Cake Header:</strong>
<cfscript>
    writeOutput("<div id='cakeheader'>" & #stringheader# & "</div>");
</cfscript>
<br />
<strong>Cake Content</strong>
<cfscript>
    writeOutput("<div id='cakecontent'>" & #stringcontent# & "</div>");
</cfscript>
<form>
<cfscript>
    writeOutput("<input type='hidden' name='stringcontent' id='stringcontent' value='" & #finalstring# & "' />");
</cfscript>
<button ic-post-to="cfscript_unbake.cfm" ic-target="#viewport-bottom" type="submit" id="btn_unbake" name="btn_unbake" class="btn btn-danger" type="button">Unbake the cake</button>
</form>