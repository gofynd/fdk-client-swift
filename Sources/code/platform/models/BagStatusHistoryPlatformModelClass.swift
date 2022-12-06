

import Foundation
public extension PlatformClient {
    /*
         Model: BagStatusHistory
         Used By: Order
     */

    class BagStatusHistory: Codable {
        public var displayName: Bool?

        public var updatedAt: String?

        public var bshId: Int

        public var status: String

        public var stateId: Int

        public var bagId: Int

        public var deliveryAwbNumber: String?

        public var bagStateMapper: BagStateMapper

        public var stateType: String?

        public var appDisplayName: Bool?

        public var shipmentId: String

        public var reasons: [[String: Any]]?

        public var kafkaSync: Bool?

        public var forward: Bool?

        public var storeId: Int

        public var createdAt: String

        public var deliveryPartnerId: Int?

        public enum CodingKeys: String, CodingKey {
            case displayName = "display_name"

            case updatedAt = "updated_at"

            case bshId = "bsh_id"

            case status

            case stateId = "state_id"

            case bagId = "bag_id"

            case deliveryAwbNumber = "delivery_awb_number"

            case bagStateMapper = "bag_state_mapper"

            case stateType = "state_type"

            case appDisplayName = "app_display_name"

            case shipmentId = "shipment_id"

            case reasons

            case kafkaSync = "kafka_sync"

            case forward

            case storeId = "store_id"

            case createdAt = "created_at"

            case deliveryPartnerId = "delivery_partner_id"
        }

        public init(appDisplayName: Bool? = nil, bagId: Int, bagStateMapper: BagStateMapper, bshId: Int, createdAt: String, deliveryAwbNumber: String? = nil, deliveryPartnerId: Int? = nil, displayName: Bool? = nil, forward: Bool? = nil, kafkaSync: Bool? = nil, reasons: [[String: Any]]? = nil, shipmentId: String, stateId: Int, stateType: String? = nil, status: String, storeId: Int, updatedAt: String? = nil) {
            self.displayName = displayName

            self.updatedAt = updatedAt

            self.bshId = bshId

            self.status = status

            self.stateId = stateId

            self.bagId = bagId

            self.deliveryAwbNumber = deliveryAwbNumber

            self.bagStateMapper = bagStateMapper

            self.stateType = stateType

            self.appDisplayName = appDisplayName

            self.shipmentId = shipmentId

            self.reasons = reasons

            self.kafkaSync = kafkaSync

            self.forward = forward

            self.storeId = storeId

            self.createdAt = createdAt

            self.deliveryPartnerId = deliveryPartnerId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                displayName = try container.decode(Bool.self, forKey: .displayName)

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

            bshId = try container.decode(Int.self, forKey: .bshId)

            status = try container.decode(String.self, forKey: .status)

            stateId = try container.decode(Int.self, forKey: .stateId)

            bagId = try container.decode(Int.self, forKey: .bagId)

            do {
                deliveryAwbNumber = try container.decode(String.self, forKey: .deliveryAwbNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bagStateMapper = try container.decode(BagStateMapper.self, forKey: .bagStateMapper)

            do {
                stateType = try container.decode(String.self, forKey: .stateType)

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

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            do {
                reasons = try container.decode([[String: Any]].self, forKey: .reasons)

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
                forward = try container.decode(Bool.self, forKey: .forward)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeId = try container.decode(Int.self, forKey: .storeId)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                deliveryPartnerId = try container.decode(Int.self, forKey: .deliveryPartnerId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(bshId, forKey: .bshId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(stateId, forKey: .stateId)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encode(deliveryAwbNumber, forKey: .deliveryAwbNumber)

            try? container.encodeIfPresent(bagStateMapper, forKey: .bagStateMapper)

            try? container.encodeIfPresent(stateType, forKey: .stateType)

            try? container.encodeIfPresent(appDisplayName, forKey: .appDisplayName)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(reasons, forKey: .reasons)

            try? container.encodeIfPresent(kafkaSync, forKey: .kafkaSync)

            try? container.encodeIfPresent(forward, forKey: .forward)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encode(deliveryPartnerId, forKey: .deliveryPartnerId)
        }
    }
}
