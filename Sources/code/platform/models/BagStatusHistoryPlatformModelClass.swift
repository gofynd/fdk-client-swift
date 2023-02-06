

import Foundation
public extension PlatformClient {
    /*
         Model: BagStatusHistory
         Used By: Orders
     */

    class BagStatusHistory: Codable {
        public var stateId: Int

        public var appDisplayName: Bool?

        public var bshId: Int

        public var stateType: String?

        public var createdAt: String

        public var storeId: Int

        public var deliveryAwbNumber: String?

        public var kafkaSync: Bool?

        public var reasons: [[String: Any]]?

        public var forward: Bool?

        public var updatedAt: String?

        public var bagStateMapper: BagStateMapper

        public var bagId: Int

        public var shipmentId: String

        public var status: String

        public var deliveryPartnerId: Int?

        public var displayName: Bool?

        public enum CodingKeys: String, CodingKey {
            case stateId = "state_id"

            case appDisplayName = "app_display_name"

            case bshId = "bsh_id"

            case stateType = "state_type"

            case createdAt = "created_at"

            case storeId = "store_id"

            case deliveryAwbNumber = "delivery_awb_number"

            case kafkaSync = "kafka_sync"

            case reasons

            case forward

            case updatedAt = "updated_at"

            case bagStateMapper = "bag_state_mapper"

            case bagId = "bag_id"

            case shipmentId = "shipment_id"

            case status

            case deliveryPartnerId = "delivery_partner_id"

            case displayName = "display_name"
        }

        public init(appDisplayName: Bool? = nil, bagId: Int, bagStateMapper: BagStateMapper, bshId: Int, createdAt: String, deliveryAwbNumber: String? = nil, deliveryPartnerId: Int? = nil, displayName: Bool? = nil, forward: Bool? = nil, kafkaSync: Bool? = nil, reasons: [[String: Any]]? = nil, shipmentId: String, stateId: Int, stateType: String? = nil, status: String, storeId: Int, updatedAt: String? = nil) {
            self.stateId = stateId

            self.appDisplayName = appDisplayName

            self.bshId = bshId

            self.stateType = stateType

            self.createdAt = createdAt

            self.storeId = storeId

            self.deliveryAwbNumber = deliveryAwbNumber

            self.kafkaSync = kafkaSync

            self.reasons = reasons

            self.forward = forward

            self.updatedAt = updatedAt

            self.bagStateMapper = bagStateMapper

            self.bagId = bagId

            self.shipmentId = shipmentId

            self.status = status

            self.deliveryPartnerId = deliveryPartnerId

            self.displayName = displayName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            stateId = try container.decode(Int.self, forKey: .stateId)

            do {
                appDisplayName = try container.decode(Bool.self, forKey: .appDisplayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bshId = try container.decode(Int.self, forKey: .bshId)

            do {
                stateType = try container.decode(String.self, forKey: .stateType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdAt = try container.decode(String.self, forKey: .createdAt)

            storeId = try container.decode(Int.self, forKey: .storeId)

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

            do {
                forward = try container.decode(Bool.self, forKey: .forward)

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

            bagStateMapper = try container.decode(BagStateMapper.self, forKey: .bagStateMapper)

            bagId = try container.decode(Int.self, forKey: .bagId)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            status = try container.decode(String.self, forKey: .status)

            do {
                deliveryPartnerId = try container.decode(Int.self, forKey: .deliveryPartnerId)

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

            try? container.encodeIfPresent(stateId, forKey: .stateId)

            try? container.encodeIfPresent(appDisplayName, forKey: .appDisplayName)

            try? container.encodeIfPresent(bshId, forKey: .bshId)

            try? container.encodeIfPresent(stateType, forKey: .stateType)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encode(deliveryAwbNumber, forKey: .deliveryAwbNumber)

            try? container.encodeIfPresent(kafkaSync, forKey: .kafkaSync)

            try? container.encodeIfPresent(reasons, forKey: .reasons)

            try? container.encodeIfPresent(forward, forKey: .forward)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(bagStateMapper, forKey: .bagStateMapper)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encode(deliveryPartnerId, forKey: .deliveryPartnerId)

            try? container.encodeIfPresent(displayName, forKey: .displayName)
        }
    }
}
