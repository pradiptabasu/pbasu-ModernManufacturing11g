package oracle.apps.scm.doo.common.soa.fault;



import com.collaxa.cube.engine.fp.BPELFaultRecoveryContextImpl;


import com.oracle.bpel.client.BPELFault;

import oracle.apps.fnd.applcore.log.AppsLogger;
import oracle.apps.fnd.applcore.log.AppsLoggerHelper;

import oracle.integration.platform.faultpolicy.IFaultRecoveryContext;
import oracle.integration.platform.faultpolicy.IFaultRecoveryJavaClass;

//import oracle.jbo.client.svc.ServiceFactory;

import oracle.xml.parser.v2.XMLElement;

import org.w3c.dom.Element;
import org.w3c.dom.Text;

public class DooCommonFaultHandler implements IFaultRecoveryJavaClass {
  
  public void handleRetrySuccess(IFaultRecoveryContext ctx) {
      try {
          BPELFaultRecoveryContextImpl bpelCtx =
              (BPELFaultRecoveryContextImpl)ctx;
          
          AppsLoggerHelper.setSupplementalAttribute(AppsLoggerHelper.COMPONENT_INSTANCE_ID_KEY,
                                                                          bpelCtx.getComponentInstanceId());
          AppsLoggerHelper.setSupplementalAttribute(AppsLoggerHelper.COMPONENT_NAME_KEY,
                                                                          bpelCtx.getComponentName());
          AppsLoggerHelper.setSupplementalAttribute(AppsLoggerHelper.COMPOSITE_INSTANCE_ID_KEY,
                                                                          bpelCtx.getCompositeInstanceId());
          AppsLoggerHelper.setSupplementalAttribute(AppsLoggerHelper.COMPOSITE_NAME_KEY,
                                                                          bpelCtx.getCompositeName());
          
            // Get the contents of the Sensor Log Vars: LOG_MODULE_ID, LOG_APP_SHORT_NAME, LOG_TOKEN_MAP, LOG_FAULT_MAP
            try {
                String logModuleID = "UNKNOWN";
                XMLElement logModuleIDX = (XMLElement) bpelCtx.getVariableData("LOG_MODULE_ID");
                if (logModuleIDX != null )
                    logModuleID = logModuleIDX.getTextContent();
                
                String logAppShortName = "FND";
                XMLElement logAppShortNameX = (XMLElement) bpelCtx.getVariableData("LOG_APP_SHORT_NAME");
                if ( logAppShortNameX != null ) 
                    logAppShortName = logAppShortNameX.getTextContent();
                
                String logTokenMap = null;
                XMLElement logTokenMapX = (XMLElement) bpelCtx.getVariableData("LOG_TOKEN_MAP");
                if ( logTokenMapX != null ) 
                    logTokenMap = logTokenMapX.getTextContent();
                
                String logFaultMap = null;
                XMLElement logFaultMapX = (XMLElement) bpelCtx.getVariableData("LOG_FAULT_MAP");
                if ( logFaultMapX != null ) 
                    logFaultMap = logFaultMapX.getTextContent();
                
                AppsLoggerHelper.setSupplementalAttribute(AppsLoggerHelper.APPS_COMPONENT_NAME, logAppShortName + ":" + logModuleID);
                AppsLoggerHelper.setSupplementalAttribute("LOG_TOKEN_MAP", logTokenMap);
                AppsLoggerHelper.setSupplementalAttribute("LOG_FAULT_MAP", logFaultMap);
                
            } catch ( NullPointerException nex ) {
              if ( AppsLogger.isEnabled(AppsLogger.WARNING) ) {
               AppsLogger.write(this, "handleRetrySuccess: NullPointerException getting BPEL Sensor Log Variable Values.", AppsLogger.WARNING);
              }
                ;
            } // try
            catch ( Throwable t ){    
                      if ( AppsLogger.isEnabled(AppsLogger.WARNING) ) {
                        AppsLogger.write(this,
                                         t.getMessage(), AppsLogger.WARNING);
                        
                      }
                ;
            }
    
          if ( AppsLogger.isEnabled(AppsLogger.WARNING) ) {
          AppsLogger.write(this,
                           "RETRY SUCCESS", AppsLogger.WARNING);
          }
  
      } catch ( Throwable t ){
        if ( AppsLogger.isEnabled(AppsLogger.SEVERE) ) {
          AppsLogger.write(this,
                           t.getMessage(), AppsLogger.SEVERE);
           
        }
          ;
      }      
  }
  
    public String handleFault(IFaultRecoveryContext iFaultCtx) {
        try{
          // Used to obtain BPEL specific context data and activity methods.
          BPELFaultRecoveryContextImpl bpelCtx =
              (BPELFaultRecoveryContextImpl)iFaultCtx;
    
          AppsLoggerHelper.setSupplementalAttribute(AppsLoggerHelper.COMPONENT_INSTANCE_ID_KEY,
                                                                          bpelCtx.getComponentInstanceId());
          AppsLoggerHelper.setSupplementalAttribute(AppsLoggerHelper.COMPONENT_NAME_KEY,
                                                                          bpelCtx.getComponentName());
          AppsLoggerHelper.setSupplementalAttribute(AppsLoggerHelper.COMPOSITE_INSTANCE_ID_KEY,
                                                                          bpelCtx.getCompositeInstanceId());
          AppsLoggerHelper.setSupplementalAttribute(AppsLoggerHelper.COMPOSITE_NAME_KEY,
                                                                          bpelCtx.getCompositeName());
  
            // Get the contents of the Sensor Log Vars: LOG_MODULE_ID, LOG_APP_SHORT_NAME, LOG_TOKEN_MAP, LOG_FAULT_MAP
            try {
                String logModuleID = "UNKNOWN";
                XMLElement logModuleIDX = (XMLElement) bpelCtx.getVariableData("LOG_MODULE_ID");
                if (logModuleIDX != null )
                    logModuleID = logModuleIDX.getTextContent();
                
                String logAppShortName = "FND";
                XMLElement logAppShortNameX = (XMLElement) bpelCtx.getVariableData("LOG_APP_SHORT_NAME");
                if ( logAppShortNameX != null ) 
                    logAppShortName = logAppShortNameX.getTextContent();
                
                String logTokenMap = null;
                XMLElement logTokenMapX = (XMLElement) bpelCtx.getVariableData("LOG_TOKEN_MAP");
                if ( logTokenMapX != null ) 
                    logTokenMap = logTokenMapX.getTextContent();
                
                String logFaultMap = null;
                XMLElement logFaultMapX = (XMLElement) bpelCtx.getVariableData("LOG_FAULT_MAP");
                if ( logFaultMapX != null ) 
                    logFaultMap = logFaultMapX.getTextContent();
                
                AppsLoggerHelper.setSupplementalAttribute(AppsLoggerHelper.APPS_COMPONENT_NAME, logAppShortName + ":" + logModuleID);
                AppsLoggerHelper.setSupplementalAttribute("LOG_TOKEN_MAP", logTokenMap);
                AppsLoggerHelper.setSupplementalAttribute("LOG_FAULT_MAP", logFaultMap);
                
            } catch ( NullPointerException nex ) {
              if ( AppsLogger.isEnabled(AppsLogger.WARNING) ) {
               AppsLogger.write(this, "handleFault: NullPointerException getting BPEL Sensor Log Variable Values.", AppsLogger.WARNING);
                
              }
              ;
            } // try
            catch ( Throwable t ){    
                      if ( AppsLogger.isEnabled(AppsLogger.WARNING) ) {
                        AppsLogger.write(this,
                                         t.getMessage(), AppsLogger.WARNING);
                 
                      }
                      ;
            }


        if ( AppsLogger.isEnabled(AppsLogger.SEVERE) ) {
          AppsLogger.write(this,
                           bpelCtx.getReferenceName(), AppsLogger.SEVERE);
        }

            
          String content=null;
            
          XMLElement faultPolicy =  (XMLElement) bpelCtx.getVariableData("FA_FAULT_POLICY_DEFAULT_OVERRIDE");
              bpelCtx.addAuditTrailEntry(" FA_FAULT_POLICY_DEFAULT_OVERRIDE="+  faultPolicy.getTextContent());
                        
            if ( faultPolicy != null )
                content = faultPolicy.getTextContent();
          
            if ( content != null ){
                if ( AppsLogger.isEnabled(AppsLogger.FINEST )) {
                  AppsLogger.write(this, "FA_FAULT_POLICY_DEFAULT_OVERRIDE = \"" + content + "\"", AppsLogger.FINEST);
                } // if
                if ( content.equalsIgnoreCase("REPLAY") ||
                      content.equalsIgnoreCase("RETHROW")  ||
                      content.equalsIgnoreCase("ABORT")  ||
                      content.equalsIgnoreCase("RETRY")  ||
                      content.equalsIgnoreCase("MANUAL")  )
                {
                      return content;            
                }
            } // if
            
        } catch ( ClassCastException cce ){    
          if ( AppsLogger.isEnabled(AppsLogger.WARNING) ) {
            AppsLogger.write(this,
                             cce.getMessage(), AppsLogger.WARNING);
            
          }
          ;
          
        }catch ( Throwable t ){
            
          if ( AppsLogger.isEnabled(AppsLogger.SEVERE) ) {
            AppsLogger.write(this,
                             t.getMessage(), AppsLogger.SEVERE);
             
          }
          ;
        }
        return "RETHROW";
    }
}