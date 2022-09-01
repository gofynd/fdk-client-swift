

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentMeta
         Used By: Order
     */

    class ShipmentMeta: Codable {
        public var dueDate: String?

        public var boxType: String?

        public var returnDetails: [String: Any]?

        public var einvoiceInfo: EinvoiceInfo?

        public var b2BBuyerDetails: BuyerDetails?

        public var returnAffiliateOrderId: String?

        public var weight: Int

        public var marketplaceStoreId: String?

        public var dpOptions: [String: Any]?

        public var dpSortKey: String?

        public var forwardAffiliateShipmentId: String?

        public var externalLink: [String: Any]?

        public var returnStoreNode: Int?

        public var b2CBuyerDetails: [String: Any]?

        public var dpName: String?

        public var awbNumber: String?

        public var returnAwbNumber: String?

        public var dpId: String?

        public var sameStoreAvailable: Bool

        public var timestamp: [String: Any]?

        public var debugInfo: [String: Any]?

        public var storeInvoiceUpdatedDate: String?

        public var forwardAffiliateOrderId: String?

        public var returnAffiliateShipmentId: String?

        public var orderType: String?

        public var assignDpFromSb: Bool?

        public var bagWeight: [String: Any]?

        public var formatted: [String: Any]?

        public var packagingName: String?

        public var ewaybillInfo: [String: Any]?

        public var autoTriggerDpAssignmentAcf: Bool

        public var poNumber: String?

        public var fulfilmentPriorityText: String?

        public enum CodingKeys: String, CodingKey {
            case dueDate = "due_date"

            case boxType = "box_type"

            case returnDetails = "return_details"

            case einvoiceInfo = "einvoice_info"

            case b2BBuyerDetails = "b2b_buyer_details"

            case returnAffiliateOrderId = "return_affiliate_order_id"

            case weight

            case marketplaceStoreId = "marketplace_store_id"

            case dpOptions = "dp_options"

            case dpSortKey = "dp_sort_key"

            case forwardAffiliateShipmentId = "forward_affiliate_shipment_id"

            case externalLink = "external"

            case returnStoreNode = "return_store_node"

            case b2CBuyerDetails = "b2c_buyer_details"

            case dpName = "dp_name"

            case awbNumber = "awb_number"

            case returnAwbNumber = "return_awb_number"

            case dpId = "dp_id"

            case sameStoreAvailable = "same_store_available"

            case timestamp

            case debugInfo = "debug_info"

            case storeInvoiceUpdatedDate = "store_invoice_updated_date"

            case forwardAffiliateOrderId = "forward_affiliate_order_id"

            case returnAffiliateShipmentId = "return_affiliate_shipment_id"

            case orderType = "order_type"

            case assignDpFromSb = "assign_dp_from_sb"

            case bagWeight = "bag_weight"

            case formatted

            case packagingName = "packaging_name"

            case ewaybillInfo = "ewaybill_info"

            case autoTriggerDpAssignmentAcf = "auto_trigger_dp_assignment_acf"

            case poNumber = "po_number"

            case fulfilmentPriorityText = "fulfilment_priority_text"
        }

        public init(assignDpFromSb: Bool? = nil, autoTriggerDpAssignmentAcf: Bool, awbNumber: String? = nil, b2BBuyerDetails: BuyerDetails? = nil, b2CBuyerDetails: [String: Any]? = nil, bagWeight: [String: Any]? = nil, boxType: String? = nil, debugInfo: [String: Any]? = nil, dpId: String? = nil, dpName: String? = nil, dpOptions: [String: Any]? = nil, dpSortKey: String? = nil, dueDate: String? = nil, einvoiceInfo: EinvoiceInfo? = nil, ewaybillInfo: [String: Any]? = nil, externalLink: [String: Any]? = nil, formatted: [String: Any]? = nil, forwardAffiliateOrderId: String? = nil, forwardAffiliateShipmentId: String? = nil, fulfilmentPriorityText: String? = nil, marketplaceStoreId: String? = nil, orderType: String? = nil, packagingName: String? = nil, poNumber: String? = nil, returnAffiliateOrderId: String? = nil, returnAffiliateShipmentId: String? = nil, returnAwbNumber: String? = nil, returnDetails: [String: Any]? = nil, returnStoreNode: Int? = nil, sameStoreAvailable: Bool, storeInvoiceUpdatedDate: String? = nil, timestamp: [String: Any]? = nil, weight: Int) {
            self.dueDate = dueDate

            self.boxType = boxType

            self.returnDetails = returnDetails

            self.einvoiceInfo = einvoiceInfo

            self.b2BBuyerDetails = b2BBuyerDetails

            self.returnAffiliateOrderId = returnAffiliateOrderId

            self.weight = weight

            self.marketplaceStoreId = marketplaceStoreId

            self.dpOptions = dpOptions

            self.dpSortKey = dpSortKey

            self.forwardAffiliateShipmentId = forwardAffiliateShipmentId

            self.externalLink = externalLink

            self.returnStoreNode = returnStoreNode

            self.b2CBuyerDetails = b2CBuyerDetails

            self.dpName = dpName

            self.awbNumber = awbNumber

            self.returnAwbNumber = returnAwbNumber

            self.dpId = dpId

            self.sameStoreAvailable = sameStoreAvailable

            self.timestamp = timestamp

            self.debugInfo = debugInfo

            self.storeInvoiceUpdatedDate = storeInvoiceUpdatedDate

            self.forwardAffiliateOrderId = forwardAffiliateOrderId

            self.returnAffiliateShipmentId = returnAffiliateShipmentId

            self.orderType = orderType

            self.assignDpFromSb = assignDpFromSb

            self.bagWeight = bagWeight

            self.formatted = formatted

            self.packagingName = packagingName

            self.ewaybillInfo = ewaybillInfo

            self.autoTriggerDpAssignmentAcf = autoTriggerDpAssignmentAcf

            self.poNumber = poNumber

            self.fulfilmentPriorityText = fulfilmentPriorityText
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                dueDate = try container.decode(String.self, forKey: .dueDate)

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
                returnDetails = try container.decode([String: Any].self, forKey: .returnDetails)

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
                b2BBuyerDetails = try container.decode(BuyerDetails.self, forKey: .b2BBuyerDetails)

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

            weight = try container.decode(Int.self, forKey: .weight)

            do {
                marketplaceStoreId = try container.decode(String.self, forKey: .marketplaceStoreId)

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
                dpSortKey = try container.decode(String.self, forKey: .dpSortKey)

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
                externalLink = try container.decode([String: Any].self, forKey: .externalLink)

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
                b2CBuyerDetails = try container.decode([String: Any].self, forKey: .b2CBuyerDetails)

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
                awbNumber = try container.decode(String.self, forKey: .awbNumber)

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
                dpId = try container.decode(String.self, forKey: .dpId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sameStoreAvailable = try container.decode(Bool.self, forKey: .sameStoreAvailable)

            do {
                timestamp = try container.decode([String: Any].self, forKey: .timestamp)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                debugInfo = try container.decode([String: Any].self, forKey: .debugInfo)

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
                forwardAffiliateOrderId = try container.decode(String.self, forKey: .forwardAffiliateOrderId)

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
                orderType = try container.decode(String.self, forKey: .orderType)

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
                bagWeight = try container.decode([String: Any].self, forKey: .bagWeight)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                formatted = try container.decode([String: Any].self, forKey: .formatted)

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
                ewaybillInfo = try container.decode([String: Any].self, forKey: .ewaybillInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            autoTriggerDpAssignmentAcf = try container.decode(Bool.self, forKey: .autoTriggerDpAssignmentAcf)

            do {
                poNumber = try container.decode(String.self, forKey: .poNumber)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(dueDate, forKey: .dueDate)

            try? container.encode(boxType, forKey: .boxType)

            try? container.encodeIfPresent(returnDetails, forKey: .returnDetails)

            try? container.encodeIfPresent(einvoiceInfo, forKey: .einvoiceInfo)

            try? container.encodeIfPresent(b2BBuyerDetails, forKey: .b2BBuyerDetails)

            try? container.encodeIfPresent(returnAffiliateOrderId, forKey: .returnAffiliateOrderId)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(marketplaceStoreId, forKey: .marketplaceStoreId)

            try? container.encodeIfPresent(dpOptions, forKey: .dpOptions)

            try? container.encodeIfPresent(dpSortKey, forKey: .dpSortKey)

            try? container.encodeIfPresent(forwardAffiliateShipmentId, forKey: .forwardAffiliateShipmentId)

            try? container.encodeIfPresent(externalLink, forKey: .externalLink)

            try? container.encodeIfPresent(returnStoreNode, forKey: .returnStoreNode)

            try? container.encode(b2CBuyerDetails, forKey: .b2CBuyerDetails)

            try? container.encodeIfPresent(dpName, forKey: .dpName)

            try? container.encodeIfPresent(awbNumber, forKey: .awbNumber)

            try? container.encodeIfPresent(returnAwbNumber, forKey: .returnAwbNumber)

            try? container.encode(dpId, forKey: .dpId)

            try? container.encodeIfPresent(sameStoreAvailable, forKey: .sameStoreAvailable)

            try? container.encodeIfPresent(timestamp, forKey: .timestamp)

            try? container.encodeIfPresent(debugInfo, forKey: .debugInfo)

            try? container.encodeIfPresent(storeInvoiceUpdatedDate, forKey: .storeInvoiceUpdatedDate)

            try? container.encodeIfPresent(forwardAffiliateOrderId, forKey: .forwardAffiliateOrderId)

            try? container.encodeIfPresent(returnAffiliateShipmentId, forKey: .returnAffiliateShipmentId)

            try? container.encode(orderType, forKey: .orderType)

            try? container.encodeIfPresent(assignDpFromSb, forKey: .assignDpFromSb)

            try? container.encodeIfPresent(bagWeight, forKey: .bagWeight)

            try? container.encodeIfPresent(formatted, forKey: .formatted)

            try? container.encodeIfPresent(packagingName, forKey: .packagingName)

            try? container.encode(ewaybillInfo, forKey: .ewaybillInfo)

            try? container.encodeIfPresent(autoTriggerDpAssignmentAcf, forKey: .autoTriggerDpAssignmentAcf)

            try? container.encodeIfPresent(poNumber, forKey: .poNumber)

            try? container.encode(fulfilmentPriorityText, forKey: .fulfilmentPriorityText)
        }
    }
}
