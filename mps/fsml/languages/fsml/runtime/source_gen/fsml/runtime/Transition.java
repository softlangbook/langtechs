package fsml.runtime;

/*Generated by MPS */


public class Transition {
  private String source;
  private String event;
  private String action;
  private String target;
  public Transition(String source, String event, String action, String target) {
    this.source = source;
    this.event = event;
    this.action = action;
    this.target = target;
  }
  public String getSource() {
    return source;
  }
  public String getEvent() {
    return event;
  }
  public String getAction() {
    return action;
  }
  public String getTarget() {
    return target;
  }

}
