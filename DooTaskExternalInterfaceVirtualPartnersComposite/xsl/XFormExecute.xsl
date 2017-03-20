<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:svcdoc="http://xmlns.oracle.com/Services/Documentation/V1" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:ns0="http://xmlns.oracle.com/EnterpriseServices/FulfillmentOrder/V1" xmlns:ebo="http://xmlns.oracle.com/EnterpriseObjects/Core/EBO/FulfillmentOrder/V1" xmlns:ns2="http://xmlns.oracle.com/EnterpriseObjects/Core/Custom/EBO/FulfillmentOrder/V1" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:ns3="http://xmlns.oracle.com/EnterpriseObjects/Core/Custom/Common/V2" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ns1="http://schemas.xmlsoap.org/ws/2003/03/addressing" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:ns5="urn:oasis:names:tc:xacml:2.0:policy:schema:cd:04" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:corecom="http://xmlns.oracle.com/EnterpriseObjects/Core/Common/V2" xmlns:bpmn="http://schemas.oracle.com/bpm/xpath" xmlns:ns4="urn:oasis:names:tc:xacml:2.0:context:schema:cd:04" xmlns:ebs="http://xmlns.oracle.com/EnterpriseServices/Core/FulfillmentOrder/V1" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl svcdoc ns0 ebo ns2 soap ns3 ns1 ns5 xsd corecom ns4 ebs xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref bpmn ldap">
   <xsl:template match="/">
      <ebo:ExecuteFulfillmentOrderFulfillmentTaskResponseEBM>
         <corecom:EBMHeader>
            <corecom:VerbCode>
               <xsl:value-of select="/ebo:ExecuteFulfillmentOrderFulfillmentTaskEBM/corecom:EBMHeader/corecom:VerbCode"/>
            </corecom:VerbCode>
         </corecom:EBMHeader>
         <ebo:DataArea>
            <ebo:ExecuteFulfillmentOrderFulfillmentTaskResponse>
               <corecom:Identification>
                  <corecom:ApplicationObjectKey>
                     <corecom:ContextID>
                        <xsl:attribute name="schemeID">
                           <xsl:value-of select="/ebo:ExecuteFulfillmentOrderFulfillmentTaskEBM/ebo:DataArea/ebo:ExecuteFulfillmentOrderFulfillmentTask/corecom:Identification/corecom:ApplicationObjectKey/corecom:ContextID/@schemeID"/>
                        </xsl:attribute>
                        <xsl:value-of select="/ebo:ExecuteFulfillmentOrderFulfillmentTaskEBM/ebo:DataArea/ebo:ExecuteFulfillmentOrderFulfillmentTask/corecom:Identification/corecom:ApplicationObjectKey/corecom:ContextID"/>
                     </corecom:ContextID>
                  </corecom:ApplicationObjectKey>
               </corecom:Identification>
               <xsl:for-each select="/ebo:ExecuteFulfillmentOrderFulfillmentTaskEBM/ebo:DataArea/ebo:ExecuteFulfillmentOrderFulfillmentTask/ebo:FulfillmentOrderLine">
                  <ebo:FulfillmentOrderLine>
                     <corecom:Identification>
                        <corecom:ApplicationObjectKey>
                           <corecom:ID>
                              <xsl:value-of select="corecom:Identification/corecom:ApplicationObjectKey/corecom:ID"/>
                           </corecom:ID>
                        </corecom:ApplicationObjectKey>
                     </corecom:Identification>
                     <xsl:for-each select="ebo:FulfillmentOrderSchedule">
                        <ebo:FulfillmentOrderSchedule>
                           <xsl:copy-of select="corecom:Identification"/>
                           <corecom:Status>
                              <xsl:choose>
                                 <xsl:when test="starts-with(/ebo:ExecuteFulfillmentOrderFulfillmentTaskEBM/ebo:DataArea/ebo:ExecuteFulfillmentOrderFulfillmentTask/corecom:SalesOrderReference/corecom:SalesOrderIdentification/corecom:ID,&quot;EXP&quot;) and starts-with(../../ebo:FulfillmentTaskTypeCode,'CustomerCreditCheckTaskType')">
                                    <corecom:Code>
                                       <xsl:text disable-output-escaping="no">CUSTOMER_CREDIT_CHECK_PASSED</xsl:text>
                                    </corecom:Code>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <corecom:Code>
                                       <xsl:text disable-output-escaping="no">AWAIT_RESPONSE</xsl:text>
                                    </corecom:Code>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </corecom:Status>
                        </ebo:FulfillmentOrderSchedule>
                     </xsl:for-each>
                  </ebo:FulfillmentOrderLine>
               </xsl:for-each>
               <ebo:FulfillmentTaskTypeCode>
                  <xsl:value-of select="/ebo:ExecuteFulfillmentOrderFulfillmentTaskEBM/ebo:DataArea/ebo:ExecuteFulfillmentOrderFulfillmentTask/ebo:FulfillmentTaskTypeCode"/>
               </ebo:FulfillmentTaskTypeCode>
            </ebo:ExecuteFulfillmentOrderFulfillmentTaskResponse>
         </ebo:DataArea>
      </ebo:ExecuteFulfillmentOrderFulfillmentTaskResponseEBM>
   </xsl:template>
</xsl:stylesheet>
