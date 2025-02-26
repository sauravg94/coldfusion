<cfscript>
    a = 3;
    b=2;
	writeOutput("+=<br/>");
    c= (a+=b)<4;
	writeOutput(a&" "&b&" "&c);
	writeOutput("<br>");
	c = ((a+=b)-3);
	writeOutput(a&" "&b&" "&c);
	writeOutput("<br/>" & "-=<br/>");
	c= (a-=b)<4;
	writeOutput(a&" "&b&" "&c);
	writeOutput("<br>");
	c = ((a-=b)+3);
	writeOutput(a&" "&b&" "&c);
	writeOutput("<br/>" & "*=<br/>");
	c= (a*=b)<4;
	writeOutput(a&" "&b&" "&c);
	writeOutput("<br>");
	c = ((a*=b)-3);
	writeOutput(a&" "&b&" "&c);
	writeOutput("<br/>" & "/=<br/>");
	c= (a/=b)<4;
	writeOutput(a&" "&b&" "&c);
	writeOutput("<br>");
	c = ((a/=b)-3);
	writeOutput(a&" "&b&" "&c);
</cfscript>