

import Foundation
public extension PlatformClient {
    /*
         Model: BagStatusHistory
         Used By: Orders
     */

    class BagStatusHistory: Codable {
        public var bagStateMapper: BagStateMapper

        public var deliveryPartnerId: Int?

        public var bagId: Int

        public var deliveryAwbNumber: String?

        public var kafkaSync: Bool?

        public var reasons: [[String: Any]]?

        public var storeId: Int

        public var shipmentId: String

        public var appDisplayName: Bool?

        public var stateId: Int

        public var createdAt: String

        public var stateType: String?

        public var forward: Bool?

        public var displayName: Bool?

        public var bshId: Int

        public var status: String

        public var updatedAt: String?

        public enum CodingKeys: String, CodingKey {
            case bagStateMapper = "bag_state_mapper"

            case deliveryPartnerId = "delivery_partner_id"

            case bagId = "bag_id"

            case deliveryAwbNumber = "delivery_awb_number"

            case kafkaSync = "kafka_sync"

            case reasons

            case storeId = "store_id"

            case shipmentId = "shipment_id"

            case appDisplayName = "app_display_name"

            case stateId = "state_id"

            case createdAt = "created_at"

            case stateType = "state_type"

            case forward

            case displayName = "display_name"

            case bshId = "bsh_id"

            case status

            case updatedAt = "updated_at"
        }

        public init(appDisplayName: Bool? = nil, bagId: Int, bagStateMapper: BagStateMapper, bshId: Int, createdAt: String, deliveryAwbNumber: String? = nil, deliveryPartnerId: Int? = nil, displayName: Bool? = nil, forward: Bool? = nil, kafkaSync: Bool? = nil, reasons: [[String: Any]]? = nil, shipmentId: String, stateId: Int, stateType: String? = nil, status: String, storeId: Int, updatedAt: String? = nil) {
            self.bagStateMapper = bagStateMapper

            self.deliveryPartnerId = deliveryPartnerId

            self.bagId = bagId

            self.deliveryAwbNumber = deliveryAwbNumber

            self.kafkaSync = kafkaSync

            self.reasons = reasons

            self.storeId = storeId

            self.shipmentId = shipmentId

            self.appDisplayName = appDisplayName

            self.stateId = stateId

            self.createdAt = createdAt

            self.stateType = stateType

            self.forward = forward

            self.displayName = displayName

            self.bshId = bshId

            self.status = status

            self.updatedAt = updatedAt
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            bagStateMapper = try container.decode(BagStateMapper.self, forKey: .bagStateMapper)

            do {
                deliveryPartnerId = try container.decode(Int.self, forKey: .deliveryPartnerId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bagId = try container.decode(Int.self, forKey: .bagId)

            do {
                deliveryAwbNumber = try container.decode(String.self, forKey: .deliveryAwbNumber)

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

            storeId = try container.decode(Int.self, forKey: .storeId)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            do {
                appDisplayName = try container.decode(Bool.self, forKey: .appDisplayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            stateId = try container.decode(Int.self, forKey: .stateId)

            createdAt = try container.decode(String.self, forKey: .createdAt)

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
                displayName = try container.decode(Bool.self, forKey: .displayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bshId = try container.decode(Int.self, forKey: .bshId)

            status = try container.decode(String.self, forKey: .status)

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(bagStateMapper, forKey: .bagStateMapper)

            try? container.encode(deliveryPartnerId, forKey: .deliveryPartnerId)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encode(deliveryAwbNumber, forKey: .deliveryAwbNumber)

            try? container.encodeIfPresent(kafkaSync, forKey: .kafkaSync)

            try? container.encodeIfPresent(reasons, forKey: .reasons)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(appDisplayName, forKey: .appDisplayName)

            try? container.encodeIfPresent(stateId, forKey: .stateId)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(stateType, forKey: .stateType)

            try? container.encodeIfPresent(forward, forKey: .forward)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(bshId, forKey: .bshId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
        }
    }
}
