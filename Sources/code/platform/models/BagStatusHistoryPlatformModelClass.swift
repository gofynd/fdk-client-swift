

import Foundation
public extension PlatformClient {
    /*
         Model: BagStatusHistory
         Used By: Order
     */

    class BagStatusHistory: Codable {
        public var createdAt: String

        public var stateId: Int

        public var kafkaSync: Bool?

        public var deliveryAwbNumber: String?

        public var stateType: String?

        public var appDisplayName: Bool?

        public var forward: Bool?

        public var updatedAt: String?

        public var deliveryPartnerId: Int?

        public var storeId: Int

        public var shipmentId: String

        public var bagStateMapper: BagStateMapper

        public var displayName: Bool?

        public var status: String

        public var bagId: Int

        public var reasons: [[String: Any]]?

        public var bshId: Int

        public enum CodingKeys: String, CodingKey {
            case createdAt = "created_at"

            case stateId = "state_id"

            case kafkaSync = "kafka_sync"

            case deliveryAwbNumber = "delivery_awb_number"

            case stateType = "state_type"

            case appDisplayName = "app_display_name"

            case forward

            case updatedAt = "updated_at"

            case deliveryPartnerId = "delivery_partner_id"

            case storeId = "store_id"

            case shipmentId = "shipment_id"

            case bagStateMapper = "bag_state_mapper"

            case displayName = "display_name"

            case status

            case bagId = "bag_id"

            case reasons

            case bshId = "bsh_id"
        }

        public init(appDisplayName: Bool? = nil, bagId: Int, bagStateMapper: BagStateMapper, bshId: Int, createdAt: String, deliveryAwbNumber: String? = nil, deliveryPartnerId: Int? = nil, displayName: Bool? = nil, forward: Bool? = nil, kafkaSync: Bool? = nil, reasons: [[String: Any]]? = nil, shipmentId: String, stateId: Int, stateType: String? = nil, status: String, storeId: Int, updatedAt: String? = nil) {
            self.createdAt = createdAt

            self.stateId = stateId

            self.kafkaSync = kafkaSync

            self.deliveryAwbNumber = deliveryAwbNumber

            self.stateType = stateType

            self.appDisplayName = appDisplayName

            self.forward = forward

            self.updatedAt = updatedAt

            self.deliveryPartnerId = deliveryPartnerId

            self.storeId = storeId

            self.shipmentId = shipmentId

            self.bagStateMapper = bagStateMapper

            self.displayName = displayName

            self.status = status

            self.bagId = bagId

            self.reasons = reasons

            self.bshId = bshId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            stateId = try container.decode(Int.self, forKey: .stateId)

            do {
                kafkaSync = try container.decode(Bool.self, forKey: .kafkaSync)

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

            do {
                deliveryPartnerId = try container.decode(Int.self, forKey: .deliveryPartnerId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeId = try container.decode(Int.self, forKey: .storeId)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            bagStateMapper = try container.decode(BagStateMapper.self, forKey: .bagStateMapper)

            do {
                displayName = try container.decode(Bool.self, forKey: .displayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode(String.self, forKey: .status)

            bagId = try container.decode(Int.self, forKey: .bagId)

            do {
                reasons = try container.decode([[String: Any]].self, forKey: .reasons)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bshId = try container.decode(Int.self, forKey: .bshId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(stateId, forKey: .stateId)

            try? container.encodeIfPresent(kafkaSync, forKey: .kafkaSync)

            try? container.encode(deliveryAwbNumber, forKey: .deliveryAwbNumber)

            try? container.encodeIfPresent(stateType, forKey: .stateType)

            try? container.encodeIfPresent(appDisplayName, forKey: .appDisplayName)

            try? container.encodeIfPresent(forward, forKey: .forward)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encode(deliveryPartnerId, forKey: .deliveryPartnerId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(bagStateMapper, forKey: .bagStateMapper)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(reasons, forKey: .reasons)

            try? container.encodeIfPresent(bshId, forKey: .bshId)
        }
    }
}
