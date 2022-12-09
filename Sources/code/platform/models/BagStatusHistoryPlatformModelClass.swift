

import Foundation
public extension PlatformClient {
    /*
         Model: BagStatusHistory
         Used By: Order
     */

    class BagStatusHistory: Codable {
        public var stateType: String?

        public var kafkaSync: Bool?

        public var bagStateMapper: BagStateMapper

        public var storeId: Int

        public var stateId: Int

        public var forward: Bool?

        public var updatedAt: String?

        public var deliveryPartnerId: Int?

        public var displayName: Bool?

        public var createdAt: String

        public var bagId: Int

        public var reasons: [[String: Any]]?

        public var appDisplayName: Bool?

        public var deliveryAwbNumber: String?

        public var status: String

        public var bshId: Int

        public var shipmentId: String

        public enum CodingKeys: String, CodingKey {
            case stateType = "state_type"

            case kafkaSync = "kafka_sync"

            case bagStateMapper = "bag_state_mapper"

            case storeId = "store_id"

            case stateId = "state_id"

            case forward

            case updatedAt = "updated_at"

            case deliveryPartnerId = "delivery_partner_id"

            case displayName = "display_name"

            case createdAt = "created_at"

            case bagId = "bag_id"

            case reasons

            case appDisplayName = "app_display_name"

            case deliveryAwbNumber = "delivery_awb_number"

            case status

            case bshId = "bsh_id"

            case shipmentId = "shipment_id"
        }

        public init(appDisplayName: Bool? = nil, bagId: Int, bagStateMapper: BagStateMapper, bshId: Int, createdAt: String, deliveryAwbNumber: String? = nil, deliveryPartnerId: Int? = nil, displayName: Bool? = nil, forward: Bool? = nil, kafkaSync: Bool? = nil, reasons: [[String: Any]]? = nil, shipmentId: String, stateId: Int, stateType: String? = nil, status: String, storeId: Int, updatedAt: String? = nil) {
            self.stateType = stateType

            self.kafkaSync = kafkaSync

            self.bagStateMapper = bagStateMapper

            self.storeId = storeId

            self.stateId = stateId

            self.forward = forward

            self.updatedAt = updatedAt

            self.deliveryPartnerId = deliveryPartnerId

            self.displayName = displayName

            self.createdAt = createdAt

            self.bagId = bagId

            self.reasons = reasons

            self.appDisplayName = appDisplayName

            self.deliveryAwbNumber = deliveryAwbNumber

            self.status = status

            self.bshId = bshId

            self.shipmentId = shipmentId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                stateType = try container.decode(String.self, forKey: .stateType)

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

            bagStateMapper = try container.decode(BagStateMapper.self, forKey: .bagStateMapper)

            storeId = try container.decode(Int.self, forKey: .storeId)

            stateId = try container.decode(Int.self, forKey: .stateId)

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

            do {
                displayName = try container.decode(Bool.self, forKey: .displayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdAt = try container.decode(String.self, forKey: .createdAt)

            bagId = try container.decode(Int.self, forKey: .bagId)

            do {
                reasons = try container.decode([[String: Any]].self, forKey: .reasons)

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
                deliveryAwbNumber = try container.decode(String.self, forKey: .deliveryAwbNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode(String.self, forKey: .status)

            bshId = try container.decode(Int.self, forKey: .bshId)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(stateType, forKey: .stateType)

            try? container.encodeIfPresent(kafkaSync, forKey: .kafkaSync)

            try? container.encodeIfPresent(bagStateMapper, forKey: .bagStateMapper)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(stateId, forKey: .stateId)

            try? container.encodeIfPresent(forward, forKey: .forward)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encode(deliveryPartnerId, forKey: .deliveryPartnerId)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(reasons, forKey: .reasons)

            try? container.encodeIfPresent(appDisplayName, forKey: .appDisplayName)

            try? container.encode(deliveryAwbNumber, forKey: .deliveryAwbNumber)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(bshId, forKey: .bshId)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
        }
    }
}
