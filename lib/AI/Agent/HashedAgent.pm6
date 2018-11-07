unit module AI::Agent;

class HashedAgent is Actor 
{	
	has $.status;
	has &!callback;
	has agent @!dependencies;
	has Bool $.done;
	
	method BUILD($stat) {
		$status = $stat;
		self.add-depedency(self.ask);
		self.add-depedency(self.agent);
	}

	method add-dependency(Agent $dependency) {
    		push @!dependencies, $dependency;
	}

	method ask(%args) {
		return "You can ask me the following :\n
			agent, dispatch args={\"agent\", Agent instance\n"};
			
	}

	### agent dispatched, overload for other agent parsing
	method dispatch_agent($agent) {
		return &$agent.dispatch;
	} 

	### Look if an agent is dispatched, note the "agent" key for agents
	method agent(%args) {
		%args{"agent"}.dispatch_agent(self);
	}

	### main call to the actor-agent

	methodd dispatch($message, %optargs) {
    		unless $!done {
        		.dispatch($message, %optarsg) for @!dependencies;
        		&!callback();
        		$!done = True;
    		}
	}

}
