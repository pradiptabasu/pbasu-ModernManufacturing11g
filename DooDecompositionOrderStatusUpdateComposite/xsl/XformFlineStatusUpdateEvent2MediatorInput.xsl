<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:inp="http://xmlns.oracle.com/apps/scm/doo/decomposition/DooDecompositionOrderStatusUpdateComposite" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:tns="http://xmlns.oracle.com/apps/scm/doo/decomposition/DooDecompositionOrderStatusUpdateComposite/BusinessEventNotificationMediator" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:inp1="http://xmlns.oracle.com/apps/scm/doo/common/events/service/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ns3="http://xmlns.oracle.com/adf/svc/errors/" xmlns:inp2="/oracle/apps/scm/doo/processOrder/model/entity/events/schema/FulfillLineEO" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ns1="commonj.sdo/xml" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:ns2="http://xmlns.oracle.com/adf/svc/types/" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:ns4="commonj.sdo/java" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:ns0="commonj.sdo" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:bpmn="http://schemas.oracle.com/bpm/xpath" xmlns:tm="http://xmlns.oracle.com/topologyManager/client/xpath/extension" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl inp tns inp1 wsdl ns3 inp2 ns1 ns2 ns4 ns0 xsd bpws xp20 bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref bpmn tm ldap">
   <xsl:template match="/">
      <inp2:OrderOrchestrationStatusUpdateInfo>
         <inp2:Line1.Header1.OrderNumber>
            <inp2:newValue>
               <xsl:if test="/inp2:OrderOrchestrationStatusUpdateInfo/inp2:Line1.Header1.OrderNumber/inp2:newValue/@value">
                  <xsl:attribute name="value">
                     <xsl:value-of select="/inp2:OrderOrchestrationStatusUpdateInfo/inp2:Line1.Header1.OrderNumber/inp2:newValue/@value"/>
                  </xsl:attribute>
               </xsl:if>
            </inp2:newValue>
            <inp2:oldValue>
               <xsl:if test="/inp2:OrderOrchestrationStatusUpdateInfo/inp2:Line1.Header1.OrderNumber/inp2:oldValue/@value">
                  <xsl:attribute name="value">
                     <xsl:value-of select="/inp2:OrderOrchestrationStatusUpdateInfo/inp2:Line1.Header1.OrderNumber/inp2:oldValue/@value"/>
                  </xsl:attribute>
               </xsl:if>
            </inp2:oldValue>
         </inp2:Line1.Header1.OrderNumber>
         <inp2:Line1.LineNumber>
            <inp2:newValue>
               <xsl:if test="/inp2:OrderOrchestrationStatusUpdateInfo/inp2:Line1.LineNumber/inp2:newValue/@value">
                  <xsl:attribute name="value">
                     <xsl:value-of select="/inp2:OrderOrchestrationStatusUpdateInfo/inp2:Line1.LineNumber/inp2:newValue/@value"/>
                  </xsl:attribute>
               </xsl:if>
            </inp2:newValue>
            <inp2:oldValue>
               <xsl:if test="/inp2:OrderOrchestrationStatusUpdateInfo/inp2:Line1.LineNumber/inp2:oldValue/@value">
                  <xsl:attribute name="value">
                     <xsl:value-of select="/inp2:OrderOrchestrationStatusUpdateInfo/inp2:Line1.LineNumber/inp2:oldValue/@value"/>
                  </xsl:attribute>
               </xsl:if>
            </inp2:oldValue>
         </inp2:Line1.LineNumber>
         <inp2:Line1.HeaderId>
            <inp2:newValue>
               <xsl:if test="/inp2:OrderOrchestrationStatusUpdateInfo/inp2:Line1.HeaderId/inp2:newValue/@value">
                  <xsl:attribute name="value">
                     <xsl:value-of select="/inp2:OrderOrchestrationStatusUpdateInfo/inp2:Line1.HeaderId/inp2:newValue/@value"/>
                  </xsl:attribute>
               </xsl:if>
            </inp2:newValue>
            <inp2:oldValue>
               <xsl:if test="/inp2:OrderOrchestrationStatusUpdateInfo/inp2:Line1.HeaderId/inp2:oldValue/@value">
                  <xsl:attribute name="value">
                     <xsl:value-of select="/inp2:OrderOrchestrationStatusUpdateInfo/inp2:Line1.HeaderId/inp2:oldValue/@value"/>
                  </xsl:attribute>
               </xsl:if>
            </inp2:oldValue>
         </inp2:Line1.HeaderId>
         <inp2:FulfillLineId>
            <inp2:newValue>
               <xsl:if test="/inp2:OrderOrchestrationStatusUpdateInfo/inp2:FulfillLineId/inp2:newValue/@value">
                  <xsl:attribute name="value">
                     <xsl:value-of select="/inp2:OrderOrchestrationStatusUpdateInfo/inp2:FulfillLineId/inp2:newValue/@value"/>
                  </xsl:attribute>
               </xsl:if>
            </inp2:newValue>
            <inp2:oldValue>
               <xsl:if test="/inp2:OrderOrchestrationStatusUpdateInfo/inp2:FulfillLineId/inp2:oldValue/@value">
                  <xsl:attribute name="value">
                     <xsl:value-of select="/inp2:OrderOrchestrationStatusUpdateInfo/inp2:FulfillLineId/inp2:oldValue/@value"/>
                  </xsl:attribute>
               </xsl:if>
            </inp2:oldValue>
         </inp2:FulfillLineId>
         <inp2:Line1.Header1.StatusCode>
            <inp2:newValue>
               <xsl:if test="/inp2:OrderOrchestrationStatusUpdateInfo/inp2:Line1.Header1.StatusCode/inp2:newValue/@value">
                  <xsl:attribute name="value">
                     <xsl:value-of select="/inp2:OrderOrchestrationStatusUpdateInfo/inp2:Line1.Header1.StatusCode/inp2:newValue/@value"/>
                  </xsl:attribute>
               </xsl:if>
            </inp2:newValue>
            <inp2:oldValue>
               <xsl:if test="/inp2:OrderOrchestrationStatusUpdateInfo/inp2:Line1.Header1.StatusCode/inp2:oldValue/@value">
                  <xsl:attribute name="value">
                     <xsl:value-of select="/inp2:OrderOrchestrationStatusUpdateInfo/inp2:Line1.Header1.StatusCode/inp2:oldValue/@value"/>
                  </xsl:attribute>
               </xsl:if>
            </inp2:oldValue>
         </inp2:Line1.Header1.StatusCode>
         <inp2:Line1.StatusCode>
            <inp2:newValue>
               <xsl:if test="/inp2:OrderOrchestrationStatusUpdateInfo/inp2:Line1.StatusCode/inp2:newValue/@value">
                  <xsl:attribute name="value">
                     <xsl:value-of select="/inp2:OrderOrchestrationStatusUpdateInfo/inp2:Line1.StatusCode/inp2:newValue/@value"/>
                  </xsl:attribute>
               </xsl:if>
            </inp2:newValue>
            <inp2:oldValue>
               <xsl:if test="/inp2:OrderOrchestrationStatusUpdateInfo/inp2:Line1.StatusCode/inp2:oldValue/@value">
                  <xsl:attribute name="value">
                     <xsl:value-of select="/inp2:OrderOrchestrationStatusUpdateInfo/inp2:Line1.StatusCode/inp2:oldValue/@value"/>
                  </xsl:attribute>
               </xsl:if>
            </inp2:oldValue>
         </inp2:Line1.StatusCode>
         <inp2:StatusCode>
            <inp2:newValue>
               <xsl:if test="/inp2:OrderOrchestrationStatusUpdateInfo/inp2:StatusCode/inp2:newValue/@value">
                  <xsl:attribute name="value">
                     <xsl:value-of select="/inp2:OrderOrchestrationStatusUpdateInfo/inp2:StatusCode/inp2:newValue/@value"/>
                  </xsl:attribute>
               </xsl:if>
            </inp2:newValue>
            <inp2:oldValue>
               <xsl:if test="/inp2:OrderOrchestrationStatusUpdateInfo/inp2:StatusCode/inp2:oldValue/@value">
                  <xsl:attribute name="value">
                     <xsl:value-of select="/inp2:OrderOrchestrationStatusUpdateInfo/inp2:StatusCode/inp2:oldValue/@value"/>
                  </xsl:attribute>
               </xsl:if>
            </inp2:oldValue>
         </inp2:StatusCode>
         <inp2:SourceOrderId>
            <inp2:newValue>
               <xsl:if test="/inp2:OrderOrchestrationStatusUpdateInfo/inp2:SourceOrderId/inp2:newValue/@value">
                  <xsl:attribute name="value">
                     <xsl:value-of select="/inp2:OrderOrchestrationStatusUpdateInfo/inp2:SourceOrderId/inp2:newValue/@value"/>
                  </xsl:attribute>
               </xsl:if>
            </inp2:newValue>
            <inp2:oldValue>
               <xsl:if test="/inp2:OrderOrchestrationStatusUpdateInfo/inp2:SourceOrderId/inp2:oldValue/@value">
                  <xsl:attribute name="value">
                     <xsl:value-of select="/inp2:OrderOrchestrationStatusUpdateInfo/inp2:SourceOrderId/inp2:oldValue/@value"/>
                  </xsl:attribute>
               </xsl:if>
            </inp2:oldValue>
         </inp2:SourceOrderId>
         <inp2:SourceOrderSystem>
            <inp2:newValue>
               <xsl:if test="/inp2:OrderOrchestrationStatusUpdateInfo/inp2:SourceOrderSystem/inp2:newValue/@value">
                  <xsl:attribute name="value">
                     <xsl:value-of select="/inp2:OrderOrchestrationStatusUpdateInfo/inp2:SourceOrderSystem/inp2:newValue/@value"/>
                  </xsl:attribute>
               </xsl:if>
            </inp2:newValue>
            <inp2:oldValue>
               <xsl:if test="/inp2:OrderOrchestrationStatusUpdateInfo/inp2:SourceOrderSystem/inp2:oldValue/@value">
                  <xsl:attribute name="value">
                     <xsl:value-of select="/inp2:OrderOrchestrationStatusUpdateInfo/inp2:SourceOrderSystem/inp2:oldValue/@value"/>
                  </xsl:attribute>
               </xsl:if>
            </inp2:oldValue>
         </inp2:SourceOrderSystem>
         <inp2:SourceOrderNumber>
            <inp2:newValue>
               <xsl:if test="/inp2:OrderOrchestrationStatusUpdateInfo/inp2:SourceOrderNumber/inp2:newValue/@value">
                  <xsl:attribute name="value">
                     <xsl:value-of select="/inp2:OrderOrchestrationStatusUpdateInfo/inp2:SourceOrderNumber/inp2:newValue/@value"/>
                  </xsl:attribute>
               </xsl:if>
            </inp2:newValue>
            <inp2:oldValue>
               <xsl:if test="/inp2:OrderOrchestrationStatusUpdateInfo/inp2:SourceOrderNumber/inp2:oldValue/@value">
                  <xsl:attribute name="value">
                     <xsl:value-of select="/inp2:OrderOrchestrationStatusUpdateInfo/inp2:SourceOrderNumber/inp2:oldValue/@value"/>
                  </xsl:attribute>
               </xsl:if>
            </inp2:oldValue>
         </inp2:SourceOrderNumber>
         <inp2:SourceLineId>
            <inp2:newValue>
               <xsl:if test="/inp2:OrderOrchestrationStatusUpdateInfo/inp2:SourceLineId/inp2:newValue/@value">
                  <xsl:attribute name="value">
                     <xsl:value-of select="/inp2:OrderOrchestrationStatusUpdateInfo/inp2:SourceLineId/inp2:newValue/@value"/>
                  </xsl:attribute>
               </xsl:if>
            </inp2:newValue>
            <inp2:oldValue>
               <xsl:if test="/inp2:OrderOrchestrationStatusUpdateInfo/inp2:SourceLineId/inp2:oldValue/@value">
                  <xsl:attribute name="value">
                     <xsl:value-of select="/inp2:OrderOrchestrationStatusUpdateInfo/inp2:SourceLineId/inp2:oldValue/@value"/>
                  </xsl:attribute>
               </xsl:if>
            </inp2:oldValue>
         </inp2:SourceLineId>
         <inp2:SourceScheduleId>
            <inp2:newValue>
               <xsl:if test="/inp2:OrderOrchestrationStatusUpdateInfo/inp2:SourceScheduleId/inp2:newValue/@value">
                  <xsl:attribute name="value">
                     <xsl:value-of select="/inp2:OrderOrchestrationStatusUpdateInfo/inp2:SourceScheduleId/inp2:newValue/@value"/>
                  </xsl:attribute>
               </xsl:if>
            </inp2:newValue>
            <inp2:oldValue>
               <xsl:if test="/inp2:OrderOrchestrationStatusUpdateInfo/inp2:SourceScheduleId/inp2:oldValue/@value">
                  <xsl:attribute name="value">
                     <xsl:value-of select="/inp2:OrderOrchestrationStatusUpdateInfo/inp2:SourceScheduleId/inp2:oldValue/@value"/>
                  </xsl:attribute>
               </xsl:if>
            </inp2:oldValue>
         </inp2:SourceScheduleId>
      </inp2:OrderOrchestrationStatusUpdateInfo>
   </xsl:template>
</xsl:stylesheet>
