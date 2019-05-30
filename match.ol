include "console.iol"
include "serviceInterface.iol"

execution{ 
	concurrent
}

interface matchInterface {
	RequestResponse:match(MatchType)(bool)
}

outputPort Match {
	Interfaces: matchInterface
}

embedded {
	Java: "Match" in Match
}

inputPort listenPort {
	Location: "socket://localhost:8080"
    Protocol:http
    Interfaces:MatchServiceInterface
}

// a request is like localhost:8080/handle?text=hej&pattern=[a-z]*

main
{

	handle(req)(res)
	{
		println@Console("request got")();
		match@Match(req)(res2);
		res = res2
	}
}