

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ShipmentItemMeta
         Used By: Order
     */

    class ShipmentItemMeta: Codable {
        public var lockData: LockData?

        public var sla: Double?

        public var orderType: String?

        public var activityComment: String?

        public var ewaybillInfo: [String: Any]?

        public var tags: [[String: Any]]?

        public var bagWeight: [String: Any]?

        public var shipmentVolumetricWeight: Double?

        public var shipmentTags: [ShipmentTags]?

        public var storeInvoiceUpdatedDate: String?

        public var formatted: Formatted?

        public var weight: Double?

        public var assignDpFromSb: Bool?

        public var pdfMedia: [[String: Any]]?

        public var existingDpList: [String]?

        public var shipmentWeight: Double?

        public var autoTriggerDpAssignmentAcf: Bool?

        public var dpSortKey: String?

        public var parentDpId: String?

        public var debugInfo: [String: Any]?

        public var fulfilmentPriorityText: String?

        public var externalLink: [String: Any]?

        public var dpOptions: [String: Any]?

        public var shipmentChargeableWeight: Double?

        public var sameStoreAvailable: Bool?

        public var isInternational: Bool?

        public var shippingZone: String?

        public var packagingName: String?

        public var timestamp: ShipmentTimeStamp?

        public enum CodingKeys: String, CodingKey {
            case lockData = "lock_data"

            case sla

            case orderType = "order_type"

            case activityComment = "activity_comment"

            case ewaybillInfo = "ewaybill_info"

            case tags

            case bagWeight = "bag_weight"

            case shipmentVolumetricWeight = "shipment_volumetric_weight"

            case shipmentTags = "shipment_tags"

            case storeInvoiceUpdatedDate = "store_invoice_updated_date"

            case formatted

            case weight

            case assignDpFromSb = "assign_dp_from_sb"

            case pdfMedia = "pdf_media"

            case existingDpList = "existing_dp_list"

            case shipmentWeight = "shipment_weight"

            case autoTriggerDpAssignmentAcf = "auto_trigger_dp_assignment_acf"

            case dpSortKey = "dp_sort_key"

            case parentDpId = "parent_dp_id"

            case debugInfo = "debug_info"

            case fulfilmentPriorityText = "fulfilment_priority_text"

            case externalLink = "external"

            case dpOptions = "dp_options"

            case shipmentChargeableWeight = "shipment_chargeable_weight"

            case sameStoreAvailable = "same_store_available"

            case isInternational = "is_international"

            case shippingZone = "shipping_zone"

            case packagingName = "packaging_name"

            case timestamp
        }

        public init(activityComment: String? = nil, assignDpFromSb: Bool? = nil, autoTriggerDpAssignmentAcf: Bool? = nil, bagWeight: [String: Any]? = nil, debugInfo: [String: Any]? = nil, dpOptions: [String: Any]? = nil, dpSortKey: String? = nil, ewaybillInfo: [String: Any]? = nil, existingDpList: [String]? = nil, externalLink: [String: Any]? = nil, formatted: Formatted? = nil, fulfilmentPriorityText: String? = nil, isInternational: Bool? = nil, lockData: LockData? = nil, orderType: String? = nil, packagingName: String? = nil, parentDpId: String? = nil, pdfMedia: [[String: Any]]? = nil, sameStoreAvailable: Bool? = nil, shipmentChargeableWeight: Double? = nil, shipmentTags: [ShipmentTags]? = nil, shipmentVolumetricWeight: Double? = nil, shipmentWeight: Double? = nil, shippingZone: String? = nil, sla: Double? = nil, storeInvoiceUpdatedDate: String? = nil, tags: [[String: Any]]? = nil, timestamp: ShipmentTimeStamp? = nil, weight: Double? = nil) {
            self.lockData = lockData

            self.sla = sla

            self.orderType = orderType

            self.activityComment = activityComment

            self.ewaybillInfo = ewaybillInfo

            self.tags = tags

            self.bagWeight = bagWeight

            self.shipmentVolumetricWeight = shipmentVolumetricWeight

            self.shipmentTags = shipmentTags

            self.storeInvoiceUpdatedDate = storeInvoiceUpdatedDate

            self.formatted = formatted

            self.weight = weight

            self.assignDpFromSb = assignDpFromSb

            self.pdfMedia = pdfMedia

            self.existingDpList = existingDpList

            self.shipmentWeight = shipmentWeight

            self.autoTriggerDpAssignmentAcf = autoTriggerDpAssignmentAcf

            self.dpSortKey = dpSortKey

            self.parentDpId = parentDpId

            self.debugInfo = debugInfo

            self.fulfilmentPriorityText = fulfilmentPriorityText

            self.externalLink = externalLink

            self.dpOptions = dpOptions

            self.shipmentChargeableWeight = shipmentChargeableWeight

            self.sameStoreAvailable = sameStoreAvailable

            self.isInternational = isInternational

            self.shippingZone = shippingZone

            self.packagingName = packagingName

            self.timestamp = timestamp
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                lockData = try container.decode(LockData.self, forKey: .lockData)

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
                orderType = try container.decode(String.self, forKey: .orderType)

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
                ewaybillInfo = try container.decode([String: Any].self, forKey: .ewaybillInfo)

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
                bagWeight = try container.decode([String: Any].self, forKey: .bagWeight)

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
                shipmentTags = try container.decode([ShipmentTags].self, forKey: .shipmentTags)

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
                weight = try container.decode(Double.self, forKey: .weight)

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
                pdfMedia = try container.decode([[String: Any]].self, forKey: .pdfMedia)

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
                shipmentWeight = try container.decode(Double.self, forKey: .shipmentWeight)

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

            do {
                dpSortKey = try container.decode(String.self, forKey: .dpSortKey)

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
                debugInfo = try container.decode([String: Any].self, forKey: .debugInfo)

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
                externalLink = try container.decode([String: Any].self, forKey: .externalLink)

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
                shipmentChargeableWeight = try container.decode(Double.self, forKey: .shipmentChargeableWeight)

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
                isInternational = try container.decode(Bool.self, forKey: .isInternational)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(lockData, forKey: .lockData)

            try? container.encodeIfPresent(sla, forKey: .sla)

            try? container.encode(orderType, forKey: .orderType)

            try? container.encodeIfPresent(activityComment, forKey: .activityComment)

            try? container.encodeIfPresent(ewaybillInfo, forKey: .ewaybillInfo)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(bagWeight, forKey: .bagWeight)

            try? container.encodeIfPresent(shipmentVolumetricWeight, forKey: .shipmentVolumetricWeight)

            try? container.encodeIfPresent(shipmentTags, forKey: .shipmentTags)

            try? container.encodeIfPresent(storeInvoiceUpdatedDate, forKey: .storeInvoiceUpdatedDate)

            try? container.encodeIfPresent(formatted, forKey: .formatted)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(assignDpFromSb, forKey: .assignDpFromSb)

            try? container.encodeIfPresent(pdfMedia, forKey: .pdfMedia)

            try? container.encodeIfPresent(existingDpList, forKey: .existingDpList)

            try? container.encodeIfPresent(shipmentWeight, forKey: .shipmentWeight)

            try? container.encodeIfPresent(autoTriggerDpAssignmentAcf, forKey: .autoTriggerDpAssignmentAcf)

            try? container.encode(dpSortKey, forKey: .dpSortKey)

            try? container.encodeIfPresent(parentDpId, forKey: .parentDpId)

            try? container.encodeIfPresent(debugInfo, forKey: .debugInfo)

            try? container.encode(fulfilmentPriorityText, forKey: .fulfilmentPriorityText)

            try? container.encodeIfPresent(externalLink, forKey: .externalLink)

            try? container.encodeIfPresent(dpOptions, forKey: .dpOptions)

            try? container.encodeIfPresent(shipmentChargeableWeight, forKey: .shipmentChargeableWeight)

            try? container.encodeIfPresent(sameStoreAvailable, forKey: .sameStoreAvailable)

            try? container.encodeIfPresent(isInternational, forKey: .isInternational)

            try? container.encodeIfPresent(shippingZone, forKey: .shippingZone)

            try? container.encodeIfPresent(packagingName, forKey: .packagingName)

            try? container.encodeIfPresent(timestamp, forKey: .timestamp)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ShipmentItemMeta
         Used By: Order
     */

    class ShipmentItemMeta: Codable {
        public var lockData: LockData?

        public var sla: Double?

        public var orderType: String?

        public var activityComment: String?

        public var ewaybillInfo: [String: Any]?

        public var tags: [[String: Any]]?

        public var bagWeight: [String: Any]?

        public var shipmentVolumetricWeight: Double?

        public var shipmentTags: [ShipmentTags]?

        public var storeInvoiceUpdatedDate: String?

        public var formatted: Formatted?

        public var weight: Double?

        public var assignDpFromSb: Bool?

        public var pdfMedia: [[String: Any]]?

        public var existingDpList: [String]?

        public var shipmentWeight: Double?

        public var autoTriggerDpAssignmentAcf: Bool?

        public var dpSortKey: String?

        public var parentDpId: String?

        public var debugInfo: [String: Any]?

        public var fulfilmentPriorityText: String?

        public var externalLink: [String: Any]?

        public var dpOptions: [String: Any]?

        public var shipmentChargeableWeight: Double?

        public var sameStoreAvailable: Bool?

        public var isInternational: Bool?

        public var shippingZone: String?

        public var packagingName: String?

        public var timestamp: ShipmentTimeStamp?

        public enum CodingKeys: String, CodingKey {
            case lockData = "lock_data"

            case sla

            case orderType = "order_type"

            case activityComment = "activity_comment"

            case ewaybillInfo = "ewaybill_info"

            case tags

            case bagWeight = "bag_weight"

            case shipmentVolumetricWeight = "shipment_volumetric_weight"

            case shipmentTags = "shipment_tags"

            case storeInvoiceUpdatedDate = "store_invoice_updated_date"

            case formatted

            case weight

            case assignDpFromSb = "assign_dp_from_sb"

            case pdfMedia = "pdf_media"

            case existingDpList = "existing_dp_list"

            case shipmentWeight = "shipment_weight"

            case autoTriggerDpAssignmentAcf = "auto_trigger_dp_assignment_acf"

            case dpSortKey = "dp_sort_key"

            case parentDpId = "parent_dp_id"

            case debugInfo = "debug_info"

            case fulfilmentPriorityText = "fulfilment_priority_text"

            case externalLink = "external"

            case dpOptions = "dp_options"

            case shipmentChargeableWeight = "shipment_chargeable_weight"

            case sameStoreAvailable = "same_store_available"

            case isInternational = "is_international"

            case shippingZone = "shipping_zone"

            case packagingName = "packaging_name"

            case timestamp
        }

        public init(activityComment: String? = nil, assignDpFromSb: Bool? = nil, autoTriggerDpAssignmentAcf: Bool? = nil, bagWeight: [String: Any]? = nil, debugInfo: [String: Any]? = nil, dpOptions: [String: Any]? = nil, dpSortKey: String? = nil, ewaybillInfo: [String: Any]? = nil, existingDpList: [String]? = nil, externalLink: [String: Any]? = nil, formatted: Formatted? = nil, fulfilmentPriorityText: String? = nil, isInternational: Bool? = nil, lockData: LockData? = nil, orderType: String? = nil, packagingName: String? = nil, parentDpId: String? = nil, pdfMedia: [[String: Any]]? = nil, sameStoreAvailable: Bool? = nil, shipmentChargeableWeight: Double? = nil, shipmentTags: [ShipmentTags]? = nil, shipmentVolumetricWeight: Double? = nil, shipmentWeight: Double? = nil, shippingZone: String? = nil, sla: Double? = nil, storeInvoiceUpdatedDate: String? = nil, tags: [[String: Any]]? = nil, timestamp: ShipmentTimeStamp? = nil, weight: Double? = nil) {
            self.lockData = lockData

            self.sla = sla

            self.orderType = orderType

            self.activityComment = activityComment

            self.ewaybillInfo = ewaybillInfo

            self.tags = tags

            self.bagWeight = bagWeight

            self.shipmentVolumetricWeight = shipmentVolumetricWeight

            self.shipmentTags = shipmentTags

            self.storeInvoiceUpdatedDate = storeInvoiceUpdatedDate

            self.formatted = formatted

            self.weight = weight

            self.assignDpFromSb = assignDpFromSb

            self.pdfMedia = pdfMedia

            self.existingDpList = existingDpList

            self.shipmentWeight = shipmentWeight

            self.autoTriggerDpAssignmentAcf = autoTriggerDpAssignmentAcf

            self.dpSortKey = dpSortKey

            self.parentDpId = parentDpId

            self.debugInfo = debugInfo

            self.fulfilmentPriorityText = fulfilmentPriorityText

            self.externalLink = externalLink

            self.dpOptions = dpOptions

            self.shipmentChargeableWeight = shipmentChargeableWeight

            self.sameStoreAvailable = sameStoreAvailable

            self.isInternational = isInternational

            self.shippingZone = shippingZone

            self.packagingName = packagingName

            self.timestamp = timestamp
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                lockData = try container.decode(LockData.self, forKey: .lockData)

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
                orderType = try container.decode(String.self, forKey: .orderType)

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
                ewaybillInfo = try container.decode([String: Any].self, forKey: .ewaybillInfo)

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
                bagWeight = try container.decode([String: Any].self, forKey: .bagWeight)

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
                shipmentTags = try container.decode([ShipmentTags].self, forKey: .shipmentTags)

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
                weight = try container.decode(Double.self, forKey: .weight)

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
                pdfMedia = try container.decode([[String: Any]].self, forKey: .pdfMedia)

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
                shipmentWeight = try container.decode(Double.self, forKey: .shipmentWeight)

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

            do {
                dpSortKey = try container.decode(String.self, forKey: .dpSortKey)

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
                debugInfo = try container.decode([String: Any].self, forKey: .debugInfo)

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
                externalLink = try container.decode([String: Any].self, forKey: .externalLink)

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
                shipmentChargeableWeight = try container.decode(Double.self, forKey: .shipmentChargeableWeight)

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
                isInternational = try container.decode(Bool.self, forKey: .isInternational)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(lockData, forKey: .lockData)

            try? container.encodeIfPresent(sla, forKey: .sla)

            try? container.encode(orderType, forKey: .orderType)

            try? container.encodeIfPresent(activityComment, forKey: .activityComment)

            try? container.encodeIfPresent(ewaybillInfo, forKey: .ewaybillInfo)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(bagWeight, forKey: .bagWeight)

            try? container.encodeIfPresent(shipmentVolumetricWeight, forKey: .shipmentVolumetricWeight)

            try? container.encodeIfPresent(shipmentTags, forKey: .shipmentTags)

            try? container.encodeIfPresent(storeInvoiceUpdatedDate, forKey: .storeInvoiceUpdatedDate)

            try? container.encodeIfPresent(formatted, forKey: .formatted)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(assignDpFromSb, forKey: .assignDpFromSb)

            try? container.encodeIfPresent(pdfMedia, forKey: .pdfMedia)

            try? container.encodeIfPresent(existingDpList, forKey: .existingDpList)

            try? container.encodeIfPresent(shipmentWeight, forKey: .shipmentWeight)

            try? container.encodeIfPresent(autoTriggerDpAssignmentAcf, forKey: .autoTriggerDpAssignmentAcf)

            try? container.encode(dpSortKey, forKey: .dpSortKey)

            try? container.encodeIfPresent(parentDpId, forKey: .parentDpId)

            try? container.encodeIfPresent(debugInfo, forKey: .debugInfo)

            try? container.encode(fulfilmentPriorityText, forKey: .fulfilmentPriorityText)

            try? container.encodeIfPresent(externalLink, forKey: .externalLink)

            try? container.encodeIfPresent(dpOptions, forKey: .dpOptions)

            try? container.encodeIfPresent(shipmentChargeableWeight, forKey: .shipmentChargeableWeight)

            try? container.encodeIfPresent(sameStoreAvailable, forKey: .sameStoreAvailable)

            try? container.encodeIfPresent(isInternational, forKey: .isInternational)

            try? container.encodeIfPresent(shippingZone, forKey: .shippingZone)

            try? container.encodeIfPresent(packagingName, forKey: .packagingName)

            try? container.encodeIfPresent(timestamp, forKey: .timestamp)
        }
    }
}
