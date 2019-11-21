<cfscript>
    function unbakethecake(){
        cakestring = #FORM.stringcontent#;
        headerposition = cakestring.FindNoCase("|");
        contentposition = cakestring.len() - headerposition;
        header = cakestring.left(headerposition - 1);
        content =cakestring.right(contentposition);
        cakearraynew = [];
        startpos = 1;
        for(value in header){
            endpos = value;
            temparrayvalue = mid(content, startpos, endpos);
            cakearraynew.append(#temparrayvalue#);
            temparrayvalue = "";
            startpos = startpos + value;
        }
        
        WriteDump(cakearraynew);
    }
    unbakethecake();
</cfscript>