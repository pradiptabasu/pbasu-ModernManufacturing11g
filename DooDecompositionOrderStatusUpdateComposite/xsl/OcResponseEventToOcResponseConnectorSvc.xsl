<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:ns1="http://xmlns.oracle.com/apps/scm/doo/decomposition/DooDecompositionOrderStatusUpdateComposite" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:client="http://xmlns.oracle.com/apps/scm/doo/decomposition/DooDecompositionOrderStatusUpdateComposite/BusinessEventNotification" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:plnk="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:ns2="http://xmlns.oracle.com/apps/scm/doo/common/events/service/" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:svcex="http://xmlns.oracle.com/adf/svc/errors/" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ns3="commonj.sdo/xml" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:ns4="http://xmlns.oracle.com/adf/svc/types/" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:ns5="commonj.sdo/java" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:ns0="commonj.sdo" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns6="http://xmlns.oracle.com/apps/scm/doo/taskLayer/externalInterfaceLayer/DooTaskExternalInterfaceVirtualPartnersComposite/BusinessEventsConnector" xmlns:bpmn="http://schemas.oracle.com/bpm/xpath" xmlns:tm="http://xmlns.oracle.com/topologyManager/client/xpath/extension" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl ns1 client plnk ns2 soap wsdl svcex ns3 ns4 ns5 ns0 xsd ns6 bpws xp20 bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref bpmn tm ldap">
   <xsl:template match="/">
      <ns1:results>
         <ns1:OrderHeader>
            <ns1:EventCode>
               <xsl:text disable-output-escaping="no">OcResponse</xsl:text>
            </ns1:EventCode>
            <ns1:SourceOrderSystem>
               <xsl:value-of select="/ns1:OCResponse/ns1:OCResponseType/ns1:SourceOrderSystem"/>
            </ns1:SourceOrderSystem>
            <ns1:SourceOrderNumber>
               <xsl:value-of select="/ns1:OCResponse/ns1:OCResponseType/ns1:SourceOrder"/>
            </ns1:SourceOrderNumber>
            <ns1:CompensationStatus>
               <xsl:value-of select="/ns1:OCResponse/ns1:OCResponseType/ns1:CompensationStatus"/>
            </ns1:CompensationStatus>
            <ns1:CompensationMessage>
               <xsl:value-of select="/ns1:OCResponse/ns1:OCResponseType/ns1:CompensationMessage"/>
            </ns1:CompensationMessage>
            <ns1:OrderLine>
               <ns1:SourceOrderLineId>
                  <xsl:value-of select="/ns1:OCResponse/ns1:OCResponseType/ns1:SourceLineIds/ns1:SourceLineId"/>
               </ns1:SourceOrderLineId>
               <ns1:OrderFulfillmentLine>
                  <ns1:FulfillmentOrderLineId>
                     <xsl:value-of select="/ns1:OCResponse/ns1:OCResponseType/ns1:SourceLineIds/ns1:Flines/ns1:FlineId"/>
                  </ns1:FulfillmentOrderLineId>
               </ns1:OrderFulfillmentLine>
            </ns1:OrderLine>
         </ns1:OrderHeader>
      </ns1:results>
   </xsl:template>
</xsl:stylesheet>
