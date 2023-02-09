

import Foundation
public extension PlatformClient {
    /*
         Model: BagStatusHistory
         Used By: Order
     */

    class BagStatusHistory: Codable {
        public var status: String

        public var storeId: Int

        public var bagId: Int

        public var stateType: String?

        public var displayName: Bool?

        public var forward: Bool?

        public var stateId: Int

        public var createdAt: String

        public var bagStateMapper: BagStateMapper

        public var deliveryAwbNumber: String?

        public var appDisplayName: Bool?

        public var bshId: Int

        public var shipmentId: String

        public var deliveryPartnerId: Int?

        public var kafkaSync: Bool?

        public var reasons: [[String: Any]]?

        public var updatedAt: String?

        public enum CodingKeys: String, CodingKey {
            case status

            case storeId = "store_id"

            case bagId = "bag_id"

            case stateType = "state_type"

            case displayName = "display_name"

            case forward

            case stateId = "state_id"

            case createdAt = "created_at"

            case bagStateMapper = "bag_state_mapper"

            case deliveryAwbNumber = "delivery_awb_number"

            case appDisplayName = "app_display_name"

            case bshId = "bsh_id"

            case shipmentId = "shipment_id"

            case deliveryPartnerId = "delivery_partner_id"

            case kafkaSync = "kafka_sync"

            case reasons

            case updatedAt = "updated_at"
        }

        public init(appDisplayName: Bool? = nil, bagId: Int, bagStateMapper: BagStateMapper, bshId: Int, createdAt: String, deliveryAwbNumber: String? = nil, deliveryPartnerId: Int? = nil, displayName: Bool? = nil, forward: Bool? = nil, kafkaSync: Bool? = nil, reasons: [[String: Any]]? = nil, shipmentId: String, stateId: Int, stateType: String? = nil, status: String, storeId: Int, updatedAt: String? = nil) {
            self.status = status

            self.storeId = storeId

            self.bagId = bagId

            self.stateType = stateType

            self.displayName = displayName

            self.forward = forward

            self.stateId = stateId

            self.createdAt = createdAt

            self.bagStateMapper = bagStateMapper

            self.deliveryAwbNumber = deliveryAwbNumber

            self.appDisplayName = appDisplayName

            self.bshId = bshId

            self.shipmentId = shipmentId

            self.deliveryPartnerId = deliveryPartnerId

            self.kafkaSync = kafkaSync

            self.reasons = reasons

            self.updatedAt = updatedAt
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            status = try container.decode(String.self, forKey: .status)

            storeId = try container.decode(Int.self, forKey: .storeId)

            bagId = try container.decode(Int.self, forKey: .bagId)

            do {
                stateType = try container.decode(String.self, forKey: .stateType)

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

            do {
                forward = try container.decode(Bool.self, forKey: .forward)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            stateId = try container.decode(Int.self, forKey: .stateId)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            bagStateMapper = try container.decode(BagStateMapper.self, forKey: .bagStateMapper)

            do {
                deliveryAwbNumber = try container.decode(String.self, forKey: .deliveryAwbNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                appDisplayName = try container.decode(Bool.self, forKey: .appDisplayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bshId = try container.decode(Int.self, forKey: .bshId)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            do {
                deliveryPartnerId = try container.decode(Int.self, forKey: .deliveryPartnerId)

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
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(stateType, forKey: .stateType)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(forward, forKey: .forward)

            try? container.encodeIfPresent(stateId, forKey: .stateId)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(bagStateMapper, forKey: .bagStateMapper)

            try? container.encode(deliveryAwbNumber, forKey: .deliveryAwbNumber)

            try? container.encodeIfPresent(appDisplayName, forKey: .appDisplayName)

            try? container.encodeIfPresent(bshId, forKey: .bshId)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encode(deliveryPartnerId, forKey: .deliveryPartnerId)

            try? container.encodeIfPresent(kafkaSync, forKey: .kafkaSync)

            try? container.encodeIfPresent(reasons, forKey: .reasons)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
        }
    }
}
