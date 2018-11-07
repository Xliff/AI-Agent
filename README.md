This software is an AI agent which you can ask multiple things depending on
the agent type e.g. there is a MusicAgent class which let's you fill it with
music links, send it somewhere then ask (the system should eventually be 
networked.)

"ask about" is the main syntax for getting information out of your agents.
It is used in the dispatch routines which is included with every agent.

Of course you can make your own agents with the Agent class prototype.
There is a default of accepting other agents (which parse others), the 
call is dispatch("agent", {"agent" => Agent instance}).

Note that if you deploy ROMs or binary code with your agent, that this might
be illegal depending on the software inside your incoming or outgoing agent.
Therefor always use the "list *text*" message in your Agent so you know
what you can deploy on your disk. There are legal Nintendo ROMs made with
kits that support Nintendo, which you can deploy as usual. M68000 microcode
is another example which can also be deployed if you have the rights to it.
Agents never deploy software themselves unless you ask them, Agent derived
instances are good, but think twice when downloading/deploying copyrighted
software with them.
