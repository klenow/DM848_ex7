include "console.iol"

type MatchType: void {
	.text: string
	.pattern: string
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

main
{
	test.text = "hej";
	test.pattern = "[a-z]*";

	
	println@Console(test)();
	match@Match(test)(res);
	println@Console(res)()
}