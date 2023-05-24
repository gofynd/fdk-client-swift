

import Foundation

public extension PlatformClient.Order {
    /*
         Model: BagStatusHistory
         Used By: Order
     */

    class BagStatusHistory: Codable {
        public var bagId: Int?

        public var kafkaSync: Bool?

        public var reasons: [[String: Any]]?

        public var status: String

        public var displayName: String?

        public var storeId: Int?

        public var deliveryAwbNumber: String?

        public var stateId: Int?

        public var updatedAt: String?

        public var bagStateMapper: BagStateMapper?

        public var deliveryPartnerId: Int?

        public var appDisplayName: String?

        public var createdAt: String?

        public var stateType: String?

        public var forward: Bool?

        public var bshId: Int?

        public var shipmentId: String?

        public enum CodingKeys: String, CodingKey {
            case bagId = "bag_id"

            case kafkaSync = "kafka_sync"

            case reasons

            case status

            case displayName = "display_name"

            case storeId = "store_id"

            case deliveryAwbNumber = "delivery_awb_number"

            case stateId = "state_id"

            case updatedAt = "updated_at"

            case bagStateMapper = "bag_state_mapper"

            case deliveryPartnerId = "delivery_partner_id"

            case appDisplayName = "app_display_name"

            case createdAt = "created_at"

            case stateType = "state_type"

            case forward

            case bshId = "bsh_id"

            case shipmentId = "shipment_id"
        }

        public init(appDisplayName: String? = nil, bagId: Int? = nil, bagStateMapper: BagStateMapper? = nil, bshId: Int? = nil, createdAt: String? = nil, deliveryAwbNumber: String? = nil, deliveryPartnerId: Int? = nil, displayName: String? = nil, forward: Bool? = nil, kafkaSync: Bool? = nil, reasons: [[String: Any]]? = nil, shipmentId: String? = nil, stateId: Int? = nil, stateType: String? = nil, status: String, storeId: Int? = nil, updatedAt: String? = nil) {
            self.bagId = bagId

            self.kafkaSync = kafkaSync

            self.reasons = reasons

            self.status = status

            self.displayName = displayName

            self.storeId = storeId

            self.deliveryAwbNumber = deliveryAwbNumber

            self.stateId = stateId

            self.updatedAt = updatedAt

            self.bagStateMapper = bagStateMapper

            self.deliveryPartnerId = deliveryPartnerId

            self.appDisplayName = appDisplayName

            self.createdAt = createdAt

            self.stateType = stateType

            self.forward = forward

            self.bshId = bshId

            self.shipmentId = shipmentId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                bagId = try container.decode(Int.self, forKey: .bagId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                kafkaSync = try container.decode(Bool.self, forKey: .kafkaSync)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                reasons = try container.decode([[String: Any]].self, forKey: .reasons)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode(String.self, forKey: .status)

            do {
                displayName = try container.decode(String.self, forKey: .displayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeId = try container.decode(Int.self, forKey: .storeId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deliveryAwbNumber = try container.decode(String.self, forKey: .deliveryAwbNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                stateId = try container.decode(Int.self, forKey: .stateId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bagStateMapper = try container.decode(BagStateMapper.self, forKey: .bagStateMapper)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deliveryPartnerId = try container.decode(Int.self, forKey: .deliveryPartnerId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                appDisplayName = try container.decode(String.self, forKey: .appDisplayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdAt = try container.decode(String.self, forKey: .createdAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                stateType = try container.decode(String.self, forKey: .stateType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                forward = try container.decode(Bool.self, forKey: .forward)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bshId = try container.decode(Int.self, forKey: .bshId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shipmentId = try container.decode(String.self, forKey: .shipmentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(kafkaSync, forKey: .kafkaSync)

            try? container.encodeIfPresent(reasons, forKey: .reasons)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encode(deliveryAwbNumber, forKey: .deliveryAwbNumber)

            try? container.encodeIfPresent(stateId, forKey: .stateId)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(bagStateMapper, forKey: .bagStateMapper)

            try? container.encode(deliveryPartnerId, forKey: .deliveryPartnerId)

            try? container.encodeIfPresent(appDisplayName, forKey: .appDisplayName)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(stateType, forKey: .stateType)

            try? container.encode(forward, forKey: .forward)

            try? container.encodeIfPresent(bshId, forKey: .bshId)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: BagStatusHistory
         Used By: Order
     */

    class BagStatusHistory: Codable {
        public var bagId: Int?

        public var kafkaSync: Bool?

        public var reasons: [[String: Any]]?

        public var status: String

        public var displayName: String?

        public var storeId: Int?

        public var deliveryAwbNumber: String?

        public var stateId: Int?

        public var updatedAt: String?

        public var bagStateMapper: BagStateMapper?

        public var deliveryPartnerId: Int?

        public var appDisplayName: String?

        public var createdAt: String?

        public var stateType: String?

        public var forward: Bool?

        public var bshId: Int?

        public var shipmentId: String?

        public enum CodingKeys: String, CodingKey {
            case bagId = "bag_id"

            case kafkaSync = "kafka_sync"

            case reasons

            case status

            case displayName = "display_name"

            case storeId = "store_id"

            case deliveryAwbNumber = "delivery_awb_number"

            case stateId = "state_id"

            case updatedAt = "updated_at"

            case bagStateMapper = "bag_state_mapper"

            case deliveryPartnerId = "delivery_partner_id"

            case appDisplayName = "app_display_name"

            case createdAt = "created_at"

            case stateType = "state_type"

            case forward

            case bshId = "bsh_id"

            case shipmentId = "shipment_id"
        }

        public init(appDisplayName: String? = nil, bagId: Int? = nil, bagStateMapper: BagStateMapper? = nil, bshId: Int? = nil, createdAt: String? = nil, deliveryAwbNumber: String? = nil, deliveryPartnerId: Int? = nil, displayName: String? = nil, forward: Bool? = nil, kafkaSync: Bool? = nil, reasons: [[String: Any]]? = nil, shipmentId: String? = nil, stateId: Int? = nil, stateType: String? = nil, status: String, storeId: Int? = nil, updatedAt: String? = nil) {
            self.bagId = bagId

            self.kafkaSync = kafkaSync

            self.reasons = reasons

            self.status = status

            self.displayName = displayName

            self.storeId = storeId

            self.deliveryAwbNumber = deliveryAwbNumber

            self.stateId = stateId

            self.updatedAt = updatedAt

            self.bagStateMapper = bagStateMapper

            self.deliveryPartnerId = deliveryPartnerId

            self.appDisplayName = appDisplayName

            self.createdAt = createdAt

            self.stateType = stateType

            self.forward = forward

            self.bshId = bshId

            self.shipmentId = shipmentId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                bagId = try container.decode(Int.self, forKey: .bagId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                kafkaSync = try container.decode(Bool.self, forKey: .kafkaSync)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                reasons = try container.decode([[String: Any]].self, forKey: .reasons)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode(String.self, forKey: .status)

            do {
                displayName = try container.decode(String.self, forKey: .displayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeId = try container.decode(Int.self, forKey: .storeId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deliveryAwbNumber = try container.decode(String.self, forKey: .deliveryAwbNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                stateId = try container.decode(Int.self, forKey: .stateId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bagStateMapper = try container.decode(BagStateMapper.self, forKey: .bagStateMapper)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deliveryPartnerId = try container.decode(Int.self, forKey: .deliveryPartnerId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                appDisplayName = try container.decode(String.self, forKey: .appDisplayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdAt = try container.decode(String.self, forKey: .createdAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                stateType = try container.decode(String.self, forKey: .stateType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                forward = try container.decode(Bool.self, forKey: .forward)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bshId = try container.decode(Int.self, forKey: .bshId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shipmentId = try container.decode(String.self, forKey: .shipmentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(kafkaSync, forKey: .kafkaSync)

            try? container.encodeIfPresent(reasons, forKey: .reasons)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encode(deliveryAwbNumber, forKey: .deliveryAwbNumber)

            try? container.encodeIfPresent(stateId, forKey: .stateId)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(bagStateMapper, forKey: .bagStateMapper)

            try? container.encode(deliveryPartnerId, forKey: .deliveryPartnerId)

            try? container.encodeIfPresent(appDisplayName, forKey: .appDisplayName)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(stateType, forKey: .stateType)

            try? container.encode(forward, forKey: .forward)

            try? container.encodeIfPresent(bshId, forKey: .bshId)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
        }
    }
}
