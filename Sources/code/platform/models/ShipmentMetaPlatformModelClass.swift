

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentMeta
         Used By: Order
     */

    class ShipmentMeta: Codable {
        public var poNumber: String?

        public var orderType: String?

        public var returnAffiliateOrderId: String?

        public var b2BBuyerDetails: BuyerDetails?

        public var bagWeight: [String: Any]?

        public var sameStoreAvailable: Bool

        public var autoTriggerDpAssignmentAcf: Bool

        public var awbNumber: String?

        public var returnAffiliateShipmentId: String?

        public var storeInvoiceUpdatedDate: String?

        public var einvoiceInfo: EinvoiceInfo?

        public var dpSortKey: String?

        public var boxType: String?

        public var b2CBuyerDetails: [String: Any]?

        public var marketplaceStoreId: String?

        public var packagingName: String?

        public var weight: Int

        public var returnStoreNode: Int?

        public var dpName: String?

        public var fulfilmentPriorityText: String?

        public var returnDetails: [String: Any]?

        public var forwardAffiliateOrderId: String?

        public var shipmentVolumetricWeight: Double?

        public var assignDpFromSb: Bool?

        public var timestamp: ShipmentTimeStamp?

        public var lockData: LockData?

        public var externalLink: [String: Any]?

        public var ewaybillInfo: [String: Any]?

        public var dueDate: String?

        public var returnAwbNumber: String?

        public var dpOptions: [String: Any]?

        public var dpId: String?

        public var debugInfo: DebugInfo?

        public var formatted: Formatted?

        public var forwardAffiliateShipmentId: String?

        public var shipmentWeight: Double?

        public enum CodingKeys: String, CodingKey {
            case poNumber = "po_number"

            case orderType = "order_type"

            case returnAffiliateOrderId = "return_affiliate_order_id"

            case b2BBuyerDetails = "b2b_buyer_details"

            case bagWeight = "bag_weight"

            case sameStoreAvailable = "same_store_available"

            case autoTriggerDpAssignmentAcf = "auto_trigger_dp_assignment_acf"

            case awbNumber = "awb_number"

            case returnAffiliateShipmentId = "return_affiliate_shipment_id"

            case storeInvoiceUpdatedDate = "store_invoice_updated_date"

            case einvoiceInfo = "einvoice_info"

            case dpSortKey = "dp_sort_key"

            case boxType = "box_type"

            case b2CBuyerDetails = "b2c_buyer_details"

            case marketplaceStoreId = "marketplace_store_id"

            case packagingName = "packaging_name"

            case weight

            case returnStoreNode = "return_store_node"

            case dpName = "dp_name"

            case fulfilmentPriorityText = "fulfilment_priority_text"

            case returnDetails = "return_details"

            case forwardAffiliateOrderId = "forward_affiliate_order_id"

            case shipmentVolumetricWeight = "shipment_volumetric_weight"

            case assignDpFromSb = "assign_dp_from_sb"

            case timestamp

            case lockData = "lock_data"

            case externalLink = "external"

            case ewaybillInfo = "ewaybill_info"

            case dueDate = "due_date"

            case returnAwbNumber = "return_awb_number"

            case dpOptions = "dp_options"

            case dpId = "dp_id"

            case debugInfo = "debug_info"

            case formatted

            case forwardAffiliateShipmentId = "forward_affiliate_shipment_id"

            case shipmentWeight = "shipment_weight"
        }

        public init(assignDpFromSb: Bool? = nil, autoTriggerDpAssignmentAcf: Bool, awbNumber: String? = nil, b2BBuyerDetails: BuyerDetails? = nil, b2CBuyerDetails: [String: Any]? = nil, bagWeight: [String: Any]? = nil, boxType: String? = nil, debugInfo: DebugInfo? = nil, dpId: String? = nil, dpName: String? = nil, dpOptions: [String: Any]? = nil, dpSortKey: String? = nil, dueDate: String? = nil, einvoiceInfo: EinvoiceInfo? = nil, ewaybillInfo: [String: Any]? = nil, externalLink: [String: Any]? = nil, formatted: Formatted? = nil, forwardAffiliateOrderId: String? = nil, forwardAffiliateShipmentId: String? = nil, fulfilmentPriorityText: String? = nil, lockData: LockData? = nil, marketplaceStoreId: String? = nil, orderType: String? = nil, packagingName: String? = nil, poNumber: String? = nil, returnAffiliateOrderId: String? = nil, returnAffiliateShipmentId: String? = nil, returnAwbNumber: String? = nil, returnDetails: [String: Any]? = nil, returnStoreNode: Int? = nil, sameStoreAvailable: Bool, shipmentVolumetricWeight: Double? = nil, shipmentWeight: Double? = nil, storeInvoiceUpdatedDate: String? = nil, timestamp: ShipmentTimeStamp? = nil, weight: Int) {
            self.poNumber = poNumber

            self.orderType = orderType

            self.returnAffiliateOrderId = returnAffiliateOrderId

            self.b2BBuyerDetails = b2BBuyerDetails

            self.bagWeight = bagWeight

            self.sameStoreAvailable = sameStoreAvailable

            self.autoTriggerDpAssignmentAcf = autoTriggerDpAssignmentAcf

            self.awbNumber = awbNumber

            self.returnAffiliateShipmentId = returnAffiliateShipmentId

            self.storeInvoiceUpdatedDate = storeInvoiceUpdatedDate

            self.einvoiceInfo = einvoiceInfo

            self.dpSortKey = dpSortKey

            self.boxType = boxType

            self.b2CBuyerDetails = b2CBuyerDetails

            self.marketplaceStoreId = marketplaceStoreId

            self.packagingName = packagingName

            self.weight = weight

            self.returnStoreNode = returnStoreNode

            self.dpName = dpName

            self.fulfilmentPriorityText = fulfilmentPriorityText

            self.returnDetails = returnDetails

            self.forwardAffiliateOrderId = forwardAffiliateOrderId

            self.shipmentVolumetricWeight = shipmentVolumetricWeight

            self.assignDpFromSb = assignDpFromSb

            self.timestamp = timestamp

            self.lockData = lockData

            self.externalLink = externalLink

            self.ewaybillInfo = ewaybillInfo

            self.dueDate = dueDate

            self.returnAwbNumber = returnAwbNumber

            self.dpOptions = dpOptions

            self.dpId = dpId

            self.debugInfo = debugInfo

            self.formatted = formatted

            self.forwardAffiliateShipmentId = forwardAffiliateShipmentId

            self.shipmentWeight = shipmentWeight
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                poNumber = try container.decode(String.self, forKey: .poNumber)

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
                returnAffiliateOrderId = try container.decode(String.self, forKey: .returnAffiliateOrderId)

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
                bagWeight = try container.decode([String: Any].self, forKey: .bagWeight)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sameStoreAvailable = try container.decode(Bool.self, forKey: .sameStoreAvailable)

            autoTriggerDpAssignmentAcf = try container.decode(Bool.self, forKey: .autoTriggerDpAssignmentAcf)

            do {
                awbNumber = try container.decode(String.self, forKey: .awbNumber)

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
                storeInvoiceUpdatedDate = try container.decode(String.self, forKey: .storeInvoiceUpdatedDate)

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
                dpSortKey = try container.decode(String.self, forKey: .dpSortKey)

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
                b2CBuyerDetails = try container.decode([String: Any].self, forKey: .b2CBuyerDetails)

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
                packagingName = try container.decode(String.self, forKey: .packagingName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            weight = try container.decode(Int.self, forKey: .weight)

            do {
                returnStoreNode = try container.decode(Int.self, forKey: .returnStoreNode)

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
                fulfilmentPriorityText = try container.decode(String.self, forKey: .fulfilmentPriorityText)

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
                forwardAffiliateOrderId = try container.decode(String.self, forKey: .forwardAffiliateOrderId)

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
                lockData = try container.decode(LockData.self, forKey: .lockData)

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
                ewaybillInfo = try container.decode([String: Any].self, forKey: .ewaybillInfo)

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
                returnAwbNumber = try container.decode(String.self, forKey: .returnAwbNumber)

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
                dpId = try container.decode(String.self, forKey: .dpId)

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
                formatted = try container.decode(Formatted.self, forKey: .formatted)

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
                shipmentWeight = try container.decode(Double.self, forKey: .shipmentWeight)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(poNumber, forKey: .poNumber)

            try? container.encode(orderType, forKey: .orderType)

            try? container.encodeIfPresent(returnAffiliateOrderId, forKey: .returnAffiliateOrderId)

            try? container.encodeIfPresent(b2BBuyerDetails, forKey: .b2BBuyerDetails)

            try? container.encodeIfPresent(bagWeight, forKey: .bagWeight)

            try? container.encodeIfPresent(sameStoreAvailable, forKey: .sameStoreAvailable)

            try? container.encodeIfPresent(autoTriggerDpAssignmentAcf, forKey: .autoTriggerDpAssignmentAcf)

            try? container.encodeIfPresent(awbNumber, forKey: .awbNumber)

            try? container.encodeIfPresent(returnAffiliateShipmentId, forKey: .returnAffiliateShipmentId)

            try? container.encodeIfPresent(storeInvoiceUpdatedDate, forKey: .storeInvoiceUpdatedDate)

            try? container.encodeIfPresent(einvoiceInfo, forKey: .einvoiceInfo)

            try? container.encodeIfPresent(dpSortKey, forKey: .dpSortKey)

            try? container.encode(boxType, forKey: .boxType)

            try? container.encode(b2CBuyerDetails, forKey: .b2CBuyerDetails)

            try? container.encodeIfPresent(marketplaceStoreId, forKey: .marketplaceStoreId)

            try? container.encodeIfPresent(packagingName, forKey: .packagingName)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(returnStoreNode, forKey: .returnStoreNode)

            try? container.encodeIfPresent(dpName, forKey: .dpName)

            try? container.encode(fulfilmentPriorityText, forKey: .fulfilmentPriorityText)

            try? container.encodeIfPresent(returnDetails, forKey: .returnDetails)

            try? container.encodeIfPresent(forwardAffiliateOrderId, forKey: .forwardAffiliateOrderId)

            try? container.encodeIfPresent(shipmentVolumetricWeight, forKey: .shipmentVolumetricWeight)

            try? container.encodeIfPresent(assignDpFromSb, forKey: .assignDpFromSb)

            try? container.encodeIfPresent(timestamp, forKey: .timestamp)

            try? container.encodeIfPresent(lockData, forKey: .lockData)

            try? container.encodeIfPresent(externalLink, forKey: .externalLink)

            try? container.encode(ewaybillInfo, forKey: .ewaybillInfo)

            try? container.encodeIfPresent(dueDate, forKey: .dueDate)

            try? container.encodeIfPresent(returnAwbNumber, forKey: .returnAwbNumber)

            try? container.encodeIfPresent(dpOptions, forKey: .dpOptions)

            try? container.encode(dpId, forKey: .dpId)

            try? container.encodeIfPresent(debugInfo, forKey: .debugInfo)

            try? container.encodeIfPresent(formatted, forKey: .formatted)

            try? container.encodeIfPresent(forwardAffiliateShipmentId, forKey: .forwardAffiliateShipmentId)

            try? container.encodeIfPresent(shipmentWeight, forKey: .shipmentWeight)
        }
    }
}
