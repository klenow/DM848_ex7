include "serviceInterface.iol"
include "console.iol"

outputPort B
{
		Location: "socket://35.228.4.59:31230"
        Protocol:sodep
        Interfaces:MatchServiceInterface
}




main
{	
	test.text = "hej";
	test.pattern = "[a-z]*";
	handle@B(test)(res);
	println@Console("result is " + res)()
}