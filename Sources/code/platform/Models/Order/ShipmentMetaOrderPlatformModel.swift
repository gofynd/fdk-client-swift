

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ShipmentMeta
         Used By: Order
     */

    class ShipmentMeta: Codable {
        public var dpName: String?

        public var shipmentTags: [ShipmentTags]?

        public var externalLink: [String: Any]?

        public var packagingName: String?

        public var bagWeight: [String: Any]?

        public var debugInfo: DebugInfo?

        public var einvoiceInfo: EinvoiceInfo?

        public var returnAffiliateOrderId: String?

        public var dpSortKey: String?

        public var b2CBuyerDetails: [String: Any]?

        public var forwardAffiliateShipmentId: String?

        public var boxType: String?

        public var dimension: Dimensions?

        public var returnAffiliateShipmentId: String?

        public var b2BBuyerDetails: BuyerDetails?

        public var dpId: String?

        public var returnDetails: [String: Any]?

        public var fulfilmentPriorityText: String?

        public var poNumber: String?

        public var sameStoreAvailable: Bool

        public var forwardAffiliateOrderId: String?

        public var marketplaceStoreId: String?

        public var ewaybillInfo: [String: Any]?

        public var awbNumber: String?

        public var shipmentWeight: Double?

        public var parentDpId: String?

        public var assignDpFromSb: Bool?

        public var timestamp: ShipmentTimeStamp?

        public var orderType: String?

        public var lockData: LockData?

        public var autoTriggerDpAssignmentAcf: Bool?

        public var weight: Int

        public var dpOptions: [String: Any]?

        public var dueDate: String?

        public var storeInvoiceUpdatedDate: String?

        public var returnStoreNode: Int?

        public var returnAwbNumber: String?

        public var shipmentVolumetricWeight: Double?

        public var formatted: Formatted?

        public enum CodingKeys: String, CodingKey {
            case dpName = "dp_name"

            case shipmentTags = "shipment_tags"

            case externalLink = "external"

            case packagingName = "packaging_name"

            case bagWeight = "bag_weight"

            case debugInfo = "debug_info"

            case einvoiceInfo = "einvoice_info"

            case returnAffiliateOrderId = "return_affiliate_order_id"

            case dpSortKey = "dp_sort_key"

            case b2CBuyerDetails = "b2c_buyer_details"

            case forwardAffiliateShipmentId = "forward_affiliate_shipment_id"

            case boxType = "box_type"

            case dimension

            case returnAffiliateShipmentId = "return_affiliate_shipment_id"

            case b2BBuyerDetails = "b2b_buyer_details"

            case dpId = "dp_id"

            case returnDetails = "return_details"

            case fulfilmentPriorityText = "fulfilment_priority_text"

            case poNumber = "po_number"

            case sameStoreAvailable = "same_store_available"

            case forwardAffiliateOrderId = "forward_affiliate_order_id"

            case marketplaceStoreId = "marketplace_store_id"

            case ewaybillInfo = "ewaybill_info"

            case awbNumber = "awb_number"

            case shipmentWeight = "shipment_weight"

            case parentDpId = "parent_dp_id"

            case assignDpFromSb = "assign_dp_from_sb"

            case timestamp

            case orderType = "order_type"

            case lockData = "lock_data"

            case autoTriggerDpAssignmentAcf = "auto_trigger_dp_assignment_acf"

            case weight

            case dpOptions = "dp_options"

            case dueDate = "due_date"

            case storeInvoiceUpdatedDate = "store_invoice_updated_date"

            case returnStoreNode = "return_store_node"

            case returnAwbNumber = "return_awb_number"

            case shipmentVolumetricWeight = "shipment_volumetric_weight"

            case formatted
        }

        public init(assignDpFromSb: Bool? = nil, autoTriggerDpAssignmentAcf: Bool? = nil, awbNumber: String? = nil, b2BBuyerDetails: BuyerDetails? = nil, b2CBuyerDetails: [String: Any]? = nil, bagWeight: [String: Any]? = nil, boxType: String? = nil, debugInfo: DebugInfo? = nil, dimension: Dimensions? = nil, dpId: String? = nil, dpName: String? = nil, dpOptions: [String: Any]? = nil, dpSortKey: String? = nil, dueDate: String? = nil, einvoiceInfo: EinvoiceInfo? = nil, ewaybillInfo: [String: Any]? = nil, externalLink: [String: Any]? = nil, formatted: Formatted? = nil, forwardAffiliateOrderId: String? = nil, forwardAffiliateShipmentId: String? = nil, fulfilmentPriorityText: String? = nil, lockData: LockData? = nil, marketplaceStoreId: String? = nil, orderType: String? = nil, packagingName: String? = nil, parentDpId: String? = nil, poNumber: String? = nil, returnAffiliateOrderId: String? = nil, returnAffiliateShipmentId: String? = nil, returnAwbNumber: String? = nil, returnDetails: [String: Any]? = nil, returnStoreNode: Int? = nil, sameStoreAvailable: Bool, shipmentTags: [ShipmentTags]? = nil, shipmentVolumetricWeight: Double? = nil, shipmentWeight: Double? = nil, storeInvoiceUpdatedDate: String? = nil, timestamp: ShipmentTimeStamp? = nil, weight: Int) {
            self.dpName = dpName

            self.shipmentTags = shipmentTags

            self.externalLink = externalLink

            self.packagingName = packagingName

            self.bagWeight = bagWeight

            self.debugInfo = debugInfo

            self.einvoiceInfo = einvoiceInfo

            self.returnAffiliateOrderId = returnAffiliateOrderId

            self.dpSortKey = dpSortKey

            self.b2CBuyerDetails = b2CBuyerDetails

            self.forwardAffiliateShipmentId = forwardAffiliateShipmentId

            self.boxType = boxType

            self.dimension = dimension

            self.returnAffiliateShipmentId = returnAffiliateShipmentId

            self.b2BBuyerDetails = b2BBuyerDetails

            self.dpId = dpId

            self.returnDetails = returnDetails

            self.fulfilmentPriorityText = fulfilmentPriorityText

            self.poNumber = poNumber

            self.sameStoreAvailable = sameStoreAvailable

            self.forwardAffiliateOrderId = forwardAffiliateOrderId

            self.marketplaceStoreId = marketplaceStoreId

            self.ewaybillInfo = ewaybillInfo

            self.awbNumber = awbNumber

            self.shipmentWeight = shipmentWeight

            self.parentDpId = parentDpId

            self.assignDpFromSb = assignDpFromSb

            self.timestamp = timestamp

            self.orderType = orderType

            self.lockData = lockData

            self.autoTriggerDpAssignmentAcf = autoTriggerDpAssignmentAcf

            self.weight = weight

            self.dpOptions = dpOptions

            self.dueDate = dueDate

            self.storeInvoiceUpdatedDate = storeInvoiceUpdatedDate

            self.returnStoreNode = returnStoreNode

            self.returnAwbNumber = returnAwbNumber

            self.shipmentVolumetricWeight = shipmentVolumetricWeight

            self.formatted = formatted
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                dpName = try container.decode(String.self, forKey: .dpName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shipmentTags = try container.decode([ShipmentTags].self, forKey: .shipmentTags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                externalLink = try container.decode([String: Any].self, forKey: .externalLink)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                packagingName = try container.decode(String.self, forKey: .packagingName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bagWeight = try container.decode([String: Any].self, forKey: .bagWeight)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                debugInfo = try container.decode(DebugInfo.self, forKey: .debugInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                einvoiceInfo = try container.decode(EinvoiceInfo.self, forKey: .einvoiceInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                returnAffiliateOrderId = try container.decode(String.self, forKey: .returnAffiliateOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dpSortKey = try container.decode(String.self, forKey: .dpSortKey)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                b2CBuyerDetails = try container.decode([String: Any].self, forKey: .b2CBuyerDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                forwardAffiliateShipmentId = try container.decode(String.self, forKey: .forwardAffiliateShipmentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                boxType = try container.decode(String.self, forKey: .boxType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dimension = try container.decode(Dimensions.self, forKey: .dimension)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                returnAffiliateShipmentId = try container.decode(String.self, forKey: .returnAffiliateShipmentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                b2BBuyerDetails = try container.decode(BuyerDetails.self, forKey: .b2BBuyerDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dpId = try container.decode(String.self, forKey: .dpId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                returnDetails = try container.decode([String: Any].self, forKey: .returnDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fulfilmentPriorityText = try container.decode(String.self, forKey: .fulfilmentPriorityText)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                poNumber = try container.decode(String.self, forKey: .poNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sameStoreAvailable = try container.decode(Bool.self, forKey: .sameStoreAvailable)

            do {
                forwardAffiliateOrderId = try container.decode(String.self, forKey: .forwardAffiliateOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                marketplaceStoreId = try container.decode(String.self, forKey: .marketplaceStoreId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                ewaybillInfo = try container.decode([String: Any].self, forKey: .ewaybillInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                awbNumber = try container.decode(String.self, forKey: .awbNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shipmentWeight = try container.decode(Double.self, forKey: .shipmentWeight)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                parentDpId = try container.decode(String.self, forKey: .parentDpId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                assignDpFromSb = try container.decode(Bool.self, forKey: .assignDpFromSb)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                timestamp = try container.decode(ShipmentTimeStamp.self, forKey: .timestamp)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderType = try container.decode(String.self, forKey: .orderType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                lockData = try container.decode(LockData.self, forKey: .lockData)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                autoTriggerDpAssignmentAcf = try container.decode(Bool.self, forKey: .autoTriggerDpAssignmentAcf)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            weight = try container.decode(Int.self, forKey: .weight)

            do {
                dpOptions = try container.decode([String: Any].self, forKey: .dpOptions)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dueDate = try container.decode(String.self, forKey: .dueDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeInvoiceUpdatedDate = try container.decode(String.self, forKey: .storeInvoiceUpdatedDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                returnStoreNode = try container.decode(Int.self, forKey: .returnStoreNode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                returnAwbNumber = try container.decode(String.self, forKey: .returnAwbNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shipmentVolumetricWeight = try container.decode(Double.self, forKey: .shipmentVolumetricWeight)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                formatted = try container.decode(Formatted.self, forKey: .formatted)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(dpName, forKey: .dpName)

            try? container.encodeIfPresent(shipmentTags, forKey: .shipmentTags)

            try? container.encodeIfPresent(externalLink, forKey: .externalLink)

            try? container.encodeIfPresent(packagingName, forKey: .packagingName)

            try? container.encodeIfPresent(bagWeight, forKey: .bagWeight)

            try? container.encodeIfPresent(debugInfo, forKey: .debugInfo)

            try? container.encodeIfPresent(einvoiceInfo, forKey: .einvoiceInfo)

            try? container.encodeIfPresent(returnAffiliateOrderId, forKey: .returnAffiliateOrderId)

            try? container.encodeIfPresent(dpSortKey, forKey: .dpSortKey)

            try? container.encode(b2CBuyerDetails, forKey: .b2CBuyerDetails)

            try? container.encodeIfPresent(forwardAffiliateShipmentId, forKey: .forwardAffiliateShipmentId)

            try? container.encode(boxType, forKey: .boxType)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(returnAffiliateShipmentId, forKey: .returnAffiliateShipmentId)

            try? container.encodeIfPresent(b2BBuyerDetails, forKey: .b2BBuyerDetails)

            try? container.encode(dpId, forKey: .dpId)

            try? container.encodeIfPresent(returnDetails, forKey: .returnDetails)

            try? container.encode(fulfilmentPriorityText, forKey: .fulfilmentPriorityText)

            try? container.encodeIfPresent(poNumber, forKey: .poNumber)

            try? container.encodeIfPresent(sameStoreAvailable, forKey: .sameStoreAvailable)

            try? container.encodeIfPresent(forwardAffiliateOrderId, forKey: .forwardAffiliateOrderId)

            try? container.encodeIfPresent(marketplaceStoreId, forKey: .marketplaceStoreId)

            try? container.encode(ewaybillInfo, forKey: .ewaybillInfo)

            try? container.encodeIfPresent(awbNumber, forKey: .awbNumber)

            try? container.encodeIfPresent(shipmentWeight, forKey: .shipmentWeight)

            try? container.encode(parentDpId, forKey: .parentDpId)

            try? container.encodeIfPresent(assignDpFromSb, forKey: .assignDpFromSb)

            try? container.encodeIfPresent(timestamp, forKey: .timestamp)

            try? container.encode(orderType, forKey: .orderType)

            try? container.encodeIfPresent(lockData, forKey: .lockData)

            try? container.encodeIfPresent(autoTriggerDpAssignmentAcf, forKey: .autoTriggerDpAssignmentAcf)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(dpOptions, forKey: .dpOptions)

            try? container.encodeIfPresent(dueDate, forKey: .dueDate)

            try? container.encodeIfPresent(storeInvoiceUpdatedDate, forKey: .storeInvoiceUpdatedDate)

            try? container.encodeIfPresent(returnStoreNode, forKey: .returnStoreNode)

            try? container.encodeIfPresent(returnAwbNumber, forKey: .returnAwbNumber)

            try? container.encodeIfPresent(shipmentVolumetricWeight, forKey: .shipmentVolumetricWeight)

            try? container.encodeIfPresent(formatted, forKey: .formatted)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ShipmentMeta
         Used By: Order
     */

    class ShipmentMeta: Codable {
        public var dpName: String?

        public var shipmentTags: [ShipmentTags]?

        public var externalLink: [String: Any]?

        public var packagingName: String?

        public var bagWeight: [String: Any]?

        public var debugInfo: DebugInfo?

        public var einvoiceInfo: EinvoiceInfo?

        public var returnAffiliateOrderId: String?

        public var dpSortKey: String?

        public var b2CBuyerDetails: [String: Any]?

        public var forwardAffiliateShipmentId: String?

        public var boxType: String?

        public var dimension: Dimensions?

        public var returnAffiliateShipmentId: String?

        public var b2BBuyerDetails: BuyerDetails?

        public var dpId: String?

        public var returnDetails: [String: Any]?

        public var fulfilmentPriorityText: String?

        public var poNumber: String?

        public var sameStoreAvailable: Bool

        public var forwardAffiliateOrderId: String?

        public var marketplaceStoreId: String?

        public var ewaybillInfo: [String: Any]?

        public var awbNumber: String?

        public var shipmentWeight: Double?

        public var parentDpId: String?

        public var assignDpFromSb: Bool?

        public var timestamp: ShipmentTimeStamp?

        public var orderType: String?

        public var lockData: LockData?

        public var autoTriggerDpAssignmentAcf: Bool?

        public var weight: Int

        public var dpOptions: [String: Any]?

        public var dueDate: String?

        public var storeInvoiceUpdatedDate: String?

        public var returnStoreNode: Int?

        public var returnAwbNumber: String?

        public var shipmentVolumetricWeight: Double?

        public var formatted: Formatted?

        public enum CodingKeys: String, CodingKey {
            case dpName = "dp_name"

            case shipmentTags = "shipment_tags"

            case externalLink = "external"

            case packagingName = "packaging_name"

            case bagWeight = "bag_weight"

            case debugInfo = "debug_info"

            case einvoiceInfo = "einvoice_info"

            case returnAffiliateOrderId = "return_affiliate_order_id"

            case dpSortKey = "dp_sort_key"

            case b2CBuyerDetails = "b2c_buyer_details"

            case forwardAffiliateShipmentId = "forward_affiliate_shipment_id"

            case boxType = "box_type"

            case dimension

            case returnAffiliateShipmentId = "return_affiliate_shipment_id"

            case b2BBuyerDetails = "b2b_buyer_details"

            case dpId = "dp_id"

            case returnDetails = "return_details"

            case fulfilmentPriorityText = "fulfilment_priority_text"

            case poNumber = "po_number"

            case sameStoreAvailable = "same_store_available"

            case forwardAffiliateOrderId = "forward_affiliate_order_id"

            case marketplaceStoreId = "marketplace_store_id"

            case ewaybillInfo = "ewaybill_info"

            case awbNumber = "awb_number"

            case shipmentWeight = "shipment_weight"

            case parentDpId = "parent_dp_id"

            case assignDpFromSb = "assign_dp_from_sb"

            case timestamp

            case orderType = "order_type"

            case lockData = "lock_data"

            case autoTriggerDpAssignmentAcf = "auto_trigger_dp_assignment_acf"

            case weight

            case dpOptions = "dp_options"

            case dueDate = "due_date"

            case storeInvoiceUpdatedDate = "store_invoice_updated_date"

            case returnStoreNode = "return_store_node"

            case returnAwbNumber = "return_awb_number"

            case shipmentVolumetricWeight = "shipment_volumetric_weight"

            case formatted
        }

        public init(assignDpFromSb: Bool? = nil, autoTriggerDpAssignmentAcf: Bool? = nil, awbNumber: String? = nil, b2BBuyerDetails: BuyerDetails? = nil, b2CBuyerDetails: [String: Any]? = nil, bagWeight: [String: Any]? = nil, boxType: String? = nil, debugInfo: DebugInfo? = nil, dimension: Dimensions? = nil, dpId: String? = nil, dpName: String? = nil, dpOptions: [String: Any]? = nil, dpSortKey: String? = nil, dueDate: String? = nil, einvoiceInfo: EinvoiceInfo? = nil, ewaybillInfo: [String: Any]? = nil, externalLink: [String: Any]? = nil, formatted: Formatted? = nil, forwardAffiliateOrderId: String? = nil, forwardAffiliateShipmentId: String? = nil, fulfilmentPriorityText: String? = nil, lockData: LockData? = nil, marketplaceStoreId: String? = nil, orderType: String? = nil, packagingName: String? = nil, parentDpId: String? = nil, poNumber: String? = nil, returnAffiliateOrderId: String? = nil, returnAffiliateShipmentId: String? = nil, returnAwbNumber: String? = nil, returnDetails: [String: Any]? = nil, returnStoreNode: Int? = nil, sameStoreAvailable: Bool, shipmentTags: [ShipmentTags]? = nil, shipmentVolumetricWeight: Double? = nil, shipmentWeight: Double? = nil, storeInvoiceUpdatedDate: String? = nil, timestamp: ShipmentTimeStamp? = nil, weight: Int) {
            self.dpName = dpName

            self.shipmentTags = shipmentTags

            self.externalLink = externalLink

            self.packagingName = packagingName

            self.bagWeight = bagWeight

            self.debugInfo = debugInfo

            self.einvoiceInfo = einvoiceInfo

            self.returnAffiliateOrderId = returnAffiliateOrderId

            self.dpSortKey = dpSortKey

            self.b2CBuyerDetails = b2CBuyerDetails

            self.forwardAffiliateShipmentId = forwardAffiliateShipmentId

            self.boxType = boxType

            self.dimension = dimension

            self.returnAffiliateShipmentId = returnAffiliateShipmentId

            self.b2BBuyerDetails = b2BBuyerDetails

            self.dpId = dpId

            self.returnDetails = returnDetails

            self.fulfilmentPriorityText = fulfilmentPriorityText

            self.poNumber = poNumber

            self.sameStoreAvailable = sameStoreAvailable

            self.forwardAffiliateOrderId = forwardAffiliateOrderId

            self.marketplaceStoreId = marketplaceStoreId

            self.ewaybillInfo = ewaybillInfo

            self.awbNumber = awbNumber

            self.shipmentWeight = shipmentWeight

            self.parentDpId = parentDpId

            self.assignDpFromSb = assignDpFromSb

            self.timestamp = timestamp

            self.orderType = orderType

            self.lockData = lockData

            self.autoTriggerDpAssignmentAcf = autoTriggerDpAssignmentAcf

            self.weight = weight

            self.dpOptions = dpOptions

            self.dueDate = dueDate

            self.storeInvoiceUpdatedDate = storeInvoiceUpdatedDate

            self.returnStoreNode = returnStoreNode

            self.returnAwbNumber = returnAwbNumber

            self.shipmentVolumetricWeight = shipmentVolumetricWeight

            self.formatted = formatted
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                dpName = try container.decode(String.self, forKey: .dpName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shipmentTags = try container.decode([ShipmentTags].self, forKey: .shipmentTags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                externalLink = try container.decode([String: Any].self, forKey: .externalLink)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                packagingName = try container.decode(String.self, forKey: .packagingName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bagWeight = try container.decode([String: Any].self, forKey: .bagWeight)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                debugInfo = try container.decode(DebugInfo.self, forKey: .debugInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                einvoiceInfo = try container.decode(EinvoiceInfo.self, forKey: .einvoiceInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                returnAffiliateOrderId = try container.decode(String.self, forKey: .returnAffiliateOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dpSortKey = try container.decode(String.self, forKey: .dpSortKey)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                b2CBuyerDetails = try container.decode([String: Any].self, forKey: .b2CBuyerDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                forwardAffiliateShipmentId = try container.decode(String.self, forKey: .forwardAffiliateShipmentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                boxType = try container.decode(String.self, forKey: .boxType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dimension = try container.decode(Dimensions.self, forKey: .dimension)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                returnAffiliateShipmentId = try container.decode(String.self, forKey: .returnAffiliateShipmentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                b2BBuyerDetails = try container.decode(BuyerDetails.self, forKey: .b2BBuyerDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dpId = try container.decode(String.self, forKey: .dpId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                returnDetails = try container.decode([String: Any].self, forKey: .returnDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fulfilmentPriorityText = try container.decode(String.self, forKey: .fulfilmentPriorityText)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                poNumber = try container.decode(String.self, forKey: .poNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sameStoreAvailable = try container.decode(Bool.self, forKey: .sameStoreAvailable)

            do {
                forwardAffiliateOrderId = try container.decode(String.self, forKey: .forwardAffiliateOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                marketplaceStoreId = try container.decode(String.self, forKey: .marketplaceStoreId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                ewaybillInfo = try container.decode([String: Any].self, forKey: .ewaybillInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                awbNumber = try container.decode(String.self, forKey: .awbNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shipmentWeight = try container.decode(Double.self, forKey: .shipmentWeight)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                parentDpId = try container.decode(String.self, forKey: .parentDpId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                assignDpFromSb = try container.decode(Bool.self, forKey: .assignDpFromSb)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                timestamp = try container.decode(ShipmentTimeStamp.self, forKey: .timestamp)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderType = try container.decode(String.self, forKey: .orderType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                lockData = try container.decode(LockData.self, forKey: .lockData)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                autoTriggerDpAssignmentAcf = try container.decode(Bool.self, forKey: .autoTriggerDpAssignmentAcf)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            weight = try container.decode(Int.self, forKey: .weight)

            do {
                dpOptions = try container.decode([String: Any].self, forKey: .dpOptions)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dueDate = try container.decode(String.self, forKey: .dueDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeInvoiceUpdatedDate = try container.decode(String.self, forKey: .storeInvoiceUpdatedDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                returnStoreNode = try container.decode(Int.self, forKey: .returnStoreNode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                returnAwbNumber = try container.decode(String.self, forKey: .returnAwbNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shipmentVolumetricWeight = try container.decode(Double.self, forKey: .shipmentVolumetricWeight)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                formatted = try container.decode(Formatted.self, forKey: .formatted)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(dpName, forKey: .dpName)

            try? container.encodeIfPresent(shipmentTags, forKey: .shipmentTags)

            try? container.encodeIfPresent(externalLink, forKey: .externalLink)

            try? container.encodeIfPresent(packagingName, forKey: .packagingName)

            try? container.encodeIfPresent(bagWeight, forKey: .bagWeight)

            try? container.encodeIfPresent(debugInfo, forKey: .debugInfo)

            try? container.encodeIfPresent(einvoiceInfo, forKey: .einvoiceInfo)

            try? container.encodeIfPresent(returnAffiliateOrderId, forKey: .returnAffiliateOrderId)

            try? container.encodeIfPresent(dpSortKey, forKey: .dpSortKey)

            try? container.encode(b2CBuyerDetails, forKey: .b2CBuyerDetails)

            try? container.encodeIfPresent(forwardAffiliateShipmentId, forKey: .forwardAffiliateShipmentId)

            try? container.encode(boxType, forKey: .boxType)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(returnAffiliateShipmentId, forKey: .returnAffiliateShipmentId)

            try? container.encodeIfPresent(b2BBuyerDetails, forKey: .b2BBuyerDetails)

            try? container.encode(dpId, forKey: .dpId)

            try? container.encodeIfPresent(returnDetails, forKey: .returnDetails)

            try? container.encode(fulfilmentPriorityText, forKey: .fulfilmentPriorityText)

            try? container.encodeIfPresent(poNumber, forKey: .poNumber)

            try? container.encodeIfPresent(sameStoreAvailable, forKey: .sameStoreAvailable)

            try? container.encodeIfPresent(forwardAffiliateOrderId, forKey: .forwardAffiliateOrderId)

            try? container.encodeIfPresent(marketplaceStoreId, forKey: .marketplaceStoreId)

            try? container.encode(ewaybillInfo, forKey: .ewaybillInfo)

            try? container.encodeIfPresent(awbNumber, forKey: .awbNumber)

            try? container.encodeIfPresent(shipmentWeight, forKey: .shipmentWeight)

            try? container.encode(parentDpId, forKey: .parentDpId)

            try? container.encodeIfPresent(assignDpFromSb, forKey: .assignDpFromSb)

            try? container.encodeIfPresent(timestamp, forKey: .timestamp)

            try? container.encode(orderType, forKey: .orderType)

            try? container.encodeIfPresent(lockData, forKey: .lockData)

            try? container.encodeIfPresent(autoTriggerDpAssignmentAcf, forKey: .autoTriggerDpAssignmentAcf)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(dpOptions, forKey: .dpOptions)

            try? container.encodeIfPresent(dueDate, forKey: .dueDate)

            try? container.encodeIfPresent(storeInvoiceUpdatedDate, forKey: .storeInvoiceUpdatedDate)

            try? container.encodeIfPresent(returnStoreNode, forKey: .returnStoreNode)

            try? container.encodeIfPresent(returnAwbNumber, forKey: .returnAwbNumber)

            try? container.encodeIfPresent(shipmentVolumetricWeight, forKey: .shipmentVolumetricWeight)

            try? container.encodeIfPresent(formatted, forKey: .formatted)
        }
    }
}
