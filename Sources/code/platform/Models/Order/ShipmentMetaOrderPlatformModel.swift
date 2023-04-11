

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ShipmentMeta
         Used By: Order
     */

    class ShipmentMeta: Codable {
        public var storeInvoiceUpdatedDate: String?

        public var sameStoreAvailable: Bool

        public var marketplaceStoreId: String?

        public var b2CBuyerDetails: [String: Any]?

        public var returnDetails: [String: Any]?

        public var dueDate: String?

        public var debugInfo: DebugInfo?

        public var returnAffiliateOrderId: String?

        public var shipmentVolumetricWeight: Double?

        public var dpOptions: [String: Any]?

        public var einvoiceInfo: EinvoiceInfo?

        public var ewaybillInfo: [String: Any]?

        public var weight: Int

        public var returnAffiliateShipmentId: String?

        public var orderType: String?

        public var lockData: LockData?

        public var forwardAffiliateShipmentId: String?

        public var fulfilmentPriorityText: String?

        public var timestamp: ShipmentTimeStamp?

        public var returnStoreNode: Int?

        public var dpId: String?

        public var b2BBuyerDetails: BuyerDetails?

        public var externalLink: [String: Any]?

        public var formatted: Formatted?

        public var dpSortKey: String?

        public var bagWeight: [String: Any]?

        public var boxType: String?

        public var forwardAffiliateOrderId: String?

        public var packagingName: String?

        public var awbNumber: String?

        public var assignDpFromSb: Bool?

        public var shipmentWeight: Double?

        public var dpName: String?

        public var poNumber: String?

        public var autoTriggerDpAssignmentAcf: Bool

        public var returnAwbNumber: String?

        public enum CodingKeys: String, CodingKey {
            case storeInvoiceUpdatedDate = "store_invoice_updated_date"

            case sameStoreAvailable = "same_store_available"

            case marketplaceStoreId = "marketplace_store_id"

            case b2CBuyerDetails = "b2c_buyer_details"

            case returnDetails = "return_details"

            case dueDate = "due_date"

            case debugInfo = "debug_info"

            case returnAffiliateOrderId = "return_affiliate_order_id"

            case shipmentVolumetricWeight = "shipment_volumetric_weight"

            case dpOptions = "dp_options"

            case einvoiceInfo = "einvoice_info"

            case ewaybillInfo = "ewaybill_info"

            case weight

            case returnAffiliateShipmentId = "return_affiliate_shipment_id"

            case orderType = "order_type"

            case lockData = "lock_data"

            case forwardAffiliateShipmentId = "forward_affiliate_shipment_id"

            case fulfilmentPriorityText = "fulfilment_priority_text"

            case timestamp

            case returnStoreNode = "return_store_node"

            case dpId = "dp_id"

            case b2BBuyerDetails = "b2b_buyer_details"

            case externalLink = "external"

            case formatted

            case dpSortKey = "dp_sort_key"

            case bagWeight = "bag_weight"

            case boxType = "box_type"

            case forwardAffiliateOrderId = "forward_affiliate_order_id"

            case packagingName = "packaging_name"

            case awbNumber = "awb_number"

            case assignDpFromSb = "assign_dp_from_sb"

            case shipmentWeight = "shipment_weight"

            case dpName = "dp_name"

            case poNumber = "po_number"

            case autoTriggerDpAssignmentAcf = "auto_trigger_dp_assignment_acf"

            case returnAwbNumber = "return_awb_number"
        }

        public init(assignDpFromSb: Bool? = nil, autoTriggerDpAssignmentAcf: Bool, awbNumber: String? = nil, b2BBuyerDetails: BuyerDetails? = nil, b2CBuyerDetails: [String: Any]? = nil, bagWeight: [String: Any]? = nil, boxType: String? = nil, debugInfo: DebugInfo? = nil, dpId: String? = nil, dpName: String? = nil, dpOptions: [String: Any]? = nil, dpSortKey: String? = nil, dueDate: String? = nil, einvoiceInfo: EinvoiceInfo? = nil, ewaybillInfo: [String: Any]? = nil, externalLink: [String: Any]? = nil, formatted: Formatted? = nil, forwardAffiliateOrderId: String? = nil, forwardAffiliateShipmentId: String? = nil, fulfilmentPriorityText: String? = nil, lockData: LockData? = nil, marketplaceStoreId: String? = nil, orderType: String? = nil, packagingName: String? = nil, poNumber: String? = nil, returnAffiliateOrderId: String? = nil, returnAffiliateShipmentId: String? = nil, returnAwbNumber: String? = nil, returnDetails: [String: Any]? = nil, returnStoreNode: Int? = nil, sameStoreAvailable: Bool, shipmentVolumetricWeight: Double? = nil, shipmentWeight: Double? = nil, storeInvoiceUpdatedDate: String? = nil, timestamp: ShipmentTimeStamp? = nil, weight: Int) {
            self.storeInvoiceUpdatedDate = storeInvoiceUpdatedDate

            self.sameStoreAvailable = sameStoreAvailable

            self.marketplaceStoreId = marketplaceStoreId

            self.b2CBuyerDetails = b2CBuyerDetails

            self.returnDetails = returnDetails

            self.dueDate = dueDate

            self.debugInfo = debugInfo

            self.returnAffiliateOrderId = returnAffiliateOrderId

            self.shipmentVolumetricWeight = shipmentVolumetricWeight

            self.dpOptions = dpOptions

            self.einvoiceInfo = einvoiceInfo

            self.ewaybillInfo = ewaybillInfo

            self.weight = weight

            self.returnAffiliateShipmentId = returnAffiliateShipmentId

            self.orderType = orderType

            self.lockData = lockData

            self.forwardAffiliateShipmentId = forwardAffiliateShipmentId

            self.fulfilmentPriorityText = fulfilmentPriorityText

            self.timestamp = timestamp

            self.returnStoreNode = returnStoreNode

            self.dpId = dpId

            self.b2BBuyerDetails = b2BBuyerDetails

            self.externalLink = externalLink

            self.formatted = formatted

            self.dpSortKey = dpSortKey

            self.bagWeight = bagWeight

            self.boxType = boxType

            self.forwardAffiliateOrderId = forwardAffiliateOrderId

            self.packagingName = packagingName

            self.awbNumber = awbNumber

            self.assignDpFromSb = assignDpFromSb

            self.shipmentWeight = shipmentWeight

            self.dpName = dpName

            self.poNumber = poNumber

            self.autoTriggerDpAssignmentAcf = autoTriggerDpAssignmentAcf

            self.returnAwbNumber = returnAwbNumber
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                storeInvoiceUpdatedDate = try container.decode(String.self, forKey: .storeInvoiceUpdatedDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sameStoreAvailable = try container.decode(Bool.self, forKey: .sameStoreAvailable)

            do {
                marketplaceStoreId = try container.decode(String.self, forKey: .marketplaceStoreId)

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
                returnDetails = try container.decode([String: Any].self, forKey: .returnDetails)

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
                debugInfo = try container.decode(DebugInfo.self, forKey: .debugInfo)

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
                shipmentVolumetricWeight = try container.decode(Double.self, forKey: .shipmentVolumetricWeight)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dpOptions = try container.decode([String: Any].self, forKey: .dpOptions)

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
                ewaybillInfo = try container.decode([String: Any].self, forKey: .ewaybillInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            weight = try container.decode(Int.self, forKey: .weight)

            do {
                returnAffiliateShipmentId = try container.decode(String.self, forKey: .returnAffiliateShipmentId)

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
                forwardAffiliateShipmentId = try container.decode(String.self, forKey: .forwardAffiliateShipmentId)

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
                timestamp = try container.decode(ShipmentTimeStamp.self, forKey: .timestamp)

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
                dpId = try container.decode(String.self, forKey: .dpId)

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
                externalLink = try container.decode([String: Any].self, forKey: .externalLink)

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

            do {
                dpSortKey = try container.decode(String.self, forKey: .dpSortKey)

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
                boxType = try container.decode(String.self, forKey: .boxType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                forwardAffiliateOrderId = try container.decode(String.self, forKey: .forwardAffiliateOrderId)

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
                awbNumber = try container.decode(String.self, forKey: .awbNumber)

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
                shipmentWeight = try container.decode(Double.self, forKey: .shipmentWeight)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dpName = try container.decode(String.self, forKey: .dpName)

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

            autoTriggerDpAssignmentAcf = try container.decode(Bool.self, forKey: .autoTriggerDpAssignmentAcf)

            do {
                returnAwbNumber = try container.decode(String.self, forKey: .returnAwbNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeInvoiceUpdatedDate, forKey: .storeInvoiceUpdatedDate)

            try? container.encodeIfPresent(sameStoreAvailable, forKey: .sameStoreAvailable)

            try? container.encodeIfPresent(marketplaceStoreId, forKey: .marketplaceStoreId)

            try? container.encode(b2CBuyerDetails, forKey: .b2CBuyerDetails)

            try? container.encodeIfPresent(returnDetails, forKey: .returnDetails)

            try? container.encodeIfPresent(dueDate, forKey: .dueDate)

            try? container.encodeIfPresent(debugInfo, forKey: .debugInfo)

            try? container.encodeIfPresent(returnAffiliateOrderId, forKey: .returnAffiliateOrderId)

            try? container.encodeIfPresent(shipmentVolumetricWeight, forKey: .shipmentVolumetricWeight)

            try? container.encodeIfPresent(dpOptions, forKey: .dpOptions)

            try? container.encodeIfPresent(einvoiceInfo, forKey: .einvoiceInfo)

            try? container.encode(ewaybillInfo, forKey: .ewaybillInfo)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(returnAffiliateShipmentId, forKey: .returnAffiliateShipmentId)

            try? container.encode(orderType, forKey: .orderType)

            try? container.encodeIfPresent(lockData, forKey: .lockData)

            try? container.encodeIfPresent(forwardAffiliateShipmentId, forKey: .forwardAffiliateShipmentId)

            try? container.encode(fulfilmentPriorityText, forKey: .fulfilmentPriorityText)

            try? container.encodeIfPresent(timestamp, forKey: .timestamp)

            try? container.encodeIfPresent(returnStoreNode, forKey: .returnStoreNode)

            try? container.encode(dpId, forKey: .dpId)

            try? container.encodeIfPresent(b2BBuyerDetails, forKey: .b2BBuyerDetails)

            try? container.encodeIfPresent(externalLink, forKey: .externalLink)

            try? container.encodeIfPresent(formatted, forKey: .formatted)

            try? container.encodeIfPresent(dpSortKey, forKey: .dpSortKey)

            try? container.encodeIfPresent(bagWeight, forKey: .bagWeight)

            try? container.encode(boxType, forKey: .boxType)

            try? container.encodeIfPresent(forwardAffiliateOrderId, forKey: .forwardAffiliateOrderId)

            try? container.encodeIfPresent(packagingName, forKey: .packagingName)

            try? container.encodeIfPresent(awbNumber, forKey: .awbNumber)

            try? container.encodeIfPresent(assignDpFromSb, forKey: .assignDpFromSb)

            try? container.encodeIfPresent(shipmentWeight, forKey: .shipmentWeight)

            try? container.encodeIfPresent(dpName, forKey: .dpName)

            try? container.encodeIfPresent(poNumber, forKey: .poNumber)

            try? container.encodeIfPresent(autoTriggerDpAssignmentAcf, forKey: .autoTriggerDpAssignmentAcf)

            try? container.encodeIfPresent(returnAwbNumber, forKey: .returnAwbNumber)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ShipmentMeta
         Used By: Order
     */

    class ShipmentMeta: Codable {
        public var storeInvoiceUpdatedDate: String?

        public var sameStoreAvailable: Bool

        public var marketplaceStoreId: String?

        public var b2CBuyerDetails: [String: Any]?

        public var returnDetails: [String: Any]?

        public var dueDate: String?

        public var debugInfo: DebugInfo?

        public var returnAffiliateOrderId: String?

        public var shipmentVolumetricWeight: Double?

        public var dpOptions: [String: Any]?

        public var einvoiceInfo: EinvoiceInfo?

        public var ewaybillInfo: [String: Any]?

        public var weight: Int

        public var returnAffiliateShipmentId: String?

        public var orderType: String?

        public var lockData: LockData?

        public var forwardAffiliateShipmentId: String?

        public var fulfilmentPriorityText: String?

        public var timestamp: ShipmentTimeStamp?

        public var returnStoreNode: Int?

        public var dpId: String?

        public var b2BBuyerDetails: BuyerDetails?

        public var externalLink: [String: Any]?

        public var formatted: Formatted?

        public var dpSortKey: String?

        public var bagWeight: [String: Any]?

        public var boxType: String?

        public var forwardAffiliateOrderId: String?

        public var packagingName: String?

        public var awbNumber: String?

        public var assignDpFromSb: Bool?

        public var shipmentWeight: Double?

        public var dpName: String?

        public var poNumber: String?

        public var autoTriggerDpAssignmentAcf: Bool

        public var returnAwbNumber: String?

        public enum CodingKeys: String, CodingKey {
            case storeInvoiceUpdatedDate = "store_invoice_updated_date"

            case sameStoreAvailable = "same_store_available"

            case marketplaceStoreId = "marketplace_store_id"

            case b2CBuyerDetails = "b2c_buyer_details"

            case returnDetails = "return_details"

            case dueDate = "due_date"

            case debugInfo = "debug_info"

            case returnAffiliateOrderId = "return_affiliate_order_id"

            case shipmentVolumetricWeight = "shipment_volumetric_weight"

            case dpOptions = "dp_options"

            case einvoiceInfo = "einvoice_info"

            case ewaybillInfo = "ewaybill_info"

            case weight

            case returnAffiliateShipmentId = "return_affiliate_shipment_id"

            case orderType = "order_type"

            case lockData = "lock_data"

            case forwardAffiliateShipmentId = "forward_affiliate_shipment_id"

            case fulfilmentPriorityText = "fulfilment_priority_text"

            case timestamp

            case returnStoreNode = "return_store_node"

            case dpId = "dp_id"

            case b2BBuyerDetails = "b2b_buyer_details"

            case externalLink = "external"

            case formatted

            case dpSortKey = "dp_sort_key"

            case bagWeight = "bag_weight"

            case boxType = "box_type"

            case forwardAffiliateOrderId = "forward_affiliate_order_id"

            case packagingName = "packaging_name"

            case awbNumber = "awb_number"

            case assignDpFromSb = "assign_dp_from_sb"

            case shipmentWeight = "shipment_weight"

            case dpName = "dp_name"

            case poNumber = "po_number"

            case autoTriggerDpAssignmentAcf = "auto_trigger_dp_assignment_acf"

            case returnAwbNumber = "return_awb_number"
        }

        public init(assignDpFromSb: Bool? = nil, autoTriggerDpAssignmentAcf: Bool, awbNumber: String? = nil, b2BBuyerDetails: BuyerDetails? = nil, b2CBuyerDetails: [String: Any]? = nil, bagWeight: [String: Any]? = nil, boxType: String? = nil, debugInfo: DebugInfo? = nil, dpId: String? = nil, dpName: String? = nil, dpOptions: [String: Any]? = nil, dpSortKey: String? = nil, dueDate: String? = nil, einvoiceInfo: EinvoiceInfo? = nil, ewaybillInfo: [String: Any]? = nil, externalLink: [String: Any]? = nil, formatted: Formatted? = nil, forwardAffiliateOrderId: String? = nil, forwardAffiliateShipmentId: String? = nil, fulfilmentPriorityText: String? = nil, lockData: LockData? = nil, marketplaceStoreId: String? = nil, orderType: String? = nil, packagingName: String? = nil, poNumber: String? = nil, returnAffiliateOrderId: String? = nil, returnAffiliateShipmentId: String? = nil, returnAwbNumber: String? = nil, returnDetails: [String: Any]? = nil, returnStoreNode: Int? = nil, sameStoreAvailable: Bool, shipmentVolumetricWeight: Double? = nil, shipmentWeight: Double? = nil, storeInvoiceUpdatedDate: String? = nil, timestamp: ShipmentTimeStamp? = nil, weight: Int) {
            self.storeInvoiceUpdatedDate = storeInvoiceUpdatedDate

            self.sameStoreAvailable = sameStoreAvailable

            self.marketplaceStoreId = marketplaceStoreId

            self.b2CBuyerDetails = b2CBuyerDetails

            self.returnDetails = returnDetails

            self.dueDate = dueDate

            self.debugInfo = debugInfo

            self.returnAffiliateOrderId = returnAffiliateOrderId

            self.shipmentVolumetricWeight = shipmentVolumetricWeight

            self.dpOptions = dpOptions

            self.einvoiceInfo = einvoiceInfo

            self.ewaybillInfo = ewaybillInfo

            self.weight = weight

            self.returnAffiliateShipmentId = returnAffiliateShipmentId

            self.orderType = orderType

            self.lockData = lockData

            self.forwardAffiliateShipmentId = forwardAffiliateShipmentId

            self.fulfilmentPriorityText = fulfilmentPriorityText

            self.timestamp = timestamp

            self.returnStoreNode = returnStoreNode

            self.dpId = dpId

            self.b2BBuyerDetails = b2BBuyerDetails

            self.externalLink = externalLink

            self.formatted = formatted

            self.dpSortKey = dpSortKey

            self.bagWeight = bagWeight

            self.boxType = boxType

            self.forwardAffiliateOrderId = forwardAffiliateOrderId

            self.packagingName = packagingName

            self.awbNumber = awbNumber

            self.assignDpFromSb = assignDpFromSb

            self.shipmentWeight = shipmentWeight

            self.dpName = dpName

            self.poNumber = poNumber

            self.autoTriggerDpAssignmentAcf = autoTriggerDpAssignmentAcf

            self.returnAwbNumber = returnAwbNumber
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                storeInvoiceUpdatedDate = try container.decode(String.self, forKey: .storeInvoiceUpdatedDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sameStoreAvailable = try container.decode(Bool.self, forKey: .sameStoreAvailable)

            do {
                marketplaceStoreId = try container.decode(String.self, forKey: .marketplaceStoreId)

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
                returnDetails = try container.decode([String: Any].self, forKey: .returnDetails)

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
                debugInfo = try container.decode(DebugInfo.self, forKey: .debugInfo)

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
                shipmentVolumetricWeight = try container.decode(Double.self, forKey: .shipmentVolumetricWeight)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dpOptions = try container.decode([String: Any].self, forKey: .dpOptions)

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
                ewaybillInfo = try container.decode([String: Any].self, forKey: .ewaybillInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            weight = try container.decode(Int.self, forKey: .weight)

            do {
                returnAffiliateShipmentId = try container.decode(String.self, forKey: .returnAffiliateShipmentId)

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
                forwardAffiliateShipmentId = try container.decode(String.self, forKey: .forwardAffiliateShipmentId)

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
                timestamp = try container.decode(ShipmentTimeStamp.self, forKey: .timestamp)

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
                dpId = try container.decode(String.self, forKey: .dpId)

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
                externalLink = try container.decode([String: Any].self, forKey: .externalLink)

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

            do {
                dpSortKey = try container.decode(String.self, forKey: .dpSortKey)

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
                boxType = try container.decode(String.self, forKey: .boxType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                forwardAffiliateOrderId = try container.decode(String.self, forKey: .forwardAffiliateOrderId)

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
                awbNumber = try container.decode(String.self, forKey: .awbNumber)

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
                shipmentWeight = try container.decode(Double.self, forKey: .shipmentWeight)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dpName = try container.decode(String.self, forKey: .dpName)

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

            autoTriggerDpAssignmentAcf = try container.decode(Bool.self, forKey: .autoTriggerDpAssignmentAcf)

            do {
                returnAwbNumber = try container.decode(String.self, forKey: .returnAwbNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeInvoiceUpdatedDate, forKey: .storeInvoiceUpdatedDate)

            try? container.encodeIfPresent(sameStoreAvailable, forKey: .sameStoreAvailable)

            try? container.encodeIfPresent(marketplaceStoreId, forKey: .marketplaceStoreId)

            try? container.encode(b2CBuyerDetails, forKey: .b2CBuyerDetails)

            try? container.encodeIfPresent(returnDetails, forKey: .returnDetails)

            try? container.encodeIfPresent(dueDate, forKey: .dueDate)

            try? container.encodeIfPresent(debugInfo, forKey: .debugInfo)

            try? container.encodeIfPresent(returnAffiliateOrderId, forKey: .returnAffiliateOrderId)

            try? container.encodeIfPresent(shipmentVolumetricWeight, forKey: .shipmentVolumetricWeight)

            try? container.encodeIfPresent(dpOptions, forKey: .dpOptions)

            try? container.encodeIfPresent(einvoiceInfo, forKey: .einvoiceInfo)

            try? container.encode(ewaybillInfo, forKey: .ewaybillInfo)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(returnAffiliateShipmentId, forKey: .returnAffiliateShipmentId)

            try? container.encode(orderType, forKey: .orderType)

            try? container.encodeIfPresent(lockData, forKey: .lockData)

            try? container.encodeIfPresent(forwardAffiliateShipmentId, forKey: .forwardAffiliateShipmentId)

            try? container.encode(fulfilmentPriorityText, forKey: .fulfilmentPriorityText)

            try? container.encodeIfPresent(timestamp, forKey: .timestamp)

            try? container.encodeIfPresent(returnStoreNode, forKey: .returnStoreNode)

            try? container.encode(dpId, forKey: .dpId)

            try? container.encodeIfPresent(b2BBuyerDetails, forKey: .b2BBuyerDetails)

            try? container.encodeIfPresent(externalLink, forKey: .externalLink)

            try? container.encodeIfPresent(formatted, forKey: .formatted)

            try? container.encodeIfPresent(dpSortKey, forKey: .dpSortKey)

            try? container.encodeIfPresent(bagWeight, forKey: .bagWeight)

            try? container.encode(boxType, forKey: .boxType)

            try? container.encodeIfPresent(forwardAffiliateOrderId, forKey: .forwardAffiliateOrderId)

            try? container.encodeIfPresent(packagingName, forKey: .packagingName)

            try? container.encodeIfPresent(awbNumber, forKey: .awbNumber)

            try? container.encodeIfPresent(assignDpFromSb, forKey: .assignDpFromSb)

            try? container.encodeIfPresent(shipmentWeight, forKey: .shipmentWeight)

            try? container.encodeIfPresent(dpName, forKey: .dpName)

            try? container.encodeIfPresent(poNumber, forKey: .poNumber)

            try? container.encodeIfPresent(autoTriggerDpAssignmentAcf, forKey: .autoTriggerDpAssignmentAcf)

            try? container.encodeIfPresent(returnAwbNumber, forKey: .returnAwbNumber)
        }
    }
}
