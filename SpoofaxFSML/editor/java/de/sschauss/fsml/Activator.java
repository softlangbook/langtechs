package de.sschauss.fsml;

import org.eclipse.imp.preferences.PreferencesService;
import org.eclipse.imp.runtime.PluginBase;
import org.osgi.framework.BundleContext;

public class Activator extends PluginBase 
{ 
  public static final String kPluginID = "FSML";

  public static final String kLanguageName = "FSML";

  protected static Activator sPlugin;

  public static Activator getInstance()
  { 
    if(sPlugin == null)
      return new Activator();
    return sPlugin;
  }

  public Activator () 
  { 
    super();
    sPlugin = this;
  }

  @Override public void start(BundleContext context) throws Exception
  { 
    super.start(context);
  }

  @Override public String getID()
  { 
    return kPluginID;
  }

  @Override public String getLanguageID()
  { 
    return kLanguageName;
  }

  protected static PreferencesService preferencesService = null;
}