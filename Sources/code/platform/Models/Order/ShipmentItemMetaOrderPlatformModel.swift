

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ShipmentItemMeta
         Used By: Order
     */

    class ShipmentItemMeta: Codable {
        public var ewaybillInfo: [String: Any]?

        public var assignDpFromSb: Bool?

        public var externalLink: [String: Any]?

        public var weight: Double?

        public var shipmentVolumetricWeight: Double?

        public var debugInfo: [String: Any]?

        public var pdfMedia: [[String: Any]]?

        public var storeInvoiceUpdatedDate: String?

        public var formatted: Formatted?

        public var tags: [[String: Any]]?

        public var shippingZone: String?

        public var dpOptions: [String: Any]?

        public var packagingName: String?

        public var timestamp: ShipmentTimeStamp?

        public var sla: Double?

        public var shipmentTags: [ShipmentTags]?

        public var activityComment: String?

        public var shipmentWeight: Double?

        public var sameStoreAvailable: Bool?

        public var dpSortKey: String?

        public var fulfilmentPriorityText: String?

        public var bagWeight: [String: Any]?

        public var lockData: LockData?

        public var orderType: String?

        public var existingDpList: [String]?

        public var parentDpId: String?

        public var autoTriggerDpAssignmentAcf: Bool

        public var shipmentChargeableWeight: Double?

        public var isInternational: Bool?

        public enum CodingKeys: String, CodingKey {
            case ewaybillInfo = "ewaybill_info"

            case assignDpFromSb = "assign_dp_from_sb"

            case externalLink = "external"

            case weight

            case shipmentVolumetricWeight = "shipment_volumetric_weight"

            case debugInfo = "debug_info"

            case pdfMedia = "pdf_media"

            case storeInvoiceUpdatedDate = "store_invoice_updated_date"

            case formatted

            case tags

            case shippingZone = "shipping_zone"

            case dpOptions = "dp_options"

            case packagingName = "packaging_name"

            case timestamp

            case sla

            case shipmentTags = "shipment_tags"

            case activityComment = "activity_comment"

            case shipmentWeight = "shipment_weight"

            case sameStoreAvailable = "same_store_available"

            case dpSortKey = "dp_sort_key"

            case fulfilmentPriorityText = "fulfilment_priority_text"

            case bagWeight = "bag_weight"

            case lockData = "lock_data"

            case orderType = "order_type"

            case existingDpList = "existing_dp_list"

            case parentDpId = "parent_dp_id"

            case autoTriggerDpAssignmentAcf = "auto_trigger_dp_assignment_acf"

            case shipmentChargeableWeight = "shipment_chargeable_weight"

            case isInternational = "is_international"
        }

        public init(activityComment: String? = nil, assignDpFromSb: Bool? = nil, autoTriggerDpAssignmentAcf: Bool, bagWeight: [String: Any]? = nil, debugInfo: [String: Any]? = nil, dpOptions: [String: Any]? = nil, dpSortKey: String? = nil, ewaybillInfo: [String: Any]? = nil, existingDpList: [String]? = nil, externalLink: [String: Any]? = nil, formatted: Formatted? = nil, fulfilmentPriorityText: String? = nil, isInternational: Bool? = nil, lockData: LockData? = nil, orderType: String? = nil, packagingName: String? = nil, parentDpId: String? = nil, pdfMedia: [[String: Any]]? = nil, sameStoreAvailable: Bool? = nil, shipmentChargeableWeight: Double? = nil, shipmentTags: [ShipmentTags]? = nil, shipmentVolumetricWeight: Double? = nil, shipmentWeight: Double? = nil, shippingZone: String? = nil, sla: Double? = nil, storeInvoiceUpdatedDate: String? = nil, tags: [[String: Any]]? = nil, timestamp: ShipmentTimeStamp? = nil, weight: Double? = nil) {
            self.ewaybillInfo = ewaybillInfo

            self.assignDpFromSb = assignDpFromSb

            self.externalLink = externalLink

            self.weight = weight

            self.shipmentVolumetricWeight = shipmentVolumetricWeight

            self.debugInfo = debugInfo

            self.pdfMedia = pdfMedia

            self.storeInvoiceUpdatedDate = storeInvoiceUpdatedDate

            self.formatted = formatted

            self.tags = tags

            self.shippingZone = shippingZone

            self.dpOptions = dpOptions

            self.packagingName = packagingName

            self.timestamp = timestamp

            self.sla = sla

            self.shipmentTags = shipmentTags

            self.activityComment = activityComment

            self.shipmentWeight = shipmentWeight

            self.sameStoreAvailable = sameStoreAvailable

            self.dpSortKey = dpSortKey

            self.fulfilmentPriorityText = fulfilmentPriorityText

            self.bagWeight = bagWeight

            self.lockData = lockData

            self.orderType = orderType

            self.existingDpList = existingDpList

            self.parentDpId = parentDpId

            self.autoTriggerDpAssignmentAcf = autoTriggerDpAssignmentAcf

            self.shipmentChargeableWeight = shipmentChargeableWeight

            self.isInternational = isInternational
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                ewaybillInfo = try container.decode([String: Any].self, forKey: .ewaybillInfo)

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
                externalLink = try container.decode([String: Any].self, forKey: .externalLink)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                weight = try container.decode(Double.self, forKey: .weight)

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
                debugInfo = try container.decode([String: Any].self, forKey: .debugInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pdfMedia = try container.decode([[String: Any]].self, forKey: .pdfMedia)

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
                formatted = try container.decode(Formatted.self, forKey: .formatted)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tags = try container.decode([[String: Any]].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shippingZone = try container.decode(String.self, forKey: .shippingZone)

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
                packagingName = try container.decode(String.self, forKey: .packagingName)

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
                sla = try container.decode(Double.self, forKey: .sla)

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
                activityComment = try container.decode(String.self, forKey: .activityComment)

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
                sameStoreAvailable = try container.decode(Bool.self, forKey: .sameStoreAvailable)

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
                fulfilmentPriorityText = try container.decode(String.self, forKey: .fulfilmentPriorityText)

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
                lockData = try container.decode(LockData.self, forKey: .lockData)

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
                existingDpList = try container.decode([String].self, forKey: .existingDpList)

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

            autoTriggerDpAssignmentAcf = try container.decode(Bool.self, forKey: .autoTriggerDpAssignmentAcf)

            do {
                shipmentChargeableWeight = try container.decode(Double.self, forKey: .shipmentChargeableWeight)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isInternational = try container.decode(Bool.self, forKey: .isInternational)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(ewaybillInfo, forKey: .ewaybillInfo)

            try? container.encodeIfPresent(assignDpFromSb, forKey: .assignDpFromSb)

            try? container.encodeIfPresent(externalLink, forKey: .externalLink)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(shipmentVolumetricWeight, forKey: .shipmentVolumetricWeight)

            try? container.encodeIfPresent(debugInfo, forKey: .debugInfo)

            try? container.encodeIfPresent(pdfMedia, forKey: .pdfMedia)

            try? container.encodeIfPresent(storeInvoiceUpdatedDate, forKey: .storeInvoiceUpdatedDate)

            try? container.encodeIfPresent(formatted, forKey: .formatted)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(shippingZone, forKey: .shippingZone)

            try? container.encodeIfPresent(dpOptions, forKey: .dpOptions)

            try? container.encodeIfPresent(packagingName, forKey: .packagingName)

            try? container.encodeIfPresent(timestamp, forKey: .timestamp)

            try? container.encodeIfPresent(sla, forKey: .sla)

            try? container.encodeIfPresent(shipmentTags, forKey: .shipmentTags)

            try? container.encodeIfPresent(activityComment, forKey: .activityComment)

            try? container.encodeIfPresent(shipmentWeight, forKey: .shipmentWeight)

            try? container.encodeIfPresent(sameStoreAvailable, forKey: .sameStoreAvailable)

            try? container.encode(dpSortKey, forKey: .dpSortKey)

            try? container.encode(fulfilmentPriorityText, forKey: .fulfilmentPriorityText)

            try? container.encodeIfPresent(bagWeight, forKey: .bagWeight)

            try? container.encodeIfPresent(lockData, forKey: .lockData)

            try? container.encode(orderType, forKey: .orderType)

            try? container.encodeIfPresent(existingDpList, forKey: .existingDpList)

            try? container.encodeIfPresent(parentDpId, forKey: .parentDpId)

            try? container.encodeIfPresent(autoTriggerDpAssignmentAcf, forKey: .autoTriggerDpAssignmentAcf)

            try? container.encodeIfPresent(shipmentChargeableWeight, forKey: .shipmentChargeableWeight)

            try? container.encodeIfPresent(isInternational, forKey: .isInternational)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ShipmentItemMeta
         Used By: Order
     */

    class ShipmentItemMeta: Codable {
        public var ewaybillInfo: [String: Any]?

        public var assignDpFromSb: Bool?

        public var externalLink: [String: Any]?

        public var weight: Double?

        public var shipmentVolumetricWeight: Double?

        public var debugInfo: [String: Any]?

        public var pdfMedia: [[String: Any]]?

        public var storeInvoiceUpdatedDate: String?

        public var formatted: Formatted?

        public var tags: [[String: Any]]?

        public var shippingZone: String?

        public var dpOptions: [String: Any]?

        public var packagingName: String?

        public var timestamp: ShipmentTimeStamp?

        public var sla: Double?

        public var shipmentTags: [ShipmentTags]?

        public var activityComment: String?

        public var shipmentWeight: Double?

        public var sameStoreAvailable: Bool?

        public var dpSortKey: String?

        public var fulfilmentPriorityText: String?

        public var bagWeight: [String: Any]?

        public var lockData: LockData?

        public var orderType: String?

        public var existingDpList: [String]?

        public var parentDpId: String?

        public var autoTriggerDpAssignmentAcf: Bool

        public var shipmentChargeableWeight: Double?

        public var isInternational: Bool?

        public enum CodingKeys: String, CodingKey {
            case ewaybillInfo = "ewaybill_info"

            case assignDpFromSb = "assign_dp_from_sb"

            case externalLink = "external"

            case weight

            case shipmentVolumetricWeight = "shipment_volumetric_weight"

            case debugInfo = "debug_info"

            case pdfMedia = "pdf_media"

            case storeInvoiceUpdatedDate = "store_invoice_updated_date"

            case formatted

            case tags

            case shippingZone = "shipping_zone"

            case dpOptions = "dp_options"

            case packagingName = "packaging_name"

            case timestamp

            case sla

            case shipmentTags = "shipment_tags"

            case activityComment = "activity_comment"

            case shipmentWeight = "shipment_weight"

            case sameStoreAvailable = "same_store_available"

            case dpSortKey = "dp_sort_key"

            case fulfilmentPriorityText = "fulfilment_priority_text"

            case bagWeight = "bag_weight"

            case lockData = "lock_data"

            case orderType = "order_type"

            case existingDpList = "existing_dp_list"

            case parentDpId = "parent_dp_id"

            case autoTriggerDpAssignmentAcf = "auto_trigger_dp_assignment_acf"

            case shipmentChargeableWeight = "shipment_chargeable_weight"

            case isInternational = "is_international"
        }

        public init(activityComment: String? = nil, assignDpFromSb: Bool? = nil, autoTriggerDpAssignmentAcf: Bool, bagWeight: [String: Any]? = nil, debugInfo: [String: Any]? = nil, dpOptions: [String: Any]? = nil, dpSortKey: String? = nil, ewaybillInfo: [String: Any]? = nil, existingDpList: [String]? = nil, externalLink: [String: Any]? = nil, formatted: Formatted? = nil, fulfilmentPriorityText: String? = nil, isInternational: Bool? = nil, lockData: LockData? = nil, orderType: String? = nil, packagingName: String? = nil, parentDpId: String? = nil, pdfMedia: [[String: Any]]? = nil, sameStoreAvailable: Bool? = nil, shipmentChargeableWeight: Double? = nil, shipmentTags: [ShipmentTags]? = nil, shipmentVolumetricWeight: Double? = nil, shipmentWeight: Double? = nil, shippingZone: String? = nil, sla: Double? = nil, storeInvoiceUpdatedDate: String? = nil, tags: [[String: Any]]? = nil, timestamp: ShipmentTimeStamp? = nil, weight: Double? = nil) {
            self.ewaybillInfo = ewaybillInfo

            self.assignDpFromSb = assignDpFromSb

            self.externalLink = externalLink

            self.weight = weight

            self.shipmentVolumetricWeight = shipmentVolumetricWeight

            self.debugInfo = debugInfo

            self.pdfMedia = pdfMedia

            self.storeInvoiceUpdatedDate = storeInvoiceUpdatedDate

            self.formatted = formatted

            self.tags = tags

            self.shippingZone = shippingZone

            self.dpOptions = dpOptions

            self.packagingName = packagingName

            self.timestamp = timestamp

            self.sla = sla

            self.shipmentTags = shipmentTags

            self.activityComment = activityComment

            self.shipmentWeight = shipmentWeight

            self.sameStoreAvailable = sameStoreAvailable

            self.dpSortKey = dpSortKey

            self.fulfilmentPriorityText = fulfilmentPriorityText

            self.bagWeight = bagWeight

            self.lockData = lockData

            self.orderType = orderType

            self.existingDpList = existingDpList

            self.parentDpId = parentDpId

            self.autoTriggerDpAssignmentAcf = autoTriggerDpAssignmentAcf

            self.shipmentChargeableWeight = shipmentChargeableWeight

            self.isInternational = isInternational
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                ewaybillInfo = try container.decode([String: Any].self, forKey: .ewaybillInfo)

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
                externalLink = try container.decode([String: Any].self, forKey: .externalLink)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                weight = try container.decode(Double.self, forKey: .weight)

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
                debugInfo = try container.decode([String: Any].self, forKey: .debugInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pdfMedia = try container.decode([[String: Any]].self, forKey: .pdfMedia)

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
                formatted = try container.decode(Formatted.self, forKey: .formatted)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tags = try container.decode([[String: Any]].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shippingZone = try container.decode(String.self, forKey: .shippingZone)

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
                packagingName = try container.decode(String.self, forKey: .packagingName)

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
                sla = try container.decode(Double.self, forKey: .sla)

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
                activityComment = try container.decode(String.self, forKey: .activityComment)

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
                sameStoreAvailable = try container.decode(Bool.self, forKey: .sameStoreAvailable)

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
                fulfilmentPriorityText = try container.decode(String.self, forKey: .fulfilmentPriorityText)

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
                lockData = try container.decode(LockData.self, forKey: .lockData)

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
                existingDpList = try container.decode([String].self, forKey: .existingDpList)

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

            autoTriggerDpAssignmentAcf = try container.decode(Bool.self, forKey: .autoTriggerDpAssignmentAcf)

            do {
                shipmentChargeableWeight = try container.decode(Double.self, forKey: .shipmentChargeableWeight)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isInternational = try container.decode(Bool.self, forKey: .isInternational)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(ewaybillInfo, forKey: .ewaybillInfo)

            try? container.encodeIfPresent(assignDpFromSb, forKey: .assignDpFromSb)

            try? container.encodeIfPresent(externalLink, forKey: .externalLink)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(shipmentVolumetricWeight, forKey: .shipmentVolumetricWeight)

            try? container.encodeIfPresent(debugInfo, forKey: .debugInfo)

            try? container.encodeIfPresent(pdfMedia, forKey: .pdfMedia)

            try? container.encodeIfPresent(storeInvoiceUpdatedDate, forKey: .storeInvoiceUpdatedDate)

            try? container.encodeIfPresent(formatted, forKey: .formatted)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(shippingZone, forKey: .shippingZone)

            try? container.encodeIfPresent(dpOptions, forKey: .dpOptions)

            try? container.encodeIfPresent(packagingName, forKey: .packagingName)

            try? container.encodeIfPresent(timestamp, forKey: .timestamp)

            try? container.encodeIfPresent(sla, forKey: .sla)

            try? container.encodeIfPresent(shipmentTags, forKey: .shipmentTags)

            try? container.encodeIfPresent(activityComment, forKey: .activityComment)

            try? container.encodeIfPresent(shipmentWeight, forKey: .shipmentWeight)

            try? container.encodeIfPresent(sameStoreAvailable, forKey: .sameStoreAvailable)

            try? container.encode(dpSortKey, forKey: .dpSortKey)

            try? container.encode(fulfilmentPriorityText, forKey: .fulfilmentPriorityText)

            try? container.encodeIfPresent(bagWeight, forKey: .bagWeight)

            try? container.encodeIfPresent(lockData, forKey: .lockData)

            try? container.encode(orderType, forKey: .orderType)

            try? container.encodeIfPresent(existingDpList, forKey: .existingDpList)

            try? container.encodeIfPresent(parentDpId, forKey: .parentDpId)

            try? container.encodeIfPresent(autoTriggerDpAssignmentAcf, forKey: .autoTriggerDpAssignmentAcf)

            try? container.encodeIfPresent(shipmentChargeableWeight, forKey: .shipmentChargeableWeight)

            try? container.encodeIfPresent(isInternational, forKey: .isInternational)
        }
    }
}
