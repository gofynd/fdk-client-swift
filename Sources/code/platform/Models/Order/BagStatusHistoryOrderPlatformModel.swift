

import Foundation

public extension PlatformClient.Order {
    /*
         Model: BagStatusHistory
         Used By: Order
     */

    class BagStatusHistory: Codable {
        public var bshId: Int

        public var storeId: Int

        public var bagStateMapper: BagStateMapper

        public var shipmentId: String

        public var status: String

        public var updatedAt: String?

        public var stateType: String?

        public var reasons: [[String: Any]]?

        public var forward: Bool?

        public var kafkaSync: Bool?

        public var stateId: Int

        public var deliveryPartnerId: Int?

        public var bagId: Int

        public var createdAt: String

        public var appDisplayName: Bool?

        public var deliveryAwbNumber: String?

        public var displayName: Bool?

        public enum CodingKeys: String, CodingKey {
            case bshId = "bsh_id"

            case storeId = "store_id"

            case bagStateMapper = "bag_state_mapper"

            case shipmentId = "shipment_id"

            case status

            case updatedAt = "updated_at"

            case stateType = "state_type"

            case reasons

            case forward

            case kafkaSync = "kafka_sync"

            case stateId = "state_id"

            case deliveryPartnerId = "delivery_partner_id"

            case bagId = "bag_id"

            case createdAt = "created_at"

            case appDisplayName = "app_display_name"

            case deliveryAwbNumber = "delivery_awb_number"

            case displayName = "display_name"
        }

        public init(appDisplayName: Bool? = nil, bagId: Int, bagStateMapper: BagStateMapper, bshId: Int, createdAt: String, deliveryAwbNumber: String? = nil, deliveryPartnerId: Int? = nil, displayName: Bool? = nil, forward: Bool? = nil, kafkaSync: Bool? = nil, reasons: [[String: Any]]? = nil, shipmentId: String, stateId: Int, stateType: String? = nil, status: String, storeId: Int, updatedAt: String? = nil) {
            self.bshId = bshId

            self.storeId = storeId

            self.bagStateMapper = bagStateMapper

            self.shipmentId = shipmentId

            self.status = status

            self.updatedAt = updatedAt

            self.stateType = stateType

            self.reasons = reasons

            self.forward = forward

            self.kafkaSync = kafkaSync

            self.stateId = stateId

            self.deliveryPartnerId = deliveryPartnerId

            self.bagId = bagId

            self.createdAt = createdAt

            self.appDisplayName = appDisplayName

            self.deliveryAwbNumber = deliveryAwbNumber

            self.displayName = displayName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            bshId = try container.decode(Int.self, forKey: .bshId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            bagStateMapper = try container.decode(BagStateMapper.self, forKey: .bagStateMapper)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            status = try container.decode(String.self, forKey: .status)

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

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
                reasons = try container.decode([[String: Any]].self, forKey: .reasons)

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
                kafkaSync = try container.decode(Bool.self, forKey: .kafkaSync)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            stateId = try container.decode(Int.self, forKey: .stateId)

            do {
                deliveryPartnerId = try container.decode(Int.self, forKey: .deliveryPartnerId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bagId = try container.decode(Int.self, forKey: .bagId)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                appDisplayName = try container.decode(Bool.self, forKey: .appDisplayName)

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
                displayName = try container.decode(Bool.self, forKey: .displayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(bshId, forKey: .bshId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(bagStateMapper, forKey: .bagStateMapper)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(stateType, forKey: .stateType)

            try? container.encodeIfPresent(reasons, forKey: .reasons)

            try? container.encodeIfPresent(forward, forKey: .forward)

            try? container.encodeIfPresent(kafkaSync, forKey: .kafkaSync)

            try? container.encodeIfPresent(stateId, forKey: .stateId)

            try? container.encode(deliveryPartnerId, forKey: .deliveryPartnerId)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(appDisplayName, forKey: .appDisplayName)

            try? container.encode(deliveryAwbNumber, forKey: .deliveryAwbNumber)

            try? container.encodeIfPresent(displayName, forKey: .displayName)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: BagStatusHistory
         Used By: Order
     */

    class BagStatusHistory: Codable {
        public var bshId: Int

        public var storeId: Int

        public var bagStateMapper: BagStateMapper

        public var shipmentId: String

        public var status: String

        public var updatedAt: String?

        public var stateType: String?

        public var reasons: [[String: Any]]?

        public var forward: Bool?

        public var kafkaSync: Bool?

        public var stateId: Int

        public var deliveryPartnerId: Int?

        public var bagId: Int

        public var createdAt: String

        public var appDisplayName: Bool?

        public var deliveryAwbNumber: String?

        public var displayName: Bool?

        public enum CodingKeys: String, CodingKey {
            case bshId = "bsh_id"

            case storeId = "store_id"

            case bagStateMapper = "bag_state_mapper"

            case shipmentId = "shipment_id"

            case status

            case updatedAt = "updated_at"

            case stateType = "state_type"

            case reasons

            case forward

            case kafkaSync = "kafka_sync"

            case stateId = "state_id"

            case deliveryPartnerId = "delivery_partner_id"

            case bagId = "bag_id"

            case createdAt = "created_at"

            case appDisplayName = "app_display_name"

            case deliveryAwbNumber = "delivery_awb_number"

            case displayName = "display_name"
        }

        public init(appDisplayName: Bool? = nil, bagId: Int, bagStateMapper: BagStateMapper, bshId: Int, createdAt: String, deliveryAwbNumber: String? = nil, deliveryPartnerId: Int? = nil, displayName: Bool? = nil, forward: Bool? = nil, kafkaSync: Bool? = nil, reasons: [[String: Any]]? = nil, shipmentId: String, stateId: Int, stateType: String? = nil, status: String, storeId: Int, updatedAt: String? = nil) {
            self.bshId = bshId

            self.storeId = storeId

            self.bagStateMapper = bagStateMapper

            self.shipmentId = shipmentId

            self.status = status

            self.updatedAt = updatedAt

            self.stateType = stateType

            self.reasons = reasons

            self.forward = forward

            self.kafkaSync = kafkaSync

            self.stateId = stateId

            self.deliveryPartnerId = deliveryPartnerId

            self.bagId = bagId

            self.createdAt = createdAt

            self.appDisplayName = appDisplayName

            self.deliveryAwbNumber = deliveryAwbNumber

            self.displayName = displayName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            bshId = try container.decode(Int.self, forKey: .bshId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            bagStateMapper = try container.decode(BagStateMapper.self, forKey: .bagStateMapper)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            status = try container.decode(String.self, forKey: .status)

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

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
                reasons = try container.decode([[String: Any]].self, forKey: .reasons)

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
                kafkaSync = try container.decode(Bool.self, forKey: .kafkaSync)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            stateId = try container.decode(Int.self, forKey: .stateId)

            do {
                deliveryPartnerId = try container.decode(Int.self, forKey: .deliveryPartnerId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bagId = try container.decode(Int.self, forKey: .bagId)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                appDisplayName = try container.decode(Bool.self, forKey: .appDisplayName)

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
                displayName = try container.decode(Bool.self, forKey: .displayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(bshId, forKey: .bshId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(bagStateMapper, forKey: .bagStateMapper)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(stateType, forKey: .stateType)

            try? container.encodeIfPresent(reasons, forKey: .reasons)

            try? container.encodeIfPresent(forward, forKey: .forward)

            try? container.encodeIfPresent(kafkaSync, forKey: .kafkaSync)

            try? container.encodeIfPresent(stateId, forKey: .stateId)

            try? container.encode(deliveryPartnerId, forKey: .deliveryPartnerId)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(appDisplayName, forKey: .appDisplayName)

            try? container.encode(deliveryAwbNumber, forKey: .deliveryAwbNumber)

            try? container.encodeIfPresent(displayName, forKey: .displayName)
        }
    }
}
