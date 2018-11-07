type MatchType: void {
	.text: string
	.pattern: string
}

interface MatchServiceInterface
{
        RequestResponse:handle(MatchType)(bool)
}