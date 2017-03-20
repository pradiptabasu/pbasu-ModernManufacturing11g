<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:inp="http://xmlns.oracle.com/apps/scm/doo/decomposition/DooDecompositionOrderStatusUpdateComposite" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ns4="http://xmlns.oracle.com/apps/scm/doo/decomposition/DooDecompositionOrderStatusUpdateComposite/BusinessEventNotificationMediator" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:plnk="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:tns="http://xmlns.oracle.com/apps/scm/doo/common/events/service/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:errors="http://xmlns.oracle.com/adf/svc/errors/" xmlns:types="http://xmlns.oracle.com/apps/scm/doo/common/events/service/types/" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ns1="commonj.sdo/xml" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:ns2="http://xmlns.oracle.com/adf/svc/types/" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:ns3="commonj.sdo/java" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:ns0="commonj.sdo" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:bpmn="http://schemas.oracle.com/bpm/xpath" xmlns:tm="http://xmlns.oracle.com/topologyManager/client/xpath/extension" xmlns:orafault="http://xmlns.oracle.com/oracleas/schema/oracle-fault-11_0" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl plnk soap tns wsdl errors types ns1 ns2 ns3 ns0 xsd orafault inp ns4 bpws xp20 bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref bpmn tm ldap">
   <xsl:template match="/">
      <inp:MediatorInput>
         <xsl:for-each select="/types:preparePayloadForOrderUpdateEventResponse/types:result">
            <inp:OrderUpdateHeader>
               <xsl:if test="tns:SourceOrderSystem">
                  <tns:SourceOrderSystem>
                     <xsl:if test="tns:SourceOrderSystem/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                           <xsl:value-of select="tns:SourceOrderSystem/@xsi:nil"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:value-of select="tns:SourceOrderSystem"/>
                  </tns:SourceOrderSystem>
               </xsl:if>
               <xsl:if test="tns:SourceOrderId">
                  <tns:SourceOrderId>
                     <xsl:if test="tns:SourceOrderId/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                           <xsl:value-of select="tns:SourceOrderId/@xsi:nil"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:value-of select="tns:SourceOrderId"/>
                  </tns:SourceOrderId>
               </xsl:if>
               <xsl:if test="tns:SourceOrderNumber">
                  <tns:SourceOrderNumber>
                     <xsl:if test="tns:SourceOrderNumber/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                           <xsl:value-of select="tns:SourceOrderNumber/@xsi:nil"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:value-of select="tns:SourceOrderNumber"/>
                  </tns:SourceOrderNumber>
               </xsl:if>
               <xsl:if test="tns:OrchestrationOrderId">
                  <tns:OrchestrationOrderId>
                     <xsl:if test="tns:OrchestrationOrderId/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                           <xsl:value-of select="tns:OrchestrationOrderId/@xsi:nil"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:value-of select="tns:OrchestrationOrderId"/>
                  </tns:OrchestrationOrderId>
               </xsl:if>
               <xsl:if test="tns:OrchestrationOrderNumber">
                  <tns:OrchestrationOrderNumber>
                     <xsl:if test="tns:OrchestrationOrderNumber/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                           <xsl:value-of select="tns:OrchestrationOrderNumber/@xsi:nil"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:value-of select="tns:OrchestrationOrderNumber"/>
                  </tns:OrchestrationOrderNumber>
               </xsl:if>
               <xsl:for-each select="tns:OrderUpdateLineTR">
                  <tns:OrderUpdateLineTR>
                     <xsl:if test="tns:SourceOrderLineId">
                        <tns:SourceOrderLineId>
                           <xsl:if test="tns:SourceOrderLineId/@xsi:nil">
                              <xsl:attribute name="xsi:nil">
                                 <xsl:value-of select="tns:SourceOrderLineId/@xsi:nil"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:value-of select="tns:SourceOrderLineId"/>
                        </tns:SourceOrderLineId>
                     </xsl:if>
                     <xsl:if test="tns:SourceOrderLineNumber">
                        <tns:SourceOrderLineNumber>
                           <xsl:if test="tns:SourceOrderLineNumber/@xsi:nil">
                              <xsl:attribute name="xsi:nil">
                                 <xsl:value-of select="tns:SourceOrderLineNumber/@xsi:nil"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:value-of select="tns:SourceOrderLineNumber"/>
                        </tns:SourceOrderLineNumber>
                     </xsl:if>
                     <xsl:if test="tns:OrchestrationOrderLineId">
                        <tns:OrchestrationOrderLineId>
                           <xsl:if test="tns:OrchestrationOrderLineId/@xsi:nil">
                              <xsl:attribute name="xsi:nil">
                                 <xsl:value-of select="tns:OrchestrationOrderLineId/@xsi:nil"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:value-of select="tns:OrchestrationOrderLineId"/>
                        </tns:OrchestrationOrderLineId>
                     </xsl:if>
                     <xsl:if test="tns:OrchestrationOrderLineNumber">
                        <tns:OrchestrationOrderLineNumber>
                           <xsl:if test="tns:OrchestrationOrderLineNumber/@xsi:nil">
                              <xsl:attribute name="xsi:nil">
                                 <xsl:value-of select="tns:OrchestrationOrderLineNumber/@xsi:nil"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:value-of select="tns:OrchestrationOrderLineNumber"/>
                        </tns:OrchestrationOrderLineNumber>
                     </xsl:if>
                     <xsl:for-each select="tns:OrderUpdateFulfillLineTR">
                        <tns:OrderUpdateFulfillLineTR>
                           <xsl:if test="tns:SourceOrderScheduleId">
                              <tns:SourceOrderScheduleId>
                                 <xsl:if test="tns:SourceOrderScheduleId/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:SourceOrderScheduleId/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:SourceOrderScheduleId"/>
                              </tns:SourceOrderScheduleId>
                           </xsl:if>
                           <xsl:if test="tns:OrchestrationOrderLineId">
                              <tns:OrchestrationOrderLineId>
                                 <xsl:if test="tns:OrchestrationOrderLineId/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:OrchestrationOrderLineId/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:OrchestrationOrderLineId"/>
                              </tns:OrchestrationOrderLineId>
                           </xsl:if>
                           <xsl:if test="tns:FulfillmentOrderLineId">
                              <tns:FulfillmentOrderLineId>
                                 <xsl:if test="tns:FulfillmentOrderLineId/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:FulfillmentOrderLineId/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:FulfillmentOrderLineId"/>
                              </tns:FulfillmentOrderLineId>
                           </xsl:if>
                           <xsl:if test="tns:FulfillmentOrderLineNumber">
                              <tns:FulfillmentOrderLineNumber>
                                 <xsl:if test="tns:FulfillmentOrderLineNumber/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:FulfillmentOrderLineNumber/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:FulfillmentOrderLineNumber"/>
                              </tns:FulfillmentOrderLineNumber>
                           </xsl:if>
                           <xsl:if test="(string-length(tns:ActualShipDateNew) > 0.0) or (string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:ActualShipDateOld) > 0.0)">
                              <tns:ActualShipDateNew>
                                 <xsl:if test="tns:ActualShipDateNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:ActualShipDateNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:ActualShipDateNew"/>
                              </tns:ActualShipDateNew>
                           </xsl:if>
                           <xsl:if test="(string-length(tns:ActualShipDateNew) > 0.0) or (string-length(/types:preparePayloadForOrderUpdateEventResponse/types:result/tns:OrderUpdateLineTR/tns:OrderUpdateFulfillLineTR/tns:ActualShipDateOld) > 0.0)">
                              <tns:ActualShipDateOld>
                                 <xsl:if test="tns:ActualShipDateOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:ActualShipDateOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:ActualShipDateOld"/>
                              </tns:ActualShipDateOld>
                           </xsl:if>
                           <xsl:if test="(string-length(tns:BillToContactIdNew) > 0.0) or (string-length(tns:BillToContactIdOld) > 0.0)">
                              <tns:BillToContactIdNew>
                                 <xsl:if test="tns:BillToContactIdNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:BillToContactIdNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:BillToContactIdNew"/>
                              </tns:BillToContactIdNew>
                           </xsl:if>
                           <xsl:if test="(string-length(tns:BillToContactIdNew) > 0.0) or (string-length(tns:BillToContactIdOld) > 0.0)">
                              <tns:BillToContactIdOld>
                                 <xsl:if test="tns:BillToContactIdOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:BillToContactIdOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:BillToContactIdOld"/>
                              </tns:BillToContactIdOld>
                           </xsl:if>
                           <xsl:if test="(string-length(tns:BillToCustomerIdNew) > 0.0) or (string-length(tns:BillToCustomerIdOld) > 0.0)">
                              <tns:BillToCustomerIdNew>
                                 <xsl:if test="tns:BillToCustomerIdNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:BillToCustomerIdNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:BillToCustomerIdNew"/>
                              </tns:BillToCustomerIdNew>
                           </xsl:if>
                           <xsl:if test="(string-length(tns:BillToCustomerIdNew) > 0.0) or (string-length(tns:BillToCustomerIdOld) > 0.0)">
                              <tns:BillToCustomerIdOld>
                                 <xsl:if test="tns:BillToCustomerIdOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:BillToCustomerIdOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:BillToCustomerIdOld"/>
                              </tns:BillToCustomerIdOld>
                           </xsl:if>
                           <xsl:if test="(string-length(tns:FobPointCodeNew) > 0.0) or (string-length(tns:FobPointCodeOld) > 0.0)">
                              <tns:FobPointCodeNew>
                                 <xsl:if test="tns:FobPointCodeNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:FobPointCodeNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:FobPointCodeNew"/>
                              </tns:FobPointCodeNew>
                           </xsl:if>
                           <xsl:if test="(string-length(tns:FobPointCodeNew) > 0.0) or (string-length(tns:FobPointCodeOld) > 0.0)">
                              <tns:FobPointCodeOld>
                                 <xsl:if test="tns:FobPointCodeOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:FobPointCodeOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:FobPointCodeOld"/>
                              </tns:FobPointCodeOld>
                           </xsl:if>
                           <xsl:if test="(string-length(tns:FulfillOrgIdNew) > 0.0) or (string-length(tns:FulfillOrgIdOld) > 0.0)">
                              <tns:FulfillOrgIdNew>
                                 <xsl:if test="tns:FulfillOrgIdNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:FulfillOrgIdNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:FulfillOrgIdNew"/>
                              </tns:FulfillOrgIdNew>
                           </xsl:if>
                           <xsl:if test="(string-length(tns:FulfillOrgIdNew) > 0.0) or (string-length(tns:FulfillOrgIdOld) > 0.0)">
                              <tns:FulfillOrgIdOld>
                                 <xsl:if test="tns:FulfillOrgIdOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:FulfillOrgIdOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:FulfillOrgIdOld"/>
                              </tns:FulfillOrgIdOld>
                           </xsl:if>
                           <xsl:if test="(string-length(tns:InventoryItemIdNew) > 0.0) or (string-length(tns:InventoryItemIdOld) > 0.0)">
                              <tns:InventoryItemIdNew>
                                 <xsl:if test="tns:InventoryItemIdNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:InventoryItemIdNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:InventoryItemIdNew"/>
                              </tns:InventoryItemIdNew>
                           </xsl:if>
                           <xsl:if test="(string-length(tns:InventoryItemIdNew) > 0.0) or (string-length(tns:InventoryItemIdOld) > 0.0)">
                              <tns:InventoryItemIdOld>
                                 <xsl:if test="tns:InventoryItemIdOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:InventoryItemIdOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:InventoryItemIdOld"/>
                              </tns:InventoryItemIdOld>
                           </xsl:if>
                           <xsl:if test="(string-length(tns:OrderedQtyNew) > 0.0) or (string-length(tns:OrderedQtyOld) > 0.0)">
                              <tns:OrderedQtyNew>
                                 <xsl:if test="tns:OrderedQtyNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:OrderedQtyNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:OrderedQtyNew"/>
                              </tns:OrderedQtyNew>
                           </xsl:if>
                           <xsl:if test="(string-length(tns:OrderedQtyNew) > 0.0) or (string-length(tns:OrderedQtyOld) > 0.0)">
                              <tns:OrderedQtyOld>
                                 <xsl:if test="tns:OrderedQtyOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:OrderedQtyOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:OrderedQtyOld"/>
                              </tns:OrderedQtyOld>
                           </xsl:if>
                           <xsl:if test="(string-length(tns:PromiseArrivalDateNew) > 0.0) or (string-length(tns:PromiseArrivalDateOld) > 0.0)">
                              <tns:PromiseArrivalDateNew>
                                 <xsl:if test="tns:PromiseArrivalDateNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:PromiseArrivalDateNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:PromiseArrivalDateNew"/>
                              </tns:PromiseArrivalDateNew>
                           </xsl:if>
                           <xsl:if test="(string-length(tns:PromiseArrivalDateNew) > 0.0) or (string-length(tns:PromiseArrivalDateOld) > 0.0)">
                              <tns:PromiseArrivalDateOld>
                                 <xsl:if test="tns:PromiseArrivalDateOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:PromiseArrivalDateOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:PromiseArrivalDateOld"/>
                              </tns:PromiseArrivalDateOld>
                           </xsl:if>
                           <xsl:if test="(string-length(tns:PromiseShipDateNew) > 0.0) or (string-length(tns:PromiseShipDateOld) > 0.0)">
                              <tns:PromiseShipDateNew>
                                 <xsl:if test="tns:PromiseShipDateNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:PromiseShipDateNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:PromiseShipDateNew"/>
                              </tns:PromiseShipDateNew>
                           </xsl:if>
                           <xsl:if test="(string-length(tns:PromiseShipDateNew) > 0.0) or (string-length(tns:PromiseShipDateOld) > 0.0)">
                              <tns:PromiseShipDateOld>
                                 <xsl:if test="tns:PromiseShipDateOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:PromiseShipDateOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:PromiseShipDateOld"/>
                              </tns:PromiseShipDateOld>
                           </xsl:if>
                           <xsl:if test="(string-length(tns:RequestArrivalDateNew) > 0.0) or (string-length(tns:RequestArrivalDateOld) > 0.0)">
                              <tns:RequestArrivalDateNew>
                                 <xsl:if test="tns:RequestArrivalDateNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:RequestArrivalDateNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:RequestArrivalDateNew"/>
                              </tns:RequestArrivalDateNew>
                           </xsl:if>
                           <xsl:if test="(string-length(tns:RequestArrivalDateNew) > 0.0) or (string-length(tns:RequestArrivalDateOld) > 0.0)">
                              <tns:RequestArrivalDateOld>
                                 <xsl:if test="tns:RequestArrivalDateOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:RequestArrivalDateOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:RequestArrivalDateOld"/>
                              </tns:RequestArrivalDateOld>
                           </xsl:if>
                           <xsl:if test="(string-length(tns:RequestShipDateNew) > 0.0) or (string-length(tns:RequestShipDateOld) > 0.0)">
                              <tns:RequestShipDateNew>
                                 <xsl:if test="tns:RequestShipDateNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:RequestShipDateNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:RequestShipDateNew"/>
                              </tns:RequestShipDateNew>
                           </xsl:if>
                           <xsl:if test="(string-length(tns:RequestShipDateNew) > 0.0) or (string-length(tns:RequestShipDateOld) > 0.0)">
                              <tns:RequestShipDateOld>
                                 <xsl:if test="tns:RequestShipDateOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:RequestShipDateOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:RequestShipDateOld"/>
                              </tns:RequestShipDateOld>
                           </xsl:if>
                           <xsl:if test="(string-length(tns:ScheduleShipDateNew) > 0.0) or (string-length(tns:ScheduleShipDateOld) > 0.0)">
                              <tns:ScheduleShipDateNew>
                                 <xsl:if test="tns:ScheduleShipDateNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:ScheduleShipDateNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:ScheduleShipDateNew"/>
                              </tns:ScheduleShipDateNew>
                           </xsl:if>
                           <xsl:if test="(string-length(tns:ScheduleShipDateNew) > 0.0) or (string-length(tns:ScheduleShipDateOld) > 0.0)">
                              <tns:ScheduleShipDateOld>
                                 <xsl:if test="tns:ScheduleShipDateOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:ScheduleShipDateOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:ScheduleShipDateOld"/>
                              </tns:ScheduleShipDateOld>
                           </xsl:if>
                           <xsl:if test="(string-length(tns:ScheduleArrivalDateNew) > 0.0) or (string-length(tns:ScheduleArrivalDateOld) > 0.0)">
                              <tns:ScheduleArrivalDateNew>
                                 <xsl:if test="tns:ScheduleArrivalDateNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:ScheduleArrivalDateNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:ScheduleArrivalDateNew"/>
                              </tns:ScheduleArrivalDateNew>
                           </xsl:if>
                           <xsl:if test="(string-length(tns:ScheduleArrivalDateNew) > 0.0) or (string-length(tns:ScheduleArrivalDateOld) > 0.0)">
                              <tns:ScheduleArrivalDateOld>
                                 <xsl:if test="tns:ScheduleArrivalDateOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:ScheduleArrivalDateOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:ScheduleArrivalDateOld"/>
                              </tns:ScheduleArrivalDateOld>
                           </xsl:if>
                           <xsl:if test="(string-length(tns:ShipClassOfServiceNew) > 0.0) or (string-length(tns:ShipClassOfServiceOld) > 0.0)">
                              <tns:ShipClassOfServiceNew>
                                 <xsl:if test="tns:ShipClassOfServiceNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:ShipClassOfServiceNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:ShipClassOfServiceNew"/>
                              </tns:ShipClassOfServiceNew>
                           </xsl:if>
                           <xsl:if test="(string-length(tns:ShipClassOfServiceNew) > 0.0) or (string-length(tns:ShipClassOfServiceOld) > 0.0)">
                              <tns:ShipClassOfServiceOld>
                                 <xsl:if test="tns:ShipClassOfServiceOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:ShipClassOfServiceOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:ShipClassOfServiceOld"/>
                              </tns:ShipClassOfServiceOld>
                           </xsl:if>
                           <xsl:if test="(string-length(tns:ShipModeOfTransportNew) > 0.0) or (string-length(tns:ShipModeOfTransportOld) > 0.0)">
                              <tns:ShipModeOfTransportNew>
                                 <xsl:if test="tns:ShipModeOfTransportNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:ShipModeOfTransportNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:ShipModeOfTransportNew"/>
                              </tns:ShipModeOfTransportNew>
                           </xsl:if>
                           <xsl:if test="(string-length(tns:ShipModeOfTransportNew) > 0.0) or (string-length(tns:ShipModeOfTransportOld) > 0.0)">
                              <tns:ShipModeOfTransportOld>
                                 <xsl:if test="tns:ShipModeOfTransportOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:ShipModeOfTransportOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:ShipModeOfTransportOld"/>
                              </tns:ShipModeOfTransportOld>
                           </xsl:if>
                           <xsl:if test="(string-length(tns:ShipmentPriorityCodeOld) > 0.0) or (string-length(tns:ShipmentPriorityCodeNew) > 0.0)">
                              <tns:ShipmentPriorityCodeNew>
                                 <xsl:if test="tns:ShipmentPriorityCodeNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:ShipmentPriorityCodeNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:ShipmentPriorityCodeNew"/>
                              </tns:ShipmentPriorityCodeNew>
                           </xsl:if>
                           <xsl:if test="(string-length(tns:ShipmentPriorityCodeOld) > 0.0) or (string-length(tns:ShipmentPriorityCodeNew) > 0.0)">
                              <tns:ShipmentPriorityCodeOld>
                                 <xsl:if test="tns:ShipmentPriorityCodeOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:ShipmentPriorityCodeOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:ShipmentPriorityCodeOld"/>
                              </tns:ShipmentPriorityCodeOld>
                           </xsl:if>
                           <xsl:if test="(string-length(tns:ShipToContactIdNew) > 0.0) or (string-length(tns:ShipToContactIdOld) > 0.0)">
                              <tns:ShipToContactIdNew>
                                 <xsl:if test="tns:ShipToContactIdNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:ShipToContactIdNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:ShipToContactIdNew"/>
                              </tns:ShipToContactIdNew>
                           </xsl:if>
                           <xsl:if test="(string-length(tns:ShipToContactIdNew) > 0.0) or (string-length(tns:ShipToContactIdOld) > 0.0)">
                              <tns:ShipToContactIdOld>
                                 <xsl:if test="tns:ShipToContactIdOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:ShipToContactIdOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:ShipToContactIdOld"/>
                              </tns:ShipToContactIdOld>
                           </xsl:if>
                           <xsl:if test="(string-length(tns:ShipToCustomerIdNew) > 0.0) or (string-length(tns:ShipToCustomerIdOld) > 0.0)">
                              <tns:ShipToCustomerIdNew>
                                 <xsl:if test="tns:ShipToCustomerIdNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:ShipToCustomerIdNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:ShipToCustomerIdNew"/>
                              </tns:ShipToCustomerIdNew>
                           </xsl:if>
                           <xsl:if test="(string-length(tns:ShipToCustomerIdNew) > 0.0) or (string-length(tns:ShipToCustomerIdOld) > 0.0)">
                              <tns:ShipToCustomerIdOld>
                                 <xsl:if test="tns:ShipToCustomerIdOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:ShipToCustomerIdOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:ShipToCustomerIdOld"/>
                              </tns:ShipToCustomerIdOld>
                           </xsl:if>
                           <xsl:if test="(string-length(tns:ShipToSiteUseIdNew) > 0.0) or (string-length(tns:ShipToSiteUseIdOld) > 0.0)">
                              <tns:ShipToSiteUseIdNew>
                                 <xsl:if test="tns:ShipToSiteUseIdNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:ShipToSiteUseIdNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:ShipToSiteUseIdNew"/>
                              </tns:ShipToSiteUseIdNew>
                           </xsl:if>
                           <xsl:if test="(string-length(tns:ShipToSiteUseIdNew) > 0.0) or (string-length(tns:ShipToSiteUseIdOld) > 0.0)">
                              <tns:ShipToSiteUseIdOld>
                                 <xsl:if test="tns:ShipToSiteUseIdOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:ShipToSiteUseIdOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:ShipToSiteUseIdOld"/>
                              </tns:ShipToSiteUseIdOld>
                           </xsl:if>
                           <xsl:if test="(string-length(tns:ShipToPartySiteIdNew) > 0.0) or (string-length(tns:ShipToPartySiteIdOld) > 0.0)">
                              <tns:ShipToPartySiteIdOld>
                                 <xsl:if test="tns:ShipToPartySiteIdOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:ShipToPartySiteIdOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:ShipToPartySiteIdOld"/>
                              </tns:ShipToPartySiteIdOld>
                           </xsl:if>
                           <xsl:if test="(string-length(tns:ShipToPartySiteIdNew) > 0.0) or (string-length(tns:ShipToPartySiteIdOld) > 0.0)">
                              <tns:ShipToPartySiteIdNew>
                                 <xsl:if test="tns:ShipToPartySiteIdNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:ShipToPartySiteIdNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:ShipToPartySiteIdNew"/>
                              </tns:ShipToPartySiteIdNew>
                           </xsl:if>
                           <xsl:if test="(string-length(tns:ShipToPartyIdNew) > 0.0) or (string-length(tns:ShipToPartyIdOld) > 0.0)">
                              <tns:ShipToPartyIdOld>
                                 <xsl:if test="tns:ShipToPartyIdOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:ShipToPartyIdOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:ShipToPartyIdOld"/>
                              </tns:ShipToPartyIdOld>
                           </xsl:if>
                           <xsl:if test="(string-length(tns:ShipToPartyIdNew) > 0.0) or (string-length(tns:ShipToPartyIdOld) > 0.0)">
                              <tns:ShipToPartyIdNew>
                                 <xsl:if test="tns:ShipToPartyIdNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:ShipToPartyIdNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:ShipToPartyIdNew"/>
                              </tns:ShipToPartyIdNew>
                           </xsl:if>
                           <xsl:if test="(string-length(tns:ShipToPartyContactIdNew) > 0.0) or (string-length(tns:ShipToPartyContactIdOld) > 0.0)">
                              <tns:ShipToPartyContactIdOld>
                                 <xsl:if test="tns:ShipToPartyContactIdOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:ShipToPartyContactIdOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:ShipToPartyContactIdOld"/>
                              </tns:ShipToPartyContactIdOld>
                           </xsl:if>
                           <xsl:if test="(string-length(tns:ShipToPartyContactIdNew) > 0.0) or (string-length(tns:ShipToPartyContactIdOld) > 0.0)">
                              <tns:ShipToPartyContactIdNew>
                                 <xsl:if test="tns:ShipToPartyContactIdNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:ShipToPartyContactIdNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:ShipToPartyContactIdNew"/>
                              </tns:ShipToPartyContactIdNew>
                           </xsl:if>
                           <xsl:if test="(string-length(tns:TaxClassificationCodeNew) > 0.0) or (string-length(tns:TaxClassificationCodeOld) > 0.0)">
                              <tns:TaxClassificationCodeNew>
                                 <xsl:if test="tns:TaxClassificationCodeNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:TaxClassificationCodeNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:TaxClassificationCodeNew"/>
                              </tns:TaxClassificationCodeNew>
                           </xsl:if>
                           <xsl:if test="(string-length(tns:TaxClassificationCodeNew) > 0.0) or (string-length(tns:TaxClassificationCodeOld) > 0.0)">
                              <tns:TaxClassificationCodeOld>
                                 <xsl:if test="tns:TaxClassificationCodeOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:TaxClassificationCodeOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:TaxClassificationCodeOld"/>
                              </tns:TaxClassificationCodeOld>
                           </xsl:if>
                           <xsl:if test="(string-length(tns:TaxExemptFlagNew) > 0.0) or (string-length(tns:TaxExemptFlagOld) > 0.0)">
                              <tns:TaxExemptFlagNew>
                                 <xsl:if test="tns:TaxExemptFlagNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:TaxExemptFlagNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:TaxExemptFlagNew"/>
                              </tns:TaxExemptFlagNew>
                           </xsl:if>
                           <xsl:if test="(string-length(tns:TaxExemptFlagNew) > 0.0) or (string-length(tns:TaxExemptFlagOld) > 0.0)">
                              <tns:TaxExemptFlagOld>
                                 <xsl:if test="tns:TaxExemptFlagOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:TaxExemptFlagOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:TaxExemptFlagOld"/>
                              </tns:TaxExemptFlagOld>
                           </xsl:if>
                           <xsl:if test="(string-length(tns:UnitSellingPriceNew) > 0.0) or (string-length(tns:UnitSellingPriceOld) > 0.0)">
                              <tns:UnitSellingPriceNew>
                                 <xsl:if test="tns:UnitSellingPriceNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:UnitSellingPriceNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:UnitSellingPriceNew"/>
                              </tns:UnitSellingPriceNew>
                           </xsl:if>
                           <xsl:if test="(string-length(tns:UnitSellingPriceNew) > 0.0) or (string-length(tns:UnitSellingPriceOld) > 0.0)">
                              <tns:UnitSellingPriceOld>
                                 <xsl:if test="tns:UnitSellingPriceOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:UnitSellingPriceOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:UnitSellingPriceOld"/>
                              </tns:UnitSellingPriceOld>
                           </xsl:if>
                           <xsl:if test="(string-length(tns:ActualCompletionDateOld) > 0.0) or (string-length(tns:ActualCompletionDateNew) > 0.0)">
                              <tns:ActualCompletionDateNew>
                                 <xsl:if test="tns:ActualCompletionDateNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:ActualCompletionDateNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:ActualCompletionDateNew"/>
                              </tns:ActualCompletionDateNew>
                           </xsl:if>
                           <xsl:if test="(string-length(tns:ActualCompletionDateOld) > 0.0) or (string-length(tns:ActualCompletionDateNew) > 0.0)">
                              <tns:ActualCompletionDateOld>
                                 <xsl:if test="tns:ActualCompletionDateOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:ActualCompletionDateOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:ActualCompletionDateOld"/>
                              </tns:ActualCompletionDateOld>
                           </xsl:if>
                           <xsl:if test="(string-length(tns:BillToSiteUseIdOld) > 0.0) or (string-length(tns:BillToSiteUseIdNew) > 0.0)">
                              <tns:BillToSiteUseIdNew>
                                 <xsl:if test="tns:BillToSiteUseIdNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:BillToSiteUseIdNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:BillToSiteUseIdNew"/>
                              </tns:BillToSiteUseIdNew>
                           </xsl:if>
                           <xsl:if test="(string-length(tns:BillToSiteUseIdOld) > 0.0) or (string-length(tns:BillToSiteUseIdNew) > 0.0)">
                              <tns:BillToSiteUseIdOld>
                                 <xsl:if test="tns:BillToSiteUseIdOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:BillToSiteUseIdOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:BillToSiteUseIdOld"/>
                              </tns:BillToSiteUseIdOld>
                           </xsl:if>
                           <xsl:if test="(string-length(tns:CarrierIdOld) > 0.0) or (string-length(tns:CarrierIdNew) > 0.0)">
                              <tns:CarrierIdNew>
                                 <xsl:if test="tns:CarrierIdNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:CarrierIdNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:CarrierIdNew"/>
                              </tns:CarrierIdNew>
                           </xsl:if>
                           <xsl:if test="(string-length(tns:CarrierIdOld) > 0.0) or (string-length(tns:CarrierIdNew) > 0.0)">
                              <tns:CarrierIdOld>
                                 <xsl:if test="tns:CarrierIdOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:CarrierIdOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:CarrierIdOld"/>
                              </tns:CarrierIdOld>
                           </xsl:if>
                           <xsl:if test="(string-length(tns:CustomerPoNumberOld) > 0.0) or (string-length(tns:CustomerPoNumberNew) > 0.0)">
                              <tns:CustomerPoNumberNew>
                                 <xsl:if test="tns:CustomerPoNumberNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:CustomerPoNumberNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:CustomerPoNumberNew"/>
                              </tns:CustomerPoNumberNew>
                           </xsl:if>
                           <xsl:if test="(string-length(tns:CustomerPoNumberOld) > 0.0) or (string-length(tns:CustomerPoNumberNew) > 0.0)">
                              <tns:CustomerPoNumberOld>
                                 <xsl:if test="tns:CustomerPoNumberOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:CustomerPoNumberOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:CustomerPoNumberOld"/>
                              </tns:CustomerPoNumberOld>
                           </xsl:if>
                           <xsl:if test="(string-length(tns:DemandClassCodeOld) > 0.0) or (string-length(tns:DemandClassCodeNew) > 0.0)">
                              <tns:DemandClassCodeNew>
                                 <xsl:if test="tns:DemandClassCodeNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:DemandClassCodeNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:DemandClassCodeNew"/>
                              </tns:DemandClassCodeNew>
                           </xsl:if>
                           <xsl:if test="(string-length(tns:DemandClassCodeOld) > 0.0) or (string-length(tns:DemandClassCodeNew) > 0.0)">
                              <tns:DemandClassCodeOld>
                                 <xsl:if test="tns:DemandClassCodeOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:DemandClassCodeOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:DemandClassCodeOld"/>
                              </tns:DemandClassCodeOld>
                           </xsl:if>
                           <xsl:if test="(string-length(tns:EarliestAcceptableShipDateOld) > 0.0) or (string-length(tns:EarliestAcceptableShipDateNew) > 0.0)">
                              <tns:EarliestAcceptableShipDateNew>
                                 <xsl:if test="tns:EarliestAcceptableShipDateNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:EarliestAcceptableShipDateNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:EarliestAcceptableShipDateNew"/>
                              </tns:EarliestAcceptableShipDateNew>
                           </xsl:if>
                           <xsl:if test="(string-length(tns:EarliestAcceptableShipDateOld) > 0.0) or (string-length(tns:EarliestAcceptableShipDateNew) > 0.0)">
                              <tns:EarliestAcceptableShipDateOld>
                                 <xsl:if test="tns:EarliestAcceptableShipDateOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:EarliestAcceptableShipDateOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:EarliestAcceptableShipDateOld"/>
                              </tns:EarliestAcceptableShipDateOld>
                           </xsl:if>
                           <xsl:if test="(string-length(tns:EstimateFulfillmentCostOld) > 0.0) or (string-length(tns:EstimateFulfillmentCostNew) > 0.0)">
                              <tns:EstimateFulfillmentCostNew>
                                 <xsl:if test="tns:EstimateFulfillmentCostNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:EstimateFulfillmentCostNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:EstimateFulfillmentCostNew"/>
                              </tns:EstimateFulfillmentCostNew>
                           </xsl:if>
                           <xsl:if test="(string-length(tns:EstimateFulfillmentCostOld) > 0.0) or (string-length(tns:EstimateFulfillmentCostNew) > 0.0)">
                              <tns:EstimateFulfillmentCostOld>
                                 <xsl:if test="tns:EstimateFulfillmentCostOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:EstimateFulfillmentCostOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:EstimateFulfillmentCostOld"/>
                              </tns:EstimateFulfillmentCostOld>
                           </xsl:if>
                           <xsl:if test="(string-length(tns:EstimateMarginOld) > 0.0) or (string-length(tns:EstimateMarginNew) > 0.0)">
                              <tns:EstimateMarginNew>
                                 <xsl:if test="tns:EstimateMarginNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:EstimateMarginNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:EstimateMarginNew"/>
                              </tns:EstimateMarginNew>
                           </xsl:if>
                           <xsl:if test="(string-length(tns:EstimateMarginOld) > 0.0) or (string-length(tns:EstimateMarginNew) > 0.0)">
                              <tns:EstimateMarginOld>
                                 <xsl:if test="tns:EstimateMarginOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:EstimateMarginOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:EstimateMarginOld"/>
                              </tns:EstimateMarginOld>
                           </xsl:if>
                           <xsl:if test="(string-length(tns:FulfillmentDateOld) > 0.0) or (string-length(tns:FulfillmentDateNew) > 0.0)">
                              <tns:FulfillmentDateNew>
                                 <xsl:if test="tns:FulfillmentDateNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:FulfillmentDateNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:FulfillmentDateNew"/>
                              </tns:FulfillmentDateNew>
                           </xsl:if>
                           <xsl:if test="(string-length(tns:FulfillmentDateOld) > 0.0) or (string-length(tns:FulfillmentDateNew) > 0.0)">
                              <tns:FulfillmentDateOld>
                                 <xsl:if test="tns:FulfillmentDateOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:FulfillmentDateOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:FulfillmentDateOld"/>
                              </tns:FulfillmentDateOld>
                           </xsl:if>
                           <xsl:if test="(string-length(tns:LatestAcceptableArrivalDateOld) > 0.0) or (string-length(tns:LatestAcceptableArrivalDateNew) > 0.0)">
                              <tns:LatestAcceptableArrivalDateNew>
                                 <xsl:if test="tns:LatestAcceptableArrivalDateNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:LatestAcceptableArrivalDateNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:LatestAcceptableArrivalDateNew"/>
                              </tns:LatestAcceptableArrivalDateNew>
                           </xsl:if>
                           <xsl:if test="(string-length(tns:LatestAcceptableArrivalDateOld) > 0.0) or (string-length(tns:LatestAcceptableArrivalDateNew) > 0.0)">
                              <tns:LatestAcceptableArrivalDateOld>
                                 <xsl:if test="tns:LatestAcceptableArrivalDateOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:LatestAcceptableArrivalDateOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:LatestAcceptableArrivalDateOld"/>
                              </tns:LatestAcceptableArrivalDateOld>
                           </xsl:if>
                           <xsl:if test="(string-length(tns:LatestAcceptableShipDateOld) > 0.0) or (string-length(tns:LatestAcceptableShipDateNew) > 0.0)">
                              <tns:LatestAcceptableShipDateNew>
                                 <xsl:if test="tns:LatestAcceptableShipDateNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:LatestAcceptableShipDateNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:LatestAcceptableShipDateNew"/>
                              </tns:LatestAcceptableShipDateNew>
                           </xsl:if>
                           <xsl:if test="(string-length(tns:LatestAcceptableShipDateOld) > 0.0) or (string-length(tns:LatestAcceptableShipDateNew) > 0.0)">
                              <tns:LatestAcceptableShipDateOld>
                                 <xsl:if test="tns:LatestAcceptableShipDateOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:LatestAcceptableShipDateOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:LatestAcceptableShipDateOld"/>
                              </tns:LatestAcceptableShipDateOld>
                           </xsl:if>
                           <xsl:if test="(string-length(tns:RemnantFlagOld) > 0.0) or (string-length(tns:RemnantFlagNew) > 0.0)">
                              <tns:RemnantFlagNew>
                                 <xsl:if test="tns:RemnantFlagNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:RemnantFlagNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:RemnantFlagNew"/>
                              </tns:RemnantFlagNew>
                           </xsl:if>
                           <xsl:if test="(string-length(tns:RemnantFlagOld) > 0.0) or (string-length(tns:RemnantFlagNew) > 0.0)">
                              <tns:RemnantFlagOld>
                                 <xsl:if test="tns:RemnantFlagOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:RemnantFlagOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:RemnantFlagOld"/>
                              </tns:RemnantFlagOld>
                           </xsl:if>
                           <xsl:if test="(string-length(tns:ReturnReasonCodeOld) > 0.0) or (string-length(tns:ReturnReasonCodeNew) > 0.0)">
                              <tns:ReturnReasonCodeNew>
                                 <xsl:if test="tns:ReturnReasonCodeNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="tns:ReturnReasonCodeNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="tns:ReturnReasonCodeNew"/>
                              </tns:ReturnReasonCodeNew>
                           </xsl:if>
                           <xsl:if test="(string-length(tns:ReturnReasonCodeOld) > 0.0) or (string-length(tns:ReturnReasonCodeNew) > 0.0)">
                              <tns:ReturnReasonCodeOld>
                                 <xsl:value-of select="tns:ReturnReasonCodeOld"/>
                              </tns:ReturnReasonCodeOld>
                           </xsl:if>
                           <xsl:for-each select="tns:OrderUpdateFulfillLineDetailTR">
                              <tns:OrderUpdateFulfillLineDetailTR>
                                 <tns:FulfillmentOrderLineDetailId>
                                    <xsl:value-of select="tns:FulfillmentOrderLineDetailId"/>
                                 </tns:FulfillmentOrderLineDetailId>
                                 <xsl:if test="tns:TaskType">
                                    <tns:TaskType>
                                       <xsl:if test="tns:TaskType/@xsi:nil">
                                          <xsl:attribute name="xsi:nil">
                                             <xsl:value-of select="tns:TaskType/@xsi:nil"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:value-of select="tns:TaskType"/>
                                    </tns:TaskType>
                                 </xsl:if>
                                 <xsl:if test="tns:BillingTransactionNumber">
                                    <tns:BillingTransactionNumber>
                                       <xsl:if test="tns:BillingTransactionNumber/@xsi:nil">
                                          <xsl:attribute name="xsi:nil">
                                             <xsl:value-of select="tns:BillingTransactionNumber/@xsi:nil"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:value-of select="tns:BillingTransactionNumber"/>
                                    </tns:BillingTransactionNumber>
                                 </xsl:if>
                                 <xsl:if test="tns:BillingTransactionDate">
                                    <tns:BillingTransactionDate>
                                       <xsl:if test="tns:BillingTransactionDate/@xsi:nil">
                                          <xsl:attribute name="xsi:nil">
                                             <xsl:value-of select="tns:BillingTransactionDate/@xsi:nil"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:value-of select="tns:BillingTransactionDate"/>
                                    </tns:BillingTransactionDate>
                                 </xsl:if>
                                 <xsl:if test="tns:BillingTransactionAmount">
                                    <tns:BillingTransactionAmount>
                                       <xsl:if test="tns:BillingTransactionAmount/@xsi:nil">
                                          <xsl:attribute name="xsi:nil">
                                             <xsl:value-of select="tns:BillingTransactionAmount/@xsi:nil"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:value-of select="tns:BillingTransactionAmount"/>
                                    </tns:BillingTransactionAmount>
                                 </xsl:if>
                                 <xsl:if test="tns:WaybillNumber">
                                    <tns:WaybillNumber>
                                       <xsl:if test="tns:WaybillNumber/@xsi:nil">
                                          <xsl:attribute name="xsi:nil">
                                             <xsl:value-of select="tns:WaybillNumber/@xsi:nil"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:value-of select="tns:WaybillNumber"/>
                                    </tns:WaybillNumber>
                                 </xsl:if>
                                 <xsl:if test="tns:BillOfLaddingNumber">
                                    <tns:BillOfLaddingNumber>
                                       <xsl:if test="tns:BillOfLaddingNumber/@xsi:nil">
                                          <xsl:attribute name="xsi:nil">
                                             <xsl:value-of select="tns:BillOfLaddingNumber/@xsi:nil"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:value-of select="tns:BillOfLaddingNumber"/>
                                    </tns:BillOfLaddingNumber>
                                 </xsl:if>
                                 <xsl:if test="tns:TrackingNumber">
                                    <tns:TrackingNumber>
                                       <xsl:if test="tns:TrackingNumber/@xsi:nil">
                                          <xsl:attribute name="xsi:nil">
                                             <xsl:value-of select="tns:TrackingNumber/@xsi:nil"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:value-of select="tns:TrackingNumber"/>
                                    </tns:TrackingNumber>
                                 </xsl:if>
                                 <xsl:if test="tns:Quantity">
                                    <tns:Quantity>
                                       <xsl:if test="tns:Quantity/@xsi:nil">
                                          <xsl:attribute name="xsi:nil">
                                             <xsl:value-of select="tns:Quantity/@xsi:nil"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:value-of select="tns:Quantity"/>
                                    </tns:Quantity>
                                 </xsl:if>
                                 <xsl:if test="tns:Status">
                                    <tns:Status>
                                       <xsl:if test="tns:Status/@xsi:nil">
                                          <xsl:attribute name="xsi:nil">
                                             <xsl:value-of select="tns:Status/@xsi:nil"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:value-of select="tns:Status"/>
                                    </tns:Status>
                                 </xsl:if>
                                 <xsl:if test="tns:DeliveryName">
                                    <tns:DeliveryName>
                                       <xsl:if test="tns:DeliveryName/@xsi:nil">
                                          <xsl:attribute name="xsi:nil">
                                             <xsl:value-of select="tns:DeliveryName/@xsi:nil"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:value-of select="tns:DeliveryName"/>
                                    </tns:DeliveryName>
                                 </xsl:if>
                                 <xsl:if test="tns:RmaReceiptNumber">
                                    <tns:RmaReceiptNumber>
                                       <xsl:if test="tns:RmaReceiptNumber/@xsi:nil">
                                          <xsl:attribute name="xsi:nil">
                                             <xsl:value-of select="tns:RmaReceiptNumber/@xsi:nil"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:value-of select="tns:RmaReceiptNumber"/>
                                    </tns:RmaReceiptNumber>
                                 </xsl:if>
                                 <xsl:if test="tns:RmaReceiptLineNumber">
                                    <tns:RmaReceiptLineNumber>
                                       <xsl:if test="tns:RmaReceiptLineNumber/@xsi:nil">
                                          <xsl:attribute name="xsi:nil">
                                             <xsl:value-of select="tns:RmaReceiptLineNumber/@xsi:nil"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:value-of select="tns:RmaReceiptLineNumber"/>
                                    </tns:RmaReceiptLineNumber>
                                 </xsl:if>
                                 <xsl:if test="tns:RmaReceiptDate">
                                    <tns:RmaReceiptDate>
                                       <xsl:if test="tns:RmaReceiptDate/@xsi:nil">
                                          <xsl:attribute name="xsi:nil">
                                             <xsl:value-of select="tns:RmaReceiptDate/@xsi:nil"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:value-of select="tns:RmaReceiptDate"/>
                                    </tns:RmaReceiptDate>
                                 </xsl:if>
                                 <xsl:if test="tns:RmaReceiptTransactionId">
                                    <tns:RmaReceiptTransactionId>
                                       <xsl:if test="tns:RmaReceiptTransactionId/@xsi:nil">
                                          <xsl:attribute name="xsi:nil">
                                             <xsl:value-of select="tns:RmaReceiptTransactionId/@xsi:nil"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:value-of select="tns:RmaReceiptTransactionId"/>
                                    </tns:RmaReceiptTransactionId>
                                 </xsl:if>
                                 <xsl:if test="tns:CustomerTrxLineId">
                                    <tns:CustomerTrxLineId>
                                       <xsl:if test="tns:CustomerTrxLineId/@xsi:nil">
                                          <xsl:attribute name="xsi:nil">
                                             <xsl:value-of select="tns:CustomerTrxLineId/@xsi:nil"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:value-of select="tns:CustomerTrxLineId"/>
                                    </tns:CustomerTrxLineId>
                                 </xsl:if>
                              </tns:OrderUpdateFulfillLineDetailTR>
                           </xsl:for-each>
                        </tns:OrderUpdateFulfillLineTR>
                     </xsl:for-each>
                  </tns:OrderUpdateLineTR>
               </xsl:for-each>
            </inp:OrderUpdateHeader>
         </xsl:for-each>
      </inp:MediatorInput>
   </xsl:template>
</xsl:stylesheet>
