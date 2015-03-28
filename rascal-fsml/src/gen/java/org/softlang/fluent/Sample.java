// BEGIN ...
package org.softlang.fluent;

import static org.softlang.fluent.FsmlImpl.fsm;

public class Sample {
	
	public static final
// END ...
	Fsml sample =
		fsm()
			.state("locked")
				.transition("ticket", "collect", "unlocked")
				.transition("pass", "alarm", "exception")
				
			.state("unlocked")
				.transition("ticket", "eject", null)
				.transition("pass", null, "locked")
				
			.state("exception")
				.transition("ticket", "eject", null)
				.transition("pass", null, null)
				.transition("mute", null, null)
				.transition("release", null, "locked")
				
			;
// BEGIN ...
}
// END ...