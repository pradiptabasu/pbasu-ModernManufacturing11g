<?xml version="1.0" encoding="UTF-8" ?>
<?oracle-xsl-mapper
  <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="WSDL">
      <schema location="../POLL_SCM_WIE_WORK_ORDERS_V.wsdl"/>
      <rootElement name="WieWorkOrdersVCollection" namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/POLL_SCM_WIE_WORK_ORDERS_V"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="WSDL">
      <schema location="../POLL_SCM_WIE_WORK_ORDERS_V.wsdl"/>
      <rootElement name="WieWorkOrdersVCollection" namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/POLL_SCM_WIE_WORK_ORDERS_V"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 11.1.1.7.8(build 150622.2350.0222) AT [THU AUG 11 14:10:02 IST 2016]. -->
?>
<xsl:stylesheet version="1.0"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/"
                xmlns:aia="http://www.oracle.com/XSL/Transform/java/oracle.apps.aia.core.xpath.AIAFunctions"
                xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/ModernManufacturing_v1_111171/Poll_SCM_Manufacturing_WorkOrders/POLL_SCM_WIE_WORK_ORDERS_V"
                xmlns:ns0="http://www.example.org"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:top="http://xmlns.oracle.com/pcbpel/adapter/db/top/POLL_SCM_WIE_WORK_ORDERS_V"
                xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:med="http://schemas.oracle.com/mediator/xpath"
                xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath"
                xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions"
                xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:bpmn="http://schemas.oracle.com/bpm/xpath"
                xmlns:ora="http://schemas.oracle.com/xpath/extension"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap"
                exclude-result-prefixes="xsi xsl tns ns0 top plt xsd wsdl xp20 bpws aia bpel mhdr oraext dvm hwf med ids bpm xdk xref bpmn ora socket ldap">
  <xsl:template match="/">
    <top:WieWorkOrdersVCollection>
      <xsl:for-each select="/top:WieWorkOrdersVCollection/top:WieWorkOrdersV">
        <top:WieWorkOrdersV>
          <top:rowId>
            <xsl:value-of select="top:rowId"/>
          </top:rowId>
          <xsl:if test="top:objectVersionNumber">
            <top:objectVersionNumber>
              <xsl:value-of select="top:objectVersionNumber"/>
            </top:objectVersionNumber>
          </xsl:if>
          <xsl:if test="top:organizationId">
            <top:organizationId>
              <xsl:value-of select="top:organizationId"/>
            </top:organizationId>
          </xsl:if>
          <xsl:if test="top:workOrderId">
            <top:workOrderId>
              <xsl:value-of select="top:workOrderId"/>
            </top:workOrderId>
          </xsl:if>
          <xsl:if test="top:workOrderNumber">
            <top:workOrderNumber>
              <xsl:value-of select="top:workOrderNumber"/>
            </top:workOrderNumber>
          </xsl:if>
          <xsl:if test="top:workOrderDescription">
            <top:workOrderDescription>
              <xsl:value-of select="top:workOrderDescription"/>
            </top:workOrderDescription>
          </xsl:if>
          <xsl:if test="top:workMethodId">
            <top:workMethodId>
              <xsl:value-of select="top:workMethodId"/>
            </top:workMethodId>
          </xsl:if>
          <xsl:if test="top:workMethodCode">
            <top:workMethodCode>
              <xsl:value-of select="top:workMethodCode"/>
            </top:workMethodCode>
          </xsl:if>
          <xsl:if test="top:workOrderType">
            <top:workOrderType>
              <xsl:value-of select="top:workOrderType"/>
            </top:workOrderType>
          </xsl:if>
          <xsl:if test="top:workOrderSubType">
            <top:workOrderSubType>
              <xsl:value-of select="top:workOrderSubType"/>
            </top:workOrderSubType>
          </xsl:if>
          <xsl:if test="top:inventoryItemId">
            <top:inventoryItemId>
              <xsl:value-of select="top:inventoryItemId"/>
            </top:inventoryItemId>
          </xsl:if>
          <xsl:if test="top:itemRevision">
            <top:itemRevision>
              <xsl:value-of select="top:itemRevision"/>
            </top:itemRevision>
          </xsl:if>
          <xsl:if test="top:workDefinitionAsOfDate">
            <top:workDefinitionAsOfDate>
              <xsl:value-of select="top:workDefinitionAsOfDate"/>
            </top:workDefinitionAsOfDate>
          </xsl:if>
          <xsl:if test="top:workDefinitionId">
            <top:workDefinitionId>
              <xsl:value-of select="top:workDefinitionId"/>
            </top:workDefinitionId>
          </xsl:if>
          <xsl:if test='top:workDefinitionVersionId and (top:workDefinitionVersionId != "")'>
            <top:workDefinitionVersionId>
              <xsl:value-of select="top:workDefinitionVersionId"/>
            </top:workDefinitionVersionId>
          </xsl:if>
          <xsl:if test='top:workOrderPriority and (top:workOrderPriority != "")'>
            <top:workOrderPriority>
              <xsl:value-of select="top:workOrderPriority"/>
            </top:workOrderPriority>
          </xsl:if>
          <xsl:if test="top:workOrderStatusId">
            <top:workOrderStatusId>
              <xsl:value-of select="top:workOrderStatusId"/>
            </top:workOrderStatusId>
          </xsl:if>
          <xsl:if test="top:userStatusCode">
            <top:userStatusCode>
              <xsl:value-of select="top:userStatusCode"/>
            </top:userStatusCode>
          </xsl:if>
          <xsl:if test="top:systemStatusCode">
            <top:systemStatusCode>
              <xsl:value-of select="top:systemStatusCode"/>
            </top:systemStatusCode>
          </xsl:if>
          <xsl:if test="top:schedulingMethod">
            <top:schedulingMethod>
              <xsl:value-of select="top:schedulingMethod"/>
            </top:schedulingMethod>
          </xsl:if>
          <xsl:if test="top:plannedStartQuantity">
            <top:plannedStartQuantity>
              <xsl:value-of select="top:plannedStartQuantity"/>
            </top:plannedStartQuantity>
          </xsl:if>
          <xsl:if test='top:nettableSupplyQtyOverride and (top:nettableSupplyQtyOverride != "")'>
            <top:nettableSupplyQtyOverride>
              <xsl:value-of select="top:nettableSupplyQtyOverride"/>
            </top:nettableSupplyQtyOverride>
          </xsl:if>
          <xsl:if test="top:uomCode">
            <top:uomCode>
              <xsl:value-of select="top:uomCode"/>
            </top:uomCode>
          </xsl:if>
          <xsl:if test="top:firmPlannedFlag">
            <top:firmPlannedFlag>
              <xsl:value-of select="top:firmPlannedFlag"/>
            </top:firmPlannedFlag>
          </xsl:if>
          <xsl:if test="top:plannedStartDate">
            <top:plannedStartDate>
              <xsl:value-of select="top:plannedStartDate"/>
            </top:plannedStartDate>
          </xsl:if>
          <xsl:if test="top:plannedCompletionDate">
            <top:plannedCompletionDate>
              <xsl:value-of select="top:plannedCompletionDate"/>
            </top:plannedCompletionDate>
          </xsl:if>
          <xsl:if test="top:actualStartDate">
            <top:actualStartDate>
              <xsl:value-of select="top:actualStartDate"/>
            </top:actualStartDate>
          </xsl:if>
          <xsl:if test="top:actualCompletionDate">
            <top:actualCompletionDate>
              <xsl:value-of select="top:actualCompletionDate"/>
            </top:actualCompletionDate>
          </xsl:if>
          <xsl:if test="top:releasedDate">
            <top:releasedDate>
              <xsl:value-of select="top:releasedDate"/>
            </top:releasedDate>
          </xsl:if>
          <xsl:if test='top:closedDate and (top:closedDate != "")'>
            <top:closedDate>
              <xsl:value-of select="top:closedDate"/>
            </top:closedDate>
          </xsl:if>
          <xsl:if test='top:canceledDate and (top:canceledDate != "")'>
            <top:canceledDate>
              <xsl:value-of select="top:canceledDate"/>
            </top:canceledDate>
          </xsl:if>
          <xsl:if test="top:canceledReason">
            <top:canceledReason>
              <xsl:value-of select="top:canceledReason"/>
            </top:canceledReason>
          </xsl:if>
          <xsl:if test="top:statusChangeReason">
            <top:statusChangeReason>
              <xsl:value-of select="top:statusChangeReason"/>
            </top:statusChangeReason>
          </xsl:if>
          <xsl:if test="top:completedQuantity">
            <top:completedQuantity>
              <xsl:value-of select="top:completedQuantity"/>
            </top:completedQuantity>
          </xsl:if>
          <xsl:if test='top:scrappedQuantity and (top:scrappedQuantity != "")'>
            <top:scrappedQuantity>
              <xsl:value-of select="top:scrappedQuantity"/>
            </top:scrappedQuantity>
          </xsl:if>
          <xsl:if test='top:rejectedQuantity and (top:rejectedQuantity != "")'>
            <top:rejectedQuantity>
              <xsl:value-of select="top:rejectedQuantity"/>
            </top:rejectedQuantity>
          </xsl:if>
          <xsl:if test="top:overcomplToleranceType">
            <top:overcomplToleranceType>
              <xsl:value-of select="top:overcomplToleranceType"/>
            </top:overcomplToleranceType>
          </xsl:if>
          <xsl:if test='top:overcomplToleranceValue and (top:overcomplToleranceValue != "")'>
            <top:overcomplToleranceValue>
              <xsl:value-of select="top:overcomplToleranceValue"/>
            </top:overcomplToleranceValue>
          </xsl:if>
          <xsl:if test="top:complSubinventoryCode">
            <top:complSubinventoryCode>
              <xsl:value-of select="top:complSubinventoryCode"/>
            </top:complSubinventoryCode>
          </xsl:if>
          <xsl:if test='top:complLocatorId and (top:complLocatorId != "")'>
            <top:complLocatorId>
              <xsl:value-of select="top:complLocatorId"/>
            </top:complLocatorId>
          </xsl:if>
          <xsl:if test="top:supplyType">
            <top:supplyType>
              <xsl:value-of select="top:supplyType"/>
            </top:supplyType>
          </xsl:if>
          <xsl:if test="top:serialTrackingFlag">
            <top:serialTrackingFlag>
              <xsl:value-of select="top:serialTrackingFlag"/>
            </top:serialTrackingFlag>
          </xsl:if>
          <xsl:if test="top:backToBackFlag">
            <top:backToBackFlag>
              <xsl:value-of select="top:backToBackFlag"/>
            </top:backToBackFlag>
          </xsl:if>
          <xsl:if test="top:orchestrationCode">
            <top:orchestrationCode>
              <xsl:value-of select="top:orchestrationCode"/>
            </top:orchestrationCode>
          </xsl:if>
          <xsl:if test="top:interfaceSourceCode">
            <top:interfaceSourceCode>
              <xsl:value-of select="top:interfaceSourceCode"/>
            </top:interfaceSourceCode>
          </xsl:if>
          <xsl:if test='top:scoSupplyOrderId and (top:scoSupplyOrderId != "")'>
            <top:scoSupplyOrderId>
              <xsl:value-of select="top:scoSupplyOrderId"/>
            </top:scoSupplyOrderId>
          </xsl:if>
          <xsl:if test="top:contractMfgFlag">
            <top:contractMfgFlag>
              <xsl:value-of select="top:contractMfgFlag"/>
            </top:contractMfgFlag>
          </xsl:if>
          <xsl:if test='top:cmPoHeaderId and (top:cmPoHeaderId != "")'>
            <top:cmPoHeaderId>
              <xsl:value-of select="top:cmPoHeaderId"/>
            </top:cmPoHeaderId>
          </xsl:if>
          <xsl:if test='top:cmPoLineId and (top:cmPoLineId != "")'>
            <top:cmPoLineId>
              <xsl:value-of select="top:cmPoLineId"/>
            </top:cmPoLineId>
          </xsl:if>
          <xsl:if test='top:cmPoLineLocId and (top:cmPoLineLocId != "")'>
            <top:cmPoLineLocId>
              <xsl:value-of select="top:cmPoLineLocId"/>
            </top:cmPoLineLocId>
          </xsl:if>
          <xsl:if test="top:sourceSystemType">
            <top:sourceSystemType>
              <xsl:value-of select="top:sourceSystemType"/>
            </top:sourceSystemType>
          </xsl:if>
          <xsl:if test='top:sourceSystemId and (top:sourceSystemId != "")'>
            <top:sourceSystemId>
              <xsl:value-of select="top:sourceSystemId"/>
            </top:sourceSystemId>
          </xsl:if>
          <xsl:if test="top:sourceHeaderRef">
            <top:sourceHeaderRef>
              <xsl:value-of select="top:sourceHeaderRef"/>
            </top:sourceHeaderRef>
          </xsl:if>
          <xsl:if test='top:sourceHeaderRefId and (top:sourceHeaderRefId != "")'>
            <top:sourceHeaderRefId>
              <xsl:value-of select="top:sourceHeaderRefId"/>
            </top:sourceHeaderRefId>
          </xsl:if>
          <xsl:if test="top:sourceLineRef">
            <top:sourceLineRef>
              <xsl:value-of select="top:sourceLineRef"/>
            </top:sourceLineRef>
          </xsl:if>
          <xsl:if test='top:sourceLineRefId and (top:sourceLineRefId != "")'>
            <top:sourceLineRefId>
              <xsl:value-of select="top:sourceLineRefId"/>
            </top:sourceLineRefId>
          </xsl:if>
          <xsl:if test="top:orderLessFlag">
            <top:orderLessFlag>
              <xsl:value-of select="top:orderLessFlag"/>
            </top:orderLessFlag>
          </xsl:if>
          <xsl:if test="top:createdBy">
            <top:createdBy>
              <xsl:value-of select="top:createdBy"/>
            </top:createdBy>
          </xsl:if>
          <xsl:if test="top:creationDate">
            <top:creationDate>
              <xsl:value-of select="top:creationDate"/>
            </top:creationDate>
          </xsl:if>
          <xsl:if test="top:lastUpdatedBy">
            <top:lastUpdatedBy>
              <xsl:value-of select="top:lastUpdatedBy"/>
            </top:lastUpdatedBy>
          </xsl:if>
          <xsl:if test="top:lastUpdateDate">
            <top:lastUpdateDate>
              <xsl:value-of select="top:lastUpdateDate"/>
            </top:lastUpdateDate>
          </xsl:if>
          <xsl:if test="top:lastUpdateLogin">
            <top:lastUpdateLogin>
              <xsl:value-of select="top:lastUpdateLogin"/>
            </top:lastUpdateLogin>
          </xsl:if>
          <xsl:if test="top:attributeCategory">
            <top:attributeCategory>
              <xsl:value-of select="top:attributeCategory"/>
            </top:attributeCategory>
          </xsl:if>
          <xsl:if test="top:attributeChar1">
            <top:attributeChar1>
              <xsl:value-of select="top:attributeChar1"/>
            </top:attributeChar1>
          </xsl:if>
          <xsl:if test="top:attributeChar2">
            <top:attributeChar2>
              <xsl:value-of select="top:attributeChar2"/>
            </top:attributeChar2>
          </xsl:if>
          <xsl:if test="top:attributeChar3">
            <top:attributeChar3>
              <xsl:value-of select="top:attributeChar3"/>
            </top:attributeChar3>
          </xsl:if>
          <xsl:if test="top:attributeChar4">
            <top:attributeChar4>
              <xsl:value-of select="top:attributeChar4"/>
            </top:attributeChar4>
          </xsl:if>
          <xsl:if test="top:attributeChar5">
            <top:attributeChar5>
              <xsl:value-of select="top:attributeChar5"/>
            </top:attributeChar5>
          </xsl:if>
          <xsl:if test="top:attributeChar6">
            <top:attributeChar6>
              <xsl:value-of select="top:attributeChar6"/>
            </top:attributeChar6>
          </xsl:if>
          <xsl:if test="top:attributeChar7">
            <top:attributeChar7>
              <xsl:value-of select="top:attributeChar7"/>
            </top:attributeChar7>
          </xsl:if>
          <xsl:if test="top:attributeChar8">
            <top:attributeChar8>
              <xsl:value-of select="top:attributeChar8"/>
            </top:attributeChar8>
          </xsl:if>
          <xsl:if test="top:attributeChar9">
            <top:attributeChar9>
              <xsl:value-of select="top:attributeChar9"/>
            </top:attributeChar9>
          </xsl:if>
          <xsl:if test="top:attributeChar10">
            <top:attributeChar10>
              <xsl:value-of select="top:attributeChar10"/>
            </top:attributeChar10>
          </xsl:if>
          <xsl:if test="top:attributeChar11">
            <top:attributeChar11>
              <xsl:value-of select="top:attributeChar11"/>
            </top:attributeChar11>
          </xsl:if>
          <xsl:if test="top:attributeChar12">
            <top:attributeChar12>
              <xsl:value-of select="top:attributeChar12"/>
            </top:attributeChar12>
          </xsl:if>
          <xsl:if test="top:attributeChar13">
            <top:attributeChar13>
              <xsl:value-of select="top:attributeChar13"/>
            </top:attributeChar13>
          </xsl:if>
          <xsl:if test="top:attributeChar14">
            <top:attributeChar14>
              <xsl:value-of select="top:attributeChar14"/>
            </top:attributeChar14>
          </xsl:if>
          <xsl:if test="top:attributeChar15">
            <top:attributeChar15>
              <xsl:value-of select="top:attributeChar15"/>
            </top:attributeChar15>
          </xsl:if>
          <xsl:if test="top:attributeChar16">
            <top:attributeChar16>
              <xsl:value-of select="top:attributeChar16"/>
            </top:attributeChar16>
          </xsl:if>
          <xsl:if test="top:attributeChar17">
            <top:attributeChar17>
              <xsl:value-of select="top:attributeChar17"/>
            </top:attributeChar17>
          </xsl:if>
          <xsl:if test="top:attributeChar18">
            <top:attributeChar18>
              <xsl:value-of select="top:attributeChar18"/>
            </top:attributeChar18>
          </xsl:if>
          <xsl:if test="top:attributeChar19">
            <top:attributeChar19>
              <xsl:value-of select="top:attributeChar19"/>
            </top:attributeChar19>
          </xsl:if>
          <xsl:if test="top:attributeChar20">
            <top:attributeChar20>
              <xsl:value-of select="top:attributeChar20"/>
            </top:attributeChar20>
          </xsl:if>
          <xsl:if test='top:attributeNumber1 and (top:attributeNumber1 != "")'>
            <top:attributeNumber1>
              <xsl:value-of select="top:attributeNumber1"/>
            </top:attributeNumber1>
          </xsl:if>
          <xsl:if test='top:attributeNumber2 and (top:attributeNumber2 != "")'>
            <top:attributeNumber2>
              <xsl:value-of select="top:attributeNumber2"/>
            </top:attributeNumber2>
          </xsl:if>
          <xsl:if test='top:attributeNumber3 and (top:attributeNumber3 != "")'>
            <top:attributeNumber3>
              <xsl:value-of select="top:attributeNumber3"/>
            </top:attributeNumber3>
          </xsl:if>
          <xsl:if test='top:attributeNumber4 and (top:attributeNumber4 != "")'>
            <top:attributeNumber4>
              <xsl:value-of select="top:attributeNumber4"/>
            </top:attributeNumber4>
          </xsl:if>
          <xsl:if test='top:attributeNumber5 and (top:attributeNumber5 != "")'>
            <top:attributeNumber5>
              <xsl:value-of select="top:attributeNumber5"/>
            </top:attributeNumber5>
          </xsl:if>
          <xsl:if test='top:attributeNumber6 and (top:attributeNumber6 != "")'>
            <top:attributeNumber6>
              <xsl:value-of select="top:attributeNumber6"/>
            </top:attributeNumber6>
          </xsl:if>
          <xsl:if test='top:attributeNumber7 and (top:attributeNumber7 != "")'>
            <top:attributeNumber7>
              <xsl:value-of select="top:attributeNumber7"/>
            </top:attributeNumber7>
          </xsl:if>
          <xsl:if test='top:attributeNumber8 and (top:attributeNumber8 != "")'>
            <top:attributeNumber8>
              <xsl:value-of select="top:attributeNumber8"/>
            </top:attributeNumber8>
          </xsl:if>
          <xsl:if test='top:attributeNumber9 and (top:attributeNumber9 != "")'>
            <top:attributeNumber9>
              <xsl:value-of select="top:attributeNumber9"/>
            </top:attributeNumber9>
          </xsl:if>
          <xsl:if test='top:attributeNumber10 and (top:attributeNumber10 != "")'>
            <top:attributeNumber10>
              <xsl:value-of select="top:attributeNumber10"/>
            </top:attributeNumber10>
          </xsl:if>
          <xsl:if test='top:attributeDate1 and (top:attributeDate1 != "")'>
            <top:attributeDate1>
              <xsl:value-of select="top:attributeDate1"/>
            </top:attributeDate1>
          </xsl:if>
          <xsl:if test='top:attributeDate2 and (top:attributeDate2 != "")'>
            <top:attributeDate2>
              <xsl:value-of select="top:attributeDate2"/>
            </top:attributeDate2>
          </xsl:if>
          <xsl:if test='top:attributeDate3 and (top:attributeDate3 != "")'>
            <top:attributeDate3>
              <xsl:value-of select="top:attributeDate3"/>
            </top:attributeDate3>
          </xsl:if>
          <xsl:if test='top:attributeDate4 and (top:attributeDate4 != "")'>
            <top:attributeDate4>
              <xsl:value-of select="top:attributeDate4"/>
            </top:attributeDate4>
          </xsl:if>
          <xsl:if test='top:attributeDate5 and (top:attributeDate5 != "")'>
            <top:attributeDate5>
              <xsl:value-of select="top:attributeDate5"/>
            </top:attributeDate5>
          </xsl:if>
          <xsl:if test='top:attributeTimestamp1 and (top:attributeTimestamp1 != "")'>
            <top:attributeTimestamp1>
              <xsl:value-of select="top:attributeTimestamp1"/>
            </top:attributeTimestamp1>
          </xsl:if>
          <xsl:if test='top:attributeTimestamp2 and (top:attributeTimestamp2 != "")'>
            <top:attributeTimestamp2>
              <xsl:value-of select="top:attributeTimestamp2"/>
            </top:attributeTimestamp2>
          </xsl:if>
          <xsl:if test='top:attributeTimestamp3 and (top:attributeTimestamp3 != "")'>
            <top:attributeTimestamp3>
              <xsl:value-of select="top:attributeTimestamp3"/>
            </top:attributeTimestamp3>
          </xsl:if>
          <xsl:if test='top:attributeTimestamp4 and (top:attributeTimestamp4 != "")'>
            <top:attributeTimestamp4>
              <xsl:value-of select="top:attributeTimestamp4"/>
            </top:attributeTimestamp4>
          </xsl:if>
          <xsl:if test='top:attributeTimestamp5 and (top:attributeTimestamp5 != "")'>
            <top:attributeTimestamp5>
              <xsl:value-of select="top:attributeTimestamp5"/>
            </top:attributeTimestamp5>
          </xsl:if>
          <xsl:if test='top:requestId and (top:requestId != "")'>
            <top:requestId>
              <xsl:value-of select="top:requestId"/>
            </top:requestId>
          </xsl:if>
          <xsl:if test="top:jobDefinitionName">
            <top:jobDefinitionName>
              <xsl:value-of select="top:jobDefinitionName"/>
            </top:jobDefinitionName>
          </xsl:if>
          <xsl:if test="top:jobDefinitionPackage">
            <top:jobDefinitionPackage>
              <xsl:value-of select="top:jobDefinitionPackage"/>
            </top:jobDefinitionPackage>
          </xsl:if>
        </top:WieWorkOrdersV>
      </xsl:for-each>
    </top:WieWorkOrdersVCollection>
  </xsl:template>
</xsl:stylesheet>