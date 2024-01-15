

import Foundation


public extension PlatformClient.Order {
    /*
        Model: ShipmentMeta
        Used By: Order
    */

    class ShipmentMeta: Codable {
        
        
        public var trackingUrl: String?
        
        public var estimatedDeliveryDate: String?
        
        public var sameStoreAvailable: Bool
        
        public var b2BBuyerDetails: BuyerDetails?
        
        public var formatted: Formatted?
        
        public var debugInfo: DebugInfo?
        
        public var returnAwbNumber: String?
        
        public var isSelfShip: Bool?
        
        public var boxType: String?
        
        public var einvoiceInfo: EinvoiceInfo?
        
        public var returnAffiliateShipmentId: String?
        
        public var parentDpId: String?
        
        public var shipmentWeight: Double?
        
        public var dimension: Dimensions?
        
        public var dpOptions: [String: Any]?
        
        public var assignDpFromSb: Bool?
        
        public var dueDate: String?
        
        public var storeInvoiceUpdatedDate: String?
        
        public var forwardAffiliateShipmentId: String?
        
        public var returnStoreNode: Int?
        
        public var fulfilmentPriorityText: String?
        
        public var shipmentTags: [ShipmentTags]?
        
        public var externalLink: [String: Any]?
        
        public var awbNumber: String?
        
        public var lockData: LockData?
        
        public var orderType: String?
        
        public var ewaybillInfo: [String: Any]?
        
        public var dpId: String?
        
        public var shipmentVolumetricWeight: Double?
        
        public var marketplaceStoreId: String?
        
        public var returnDetails: [String: Any]?
        
        public var dpSortKey: String?
        
        public var packagingName: String?
        
        public var timestamp: ShipmentTimeStamp?
        
        public var autoTriggerDpAssignmentAcf: Bool?
        
        public var dpName: String?
        
        public var poNumber: String?
        
        public var weight: Int
        
        public var b2CBuyerDetails: [String: Any]?
        
        public var forwardAffiliateOrderId: String?
        
        public var returnAffiliateOrderId: String?
        
        public var bagWeight: [String: Any]?
        
        public var refundTo: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case trackingUrl = "tracking_url"
            
            case estimatedDeliveryDate = "estimated_delivery_date"
            
            case sameStoreAvailable = "same_store_available"
            
            case b2BBuyerDetails = "b2b_buyer_details"
            
            case formatted = "formatted"
            
            case debugInfo = "debug_info"
            
            case returnAwbNumber = "return_awb_number"
            
            case isSelfShip = "is_self_ship"
            
            case boxType = "box_type"
            
            case einvoiceInfo = "einvoice_info"
            
            case returnAffiliateShipmentId = "return_affiliate_shipment_id"
            
            case parentDpId = "parent_dp_id"
            
            case shipmentWeight = "shipment_weight"
            
            case dimension = "dimension"
            
            case dpOptions = "dp_options"
            
            case assignDpFromSb = "assign_dp_from_sb"
            
            case dueDate = "due_date"
            
            case storeInvoiceUpdatedDate = "store_invoice_updated_date"
            
            case forwardAffiliateShipmentId = "forward_affiliate_shipment_id"
            
            case returnStoreNode = "return_store_node"
            
            case fulfilmentPriorityText = "fulfilment_priority_text"
            
            case shipmentTags = "shipment_tags"
            
            case externalLink = "external"
            
            case awbNumber = "awb_number"
            
            case lockData = "lock_data"
            
            case orderType = "order_type"
            
            case ewaybillInfo = "ewaybill_info"
            
            case dpId = "dp_id"
            
            case shipmentVolumetricWeight = "shipment_volumetric_weight"
            
            case marketplaceStoreId = "marketplace_store_id"
            
            case returnDetails = "return_details"
            
            case dpSortKey = "dp_sort_key"
            
            case packagingName = "packaging_name"
            
            case timestamp = "timestamp"
            
            case autoTriggerDpAssignmentAcf = "auto_trigger_dp_assignment_acf"
            
            case dpName = "dp_name"
            
            case poNumber = "po_number"
            
            case weight = "weight"
            
            case b2CBuyerDetails = "b2c_buyer_details"
            
            case forwardAffiliateOrderId = "forward_affiliate_order_id"
            
            case returnAffiliateOrderId = "return_affiliate_order_id"
            
            case bagWeight = "bag_weight"
            
            case refundTo = "refund_to"
            
        }

        public init(assignDpFromSb: Bool? = nil, autoTriggerDpAssignmentAcf: Bool? = nil, awbNumber: String? = nil, b2BBuyerDetails: BuyerDetails? = nil, b2CBuyerDetails: [String: Any]? = nil, bagWeight: [String: Any]? = nil, boxType: String? = nil, debugInfo: DebugInfo? = nil, dimension: Dimensions? = nil, dpId: String? = nil, dpName: String? = nil, dpOptions: [String: Any]? = nil, dpSortKey: String? = nil, dueDate: String? = nil, einvoiceInfo: EinvoiceInfo? = nil, estimatedDeliveryDate: String? = nil, ewaybillInfo: [String: Any]? = nil, externalLink: [String: Any]? = nil, formatted: Formatted? = nil, forwardAffiliateOrderId: String? = nil, forwardAffiliateShipmentId: String? = nil, fulfilmentPriorityText: String? = nil, isSelfShip: Bool? = nil, lockData: LockData? = nil, marketplaceStoreId: String? = nil, orderType: String? = nil, packagingName: String? = nil, parentDpId: String? = nil, poNumber: String? = nil, refundTo: String? = nil, returnAffiliateOrderId: String? = nil, returnAffiliateShipmentId: String? = nil, returnAwbNumber: String? = nil, returnDetails: [String: Any]? = nil, returnStoreNode: Int? = nil, sameStoreAvailable: Bool, shipmentTags: [ShipmentTags]? = nil, shipmentVolumetricWeight: Double? = nil, shipmentWeight: Double? = nil, storeInvoiceUpdatedDate: String? = nil, timestamp: ShipmentTimeStamp? = nil, trackingUrl: String? = nil, weight: Int) {
            
            self.trackingUrl = trackingUrl
            
            self.estimatedDeliveryDate = estimatedDeliveryDate
            
            self.sameStoreAvailable = sameStoreAvailable
            
            self.b2BBuyerDetails = b2BBuyerDetails
            
            self.formatted = formatted
            
            self.debugInfo = debugInfo
            
            self.returnAwbNumber = returnAwbNumber
            
            self.isSelfShip = isSelfShip
            
            self.boxType = boxType
            
            self.einvoiceInfo = einvoiceInfo
            
            self.returnAffiliateShipmentId = returnAffiliateShipmentId
            
            self.parentDpId = parentDpId
            
            self.shipmentWeight = shipmentWeight
            
            self.dimension = dimension
            
            self.dpOptions = dpOptions
            
            self.assignDpFromSb = assignDpFromSb
            
            self.dueDate = dueDate
            
            self.storeInvoiceUpdatedDate = storeInvoiceUpdatedDate
            
            self.forwardAffiliateShipmentId = forwardAffiliateShipmentId
            
            self.returnStoreNode = returnStoreNode
            
            self.fulfilmentPriorityText = fulfilmentPriorityText
            
            self.shipmentTags = shipmentTags
            
            self.externalLink = externalLink
            
            self.awbNumber = awbNumber
            
            self.lockData = lockData
            
            self.orderType = orderType
            
            self.ewaybillInfo = ewaybillInfo
            
            self.dpId = dpId
            
            self.shipmentVolumetricWeight = shipmentVolumetricWeight
            
            self.marketplaceStoreId = marketplaceStoreId
            
            self.returnDetails = returnDetails
            
            self.dpSortKey = dpSortKey
            
            self.packagingName = packagingName
            
            self.timestamp = timestamp
            
            self.autoTriggerDpAssignmentAcf = autoTriggerDpAssignmentAcf
            
            self.dpName = dpName
            
            self.poNumber = poNumber
            
            self.weight = weight
            
            self.b2CBuyerDetails = b2CBuyerDetails
            
            self.forwardAffiliateOrderId = forwardAffiliateOrderId
            
            self.returnAffiliateOrderId = returnAffiliateOrderId
            
            self.bagWeight = bagWeight
            
            self.refundTo = refundTo
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    trackingUrl = try container.decode(String.self, forKey: .trackingUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    estimatedDeliveryDate = try container.decode(String.self, forKey: .estimatedDeliveryDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                sameStoreAvailable = try container.decode(Bool.self, forKey: .sameStoreAvailable)
                
            
            
            
                do {
                    b2BBuyerDetails = try container.decode(BuyerDetails.self, forKey: .b2BBuyerDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    formatted = try container.decode(Formatted.self, forKey: .formatted)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    debugInfo = try container.decode(DebugInfo.self, forKey: .debugInfo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    returnAwbNumber = try container.decode(String.self, forKey: .returnAwbNumber)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isSelfShip = try container.decode(Bool.self, forKey: .isSelfShip)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    boxType = try container.decode(String.self, forKey: .boxType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    einvoiceInfo = try container.decode(EinvoiceInfo.self, forKey: .einvoiceInfo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    returnAffiliateShipmentId = try container.decode(String.self, forKey: .returnAffiliateShipmentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    parentDpId = try container.decode(String.self, forKey: .parentDpId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    shipmentWeight = try container.decode(Double.self, forKey: .shipmentWeight)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    dimension = try container.decode(Dimensions.self, forKey: .dimension)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    dpOptions = try container.decode([String: Any].self, forKey: .dpOptions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    assignDpFromSb = try container.decode(Bool.self, forKey: .assignDpFromSb)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    dueDate = try container.decode(String.self, forKey: .dueDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    storeInvoiceUpdatedDate = try container.decode(String.self, forKey: .storeInvoiceUpdatedDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    forwardAffiliateShipmentId = try container.decode(String.self, forKey: .forwardAffiliateShipmentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    returnStoreNode = try container.decode(Int.self, forKey: .returnStoreNode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fulfilmentPriorityText = try container.decode(String.self, forKey: .fulfilmentPriorityText)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    shipmentTags = try container.decode([ShipmentTags].self, forKey: .shipmentTags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    externalLink = try container.decode([String: Any].self, forKey: .externalLink)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    awbNumber = try container.decode(String.self, forKey: .awbNumber)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    lockData = try container.decode(LockData.self, forKey: .lockData)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderType = try container.decode(String.self, forKey: .orderType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    ewaybillInfo = try container.decode([String: Any].self, forKey: .ewaybillInfo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    dpId = try container.decode(String.self, forKey: .dpId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    shipmentVolumetricWeight = try container.decode(Double.self, forKey: .shipmentVolumetricWeight)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    marketplaceStoreId = try container.decode(String.self, forKey: .marketplaceStoreId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    returnDetails = try container.decode([String: Any].self, forKey: .returnDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    dpSortKey = try container.decode(String.self, forKey: .dpSortKey)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    packagingName = try container.decode(String.self, forKey: .packagingName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    timestamp = try container.decode(ShipmentTimeStamp.self, forKey: .timestamp)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    autoTriggerDpAssignmentAcf = try container.decode(Bool.self, forKey: .autoTriggerDpAssignmentAcf)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    dpName = try container.decode(String.self, forKey: .dpName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    poNumber = try container.decode(String.self, forKey: .poNumber)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                weight = try container.decode(Int.self, forKey: .weight)
                
            
            
            
                do {
                    b2CBuyerDetails = try container.decode([String: Any].self, forKey: .b2CBuyerDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    forwardAffiliateOrderId = try container.decode(String.self, forKey: .forwardAffiliateOrderId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    returnAffiliateOrderId = try container.decode(String.self, forKey: .returnAffiliateOrderId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    bagWeight = try container.decode([String: Any].self, forKey: .bagWeight)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    refundTo = try container.decode(String.self, forKey: .refundTo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(trackingUrl, forKey: .trackingUrl)
            
            
            
            
            try? container.encodeIfPresent(estimatedDeliveryDate, forKey: .estimatedDeliveryDate)
            
            
            
            
            try? container.encodeIfPresent(sameStoreAvailable, forKey: .sameStoreAvailable)
            
            
            
            
            try? container.encodeIfPresent(b2BBuyerDetails, forKey: .b2BBuyerDetails)
            
            
            
            
            try? container.encodeIfPresent(formatted, forKey: .formatted)
            
            
            
            
            try? container.encodeIfPresent(debugInfo, forKey: .debugInfo)
            
            
            
            
            try? container.encodeIfPresent(returnAwbNumber, forKey: .returnAwbNumber)
            
            
            
            
            try? container.encodeIfPresent(isSelfShip, forKey: .isSelfShip)
            
            
            
            
            try? container.encodeIfPresent(boxType, forKey: .boxType)
            
            
            
            
            try? container.encodeIfPresent(einvoiceInfo, forKey: .einvoiceInfo)
            
            
            
            
            try? container.encodeIfPresent(returnAffiliateShipmentId, forKey: .returnAffiliateShipmentId)
            
            
            
            
            try? container.encodeIfPresent(parentDpId, forKey: .parentDpId)
            
            
            
            
            try? container.encodeIfPresent(shipmentWeight, forKey: .shipmentWeight)
            
            
            
            
            try? container.encodeIfPresent(dimension, forKey: .dimension)
            
            
            
            
            try? container.encodeIfPresent(dpOptions, forKey: .dpOptions)
            
            
            
            
            try? container.encodeIfPresent(assignDpFromSb, forKey: .assignDpFromSb)
            
            
            
            
            try? container.encodeIfPresent(dueDate, forKey: .dueDate)
            
            
            
            
            try? container.encodeIfPresent(storeInvoiceUpdatedDate, forKey: .storeInvoiceUpdatedDate)
            
            
            
            
            try? container.encodeIfPresent(forwardAffiliateShipmentId, forKey: .forwardAffiliateShipmentId)
            
            
            
            
            try? container.encodeIfPresent(returnStoreNode, forKey: .returnStoreNode)
            
            
            
            
            try? container.encodeIfPresent(fulfilmentPriorityText, forKey: .fulfilmentPriorityText)
            
            
            
            
            try? container.encodeIfPresent(shipmentTags, forKey: .shipmentTags)
            
            
            
            
            try? container.encodeIfPresent(externalLink, forKey: .externalLink)
            
            
            
            
            try? container.encodeIfPresent(awbNumber, forKey: .awbNumber)
            
            
            
            
            try? container.encodeIfPresent(lockData, forKey: .lockData)
            
            
            
            
            try? container.encodeIfPresent(orderType, forKey: .orderType)
            
            
            
            
            try? container.encodeIfPresent(ewaybillInfo, forKey: .ewaybillInfo)
            
            
            
            
            try? container.encodeIfPresent(dpId, forKey: .dpId)
            
            
            
            
            try? container.encodeIfPresent(shipmentVolumetricWeight, forKey: .shipmentVolumetricWeight)
            
            
            
            
            try? container.encodeIfPresent(marketplaceStoreId, forKey: .marketplaceStoreId)
            
            
            
            
            try? container.encodeIfPresent(returnDetails, forKey: .returnDetails)
            
            
            
            
            try? container.encodeIfPresent(dpSortKey, forKey: .dpSortKey)
            
            
            
            
            try? container.encodeIfPresent(packagingName, forKey: .packagingName)
            
            
            
            
            try? container.encodeIfPresent(timestamp, forKey: .timestamp)
            
            
            
            
            try? container.encodeIfPresent(autoTriggerDpAssignmentAcf, forKey: .autoTriggerDpAssignmentAcf)
            
            
            
            
            try? container.encodeIfPresent(dpName, forKey: .dpName)
            
            
            
            
            try? container.encodeIfPresent(poNumber, forKey: .poNumber)
            
            
            
            
            try? container.encodeIfPresent(weight, forKey: .weight)
            
            
            
            
            try? container.encodeIfPresent(b2CBuyerDetails, forKey: .b2CBuyerDetails)
            
            
            
            
            try? container.encodeIfPresent(forwardAffiliateOrderId, forKey: .forwardAffiliateOrderId)
            
            
            
            
            try? container.encodeIfPresent(returnAffiliateOrderId, forKey: .returnAffiliateOrderId)
            
            
            
            
            try? container.encodeIfPresent(bagWeight, forKey: .bagWeight)
            
            
            
            
            try? container.encodeIfPresent(refundTo, forKey: .refundTo)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: ShipmentMeta
        Used By: Order
    */

    class ShipmentMeta: Codable {
        
        
        public var trackingUrl: String?
        
        public var estimatedDeliveryDate: String?
        
        public var sameStoreAvailable: Bool
        
        public var b2BBuyerDetails: BuyerDetails?
        
        public var formatted: Formatted?
        
        public var debugInfo: DebugInfo?
        
        public var returnAwbNumber: String?
        
        public var isSelfShip: Bool?
        
        public var boxType: String?
        
        public var einvoiceInfo: EinvoiceInfo?
        
        public var returnAffiliateShipmentId: String?
        
        public var parentDpId: String?
        
        public var shipmentWeight: Double?
        
        public var dimension: Dimensions?
        
        public var dpOptions: [String: Any]?
        
        public var assignDpFromSb: Bool?
        
        public var dueDate: String?
        
        public var storeInvoiceUpdatedDate: String?
        
        public var forwardAffiliateShipmentId: String?
        
        public var returnStoreNode: Int?
        
        public var fulfilmentPriorityText: String?
        
        public var shipmentTags: [ShipmentTags]?
        
        public var externalLink: [String: Any]?
        
        public var awbNumber: String?
        
        public var lockData: LockData?
        
        public var orderType: String?
        
        public var ewaybillInfo: [String: Any]?
        
        public var dpId: String?
        
        public var shipmentVolumetricWeight: Double?
        
        public var marketplaceStoreId: String?
        
        public var returnDetails: [String: Any]?
        
        public var dpSortKey: String?
        
        public var packagingName: String?
        
        public var timestamp: ShipmentTimeStamp?
        
        public var autoTriggerDpAssignmentAcf: Bool?
        
        public var dpName: String?
        
        public var poNumber: String?
        
        public var weight: Int
        
        public var b2CBuyerDetails: [String: Any]?
        
        public var forwardAffiliateOrderId: String?
        
        public var returnAffiliateOrderId: String?
        
        public var bagWeight: [String: Any]?
        
        public var refundTo: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case trackingUrl = "tracking_url"
            
            case estimatedDeliveryDate = "estimated_delivery_date"
            
            case sameStoreAvailable = "same_store_available"
            
            case b2BBuyerDetails = "b2b_buyer_details"
            
            case formatted = "formatted"
            
            case debugInfo = "debug_info"
            
            case returnAwbNumber = "return_awb_number"
            
            case isSelfShip = "is_self_ship"
            
            case boxType = "box_type"
            
            case einvoiceInfo = "einvoice_info"
            
            case returnAffiliateShipmentId = "return_affiliate_shipment_id"
            
            case parentDpId = "parent_dp_id"
            
            case shipmentWeight = "shipment_weight"
            
            case dimension = "dimension"
            
            case dpOptions = "dp_options"
            
            case assignDpFromSb = "assign_dp_from_sb"
            
            case dueDate = "due_date"
            
            case storeInvoiceUpdatedDate = "store_invoice_updated_date"
            
            case forwardAffiliateShipmentId = "forward_affiliate_shipment_id"
            
            case returnStoreNode = "return_store_node"
            
            case fulfilmentPriorityText = "fulfilment_priority_text"
            
            case shipmentTags = "shipment_tags"
            
            case externalLink = "external"
            
            case awbNumber = "awb_number"
            
            case lockData = "lock_data"
            
            case orderType = "order_type"
            
            case ewaybillInfo = "ewaybill_info"
            
            case dpId = "dp_id"
            
            case shipmentVolumetricWeight = "shipment_volumetric_weight"
            
            case marketplaceStoreId = "marketplace_store_id"
            
            case returnDetails = "return_details"
            
            case dpSortKey = "dp_sort_key"
            
            case packagingName = "packaging_name"
            
            case timestamp = "timestamp"
            
            case autoTriggerDpAssignmentAcf = "auto_trigger_dp_assignment_acf"
            
            case dpName = "dp_name"
            
            case poNumber = "po_number"
            
            case weight = "weight"
            
            case b2CBuyerDetails = "b2c_buyer_details"
            
            case forwardAffiliateOrderId = "forward_affiliate_order_id"
            
            case returnAffiliateOrderId = "return_affiliate_order_id"
            
            case bagWeight = "bag_weight"
            
            case refundTo = "refund_to"
            
        }

        public init(assignDpFromSb: Bool? = nil, autoTriggerDpAssignmentAcf: Bool? = nil, awbNumber: String? = nil, b2BBuyerDetails: BuyerDetails? = nil, b2CBuyerDetails: [String: Any]? = nil, bagWeight: [String: Any]? = nil, boxType: String? = nil, debugInfo: DebugInfo? = nil, dimension: Dimensions? = nil, dpId: String? = nil, dpName: String? = nil, dpOptions: [String: Any]? = nil, dpSortKey: String? = nil, dueDate: String? = nil, einvoiceInfo: EinvoiceInfo? = nil, estimatedDeliveryDate: String? = nil, ewaybillInfo: [String: Any]? = nil, externalLink: [String: Any]? = nil, formatted: Formatted? = nil, forwardAffiliateOrderId: String? = nil, forwardAffiliateShipmentId: String? = nil, fulfilmentPriorityText: String? = nil, isSelfShip: Bool? = nil, lockData: LockData? = nil, marketplaceStoreId: String? = nil, orderType: String? = nil, packagingName: String? = nil, parentDpId: String? = nil, poNumber: String? = nil, refundTo: String? = nil, returnAffiliateOrderId: String? = nil, returnAffiliateShipmentId: String? = nil, returnAwbNumber: String? = nil, returnDetails: [String: Any]? = nil, returnStoreNode: Int? = nil, sameStoreAvailable: Bool, shipmentTags: [ShipmentTags]? = nil, shipmentVolumetricWeight: Double? = nil, shipmentWeight: Double? = nil, storeInvoiceUpdatedDate: String? = nil, timestamp: ShipmentTimeStamp? = nil, trackingUrl: String? = nil, weight: Int) {
            
            self.trackingUrl = trackingUrl
            
            self.estimatedDeliveryDate = estimatedDeliveryDate
            
            self.sameStoreAvailable = sameStoreAvailable
            
            self.b2BBuyerDetails = b2BBuyerDetails
            
            self.formatted = formatted
            
            self.debugInfo = debugInfo
            
            self.returnAwbNumber = returnAwbNumber
            
            self.isSelfShip = isSelfShip
            
            self.boxType = boxType
            
            self.einvoiceInfo = einvoiceInfo
            
            self.returnAffiliateShipmentId = returnAffiliateShipmentId
            
            self.parentDpId = parentDpId
            
            self.shipmentWeight = shipmentWeight
            
            self.dimension = dimension
            
            self.dpOptions = dpOptions
            
            self.assignDpFromSb = assignDpFromSb
            
            self.dueDate = dueDate
            
            self.storeInvoiceUpdatedDate = storeInvoiceUpdatedDate
            
            self.forwardAffiliateShipmentId = forwardAffiliateShipmentId
            
            self.returnStoreNode = returnStoreNode
            
            self.fulfilmentPriorityText = fulfilmentPriorityText
            
            self.shipmentTags = shipmentTags
            
            self.externalLink = externalLink
            
            self.awbNumber = awbNumber
            
            self.lockData = lockData
            
            self.orderType = orderType
            
            self.ewaybillInfo = ewaybillInfo
            
            self.dpId = dpId
            
            self.shipmentVolumetricWeight = shipmentVolumetricWeight
            
            self.marketplaceStoreId = marketplaceStoreId
            
            self.returnDetails = returnDetails
            
            self.dpSortKey = dpSortKey
            
            self.packagingName = packagingName
            
            self.timestamp = timestamp
            
            self.autoTriggerDpAssignmentAcf = autoTriggerDpAssignmentAcf
            
            self.dpName = dpName
            
            self.poNumber = poNumber
            
            self.weight = weight
            
            self.b2CBuyerDetails = b2CBuyerDetails
            
            self.forwardAffiliateOrderId = forwardAffiliateOrderId
            
            self.returnAffiliateOrderId = returnAffiliateOrderId
            
            self.bagWeight = bagWeight
            
            self.refundTo = refundTo
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    trackingUrl = try container.decode(String.self, forKey: .trackingUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    estimatedDeliveryDate = try container.decode(String.self, forKey: .estimatedDeliveryDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                sameStoreAvailable = try container.decode(Bool.self, forKey: .sameStoreAvailable)
                
            
            
            
                do {
                    b2BBuyerDetails = try container.decode(BuyerDetails.self, forKey: .b2BBuyerDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    formatted = try container.decode(Formatted.self, forKey: .formatted)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    debugInfo = try container.decode(DebugInfo.self, forKey: .debugInfo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    returnAwbNumber = try container.decode(String.self, forKey: .returnAwbNumber)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isSelfShip = try container.decode(Bool.self, forKey: .isSelfShip)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    boxType = try container.decode(String.self, forKey: .boxType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    einvoiceInfo = try container.decode(EinvoiceInfo.self, forKey: .einvoiceInfo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    returnAffiliateShipmentId = try container.decode(String.self, forKey: .returnAffiliateShipmentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    parentDpId = try container.decode(String.self, forKey: .parentDpId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    shipmentWeight = try container.decode(Double.self, forKey: .shipmentWeight)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    dimension = try container.decode(Dimensions.self, forKey: .dimension)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    dpOptions = try container.decode([String: Any].self, forKey: .dpOptions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    assignDpFromSb = try container.decode(Bool.self, forKey: .assignDpFromSb)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    dueDate = try container.decode(String.self, forKey: .dueDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    storeInvoiceUpdatedDate = try container.decode(String.self, forKey: .storeInvoiceUpdatedDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    forwardAffiliateShipmentId = try container.decode(String.self, forKey: .forwardAffiliateShipmentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    returnStoreNode = try container.decode(Int.self, forKey: .returnStoreNode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fulfilmentPriorityText = try container.decode(String.self, forKey: .fulfilmentPriorityText)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    shipmentTags = try container.decode([ShipmentTags].self, forKey: .shipmentTags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    externalLink = try container.decode([String: Any].self, forKey: .externalLink)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    awbNumber = try container.decode(String.self, forKey: .awbNumber)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    lockData = try container.decode(LockData.self, forKey: .lockData)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderType = try container.decode(String.self, forKey: .orderType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    ewaybillInfo = try container.decode([String: Any].self, forKey: .ewaybillInfo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    dpId = try container.decode(String.self, forKey: .dpId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    shipmentVolumetricWeight = try container.decode(Double.self, forKey: .shipmentVolumetricWeight)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    marketplaceStoreId = try container.decode(String.self, forKey: .marketplaceStoreId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    returnDetails = try container.decode([String: Any].self, forKey: .returnDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    dpSortKey = try container.decode(String.self, forKey: .dpSortKey)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    packagingName = try container.decode(String.self, forKey: .packagingName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    timestamp = try container.decode(ShipmentTimeStamp.self, forKey: .timestamp)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    autoTriggerDpAssignmentAcf = try container.decode(Bool.self, forKey: .autoTriggerDpAssignmentAcf)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    dpName = try container.decode(String.self, forKey: .dpName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    poNumber = try container.decode(String.self, forKey: .poNumber)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                weight = try container.decode(Int.self, forKey: .weight)
                
            
            
            
                do {
                    b2CBuyerDetails = try container.decode([String: Any].self, forKey: .b2CBuyerDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    forwardAffiliateOrderId = try container.decode(String.self, forKey: .forwardAffiliateOrderId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    returnAffiliateOrderId = try container.decode(String.self, forKey: .returnAffiliateOrderId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    bagWeight = try container.decode([String: Any].self, forKey: .bagWeight)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    refundTo = try container.decode(String.self, forKey: .refundTo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(trackingUrl, forKey: .trackingUrl)
            
            
            
            
            try? container.encodeIfPresent(estimatedDeliveryDate, forKey: .estimatedDeliveryDate)
            
            
            
            
            try? container.encodeIfPresent(sameStoreAvailable, forKey: .sameStoreAvailable)
            
            
            
            
            try? container.encodeIfPresent(b2BBuyerDetails, forKey: .b2BBuyerDetails)
            
            
            
            
            try? container.encodeIfPresent(formatted, forKey: .formatted)
            
            
            
            
            try? container.encodeIfPresent(debugInfo, forKey: .debugInfo)
            
            
            
            
            try? container.encodeIfPresent(returnAwbNumber, forKey: .returnAwbNumber)
            
            
            
            
            try? container.encodeIfPresent(isSelfShip, forKey: .isSelfShip)
            
            
            
            
            try? container.encodeIfPresent(boxType, forKey: .boxType)
            
            
            
            
            try? container.encodeIfPresent(einvoiceInfo, forKey: .einvoiceInfo)
            
            
            
            
            try? container.encodeIfPresent(returnAffiliateShipmentId, forKey: .returnAffiliateShipmentId)
            
            
            
            
            try? container.encodeIfPresent(parentDpId, forKey: .parentDpId)
            
            
            
            
            try? container.encodeIfPresent(shipmentWeight, forKey: .shipmentWeight)
            
            
            
            
            try? container.encodeIfPresent(dimension, forKey: .dimension)
            
            
            
            
            try? container.encodeIfPresent(dpOptions, forKey: .dpOptions)
            
            
            
            
            try? container.encodeIfPresent(assignDpFromSb, forKey: .assignDpFromSb)
            
            
            
            
            try? container.encodeIfPresent(dueDate, forKey: .dueDate)
            
            
            
            
            try? container.encodeIfPresent(storeInvoiceUpdatedDate, forKey: .storeInvoiceUpdatedDate)
            
            
            
            
            try? container.encodeIfPresent(forwardAffiliateShipmentId, forKey: .forwardAffiliateShipmentId)
            
            
            
            
            try? container.encodeIfPresent(returnStoreNode, forKey: .returnStoreNode)
            
            
            
            
            try? container.encodeIfPresent(fulfilmentPriorityText, forKey: .fulfilmentPriorityText)
            
            
            
            
            try? container.encodeIfPresent(shipmentTags, forKey: .shipmentTags)
            
            
            
            
            try? container.encodeIfPresent(externalLink, forKey: .externalLink)
            
            
            
            
            try? container.encodeIfPresent(awbNumber, forKey: .awbNumber)
            
            
            
            
            try? container.encodeIfPresent(lockData, forKey: .lockData)
            
            
            
            
            try? container.encodeIfPresent(orderType, forKey: .orderType)
            
            
            
            
            try? container.encodeIfPresent(ewaybillInfo, forKey: .ewaybillInfo)
            
            
            
            
            try? container.encodeIfPresent(dpId, forKey: .dpId)
            
            
            
            
            try? container.encodeIfPresent(shipmentVolumetricWeight, forKey: .shipmentVolumetricWeight)
            
            
            
            
            try? container.encodeIfPresent(marketplaceStoreId, forKey: .marketplaceStoreId)
            
            
            
            
            try? container.encodeIfPresent(returnDetails, forKey: .returnDetails)
            
            
            
            
            try? container.encodeIfPresent(dpSortKey, forKey: .dpSortKey)
            
            
            
            
            try? container.encodeIfPresent(packagingName, forKey: .packagingName)
            
            
            
            
            try? container.encodeIfPresent(timestamp, forKey: .timestamp)
            
            
            
            
            try? container.encodeIfPresent(autoTriggerDpAssignmentAcf, forKey: .autoTriggerDpAssignmentAcf)
            
            
            
            
            try? container.encodeIfPresent(dpName, forKey: .dpName)
            
            
            
            
            try? container.encodeIfPresent(poNumber, forKey: .poNumber)
            
            
            
            
            try? container.encodeIfPresent(weight, forKey: .weight)
            
            
            
            
            try? container.encodeIfPresent(b2CBuyerDetails, forKey: .b2CBuyerDetails)
            
            
            
            
            try? container.encodeIfPresent(forwardAffiliateOrderId, forKey: .forwardAffiliateOrderId)
            
            
            
            
            try? container.encodeIfPresent(returnAffiliateOrderId, forKey: .returnAffiliateOrderId)
            
            
            
            
            try? container.encodeIfPresent(bagWeight, forKey: .bagWeight)
            
            
            
            
            try? container.encodeIfPresent(refundTo, forKey: .refundTo)
            
            
        }
        
    }
}


