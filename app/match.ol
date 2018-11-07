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
    Protocol:sodep
    Interfaces:MatchServiceInterface
}

main
{

	handle(req)(res)
	{
		println@Console("request got")();
		match@Match(req)(res2);
		res = res2
	}
}