

import Foundation
public extension PlatformClient {
    /*
         Model: BagStatusHistory
         Used By: Order
     */

    class BagStatusHistory: Codable {
        public var updatedAt: String?

        public var deliveryPartnerId: Int?

        public var status: String

        public var appDisplayName: Bool?

        public var forward: Bool?

        public var reasons: [[String: Any]]?

        public var shipmentId: String

        public var storeId: Int

        public var createdAt: String

        public var kafkaSync: Bool?

        public var bagStateMapper: BagStateMapper

        public var stateId: Int

        public var deliveryAwbNumber: String?

        public var displayName: Bool?

        public var stateType: String?

        public var bshId: Int

        public var bagId: Int

        public enum CodingKeys: String, CodingKey {
            case updatedAt = "updated_at"

            case deliveryPartnerId = "delivery_partner_id"

            case status

            case appDisplayName = "app_display_name"

            case forward

            case reasons

            case shipmentId = "shipment_id"

            case storeId = "store_id"

            case createdAt = "created_at"

            case kafkaSync = "kafka_sync"

            case bagStateMapper = "bag_state_mapper"

            case stateId = "state_id"

            case deliveryAwbNumber = "delivery_awb_number"

            case displayName = "display_name"

            case stateType = "state_type"

            case bshId = "bsh_id"

            case bagId = "bag_id"
        }

        public init(appDisplayName: Bool? = nil, bagId: Int, bagStateMapper: BagStateMapper, bshId: Int, createdAt: String, deliveryAwbNumber: String? = nil, deliveryPartnerId: Int? = nil, displayName: Bool? = nil, forward: Bool? = nil, kafkaSync: Bool? = nil, reasons: [[String: Any]]? = nil, shipmentId: String, stateId: Int, stateType: String? = nil, status: String, storeId: Int, updatedAt: String? = nil) {
            self.updatedAt = updatedAt

            self.deliveryPartnerId = deliveryPartnerId

            self.status = status

            self.appDisplayName = appDisplayName

            self.forward = forward

            self.reasons = reasons

            self.shipmentId = shipmentId

            self.storeId = storeId

            self.createdAt = createdAt

            self.kafkaSync = kafkaSync

            self.bagStateMapper = bagStateMapper

            self.stateId = stateId

            self.deliveryAwbNumber = deliveryAwbNumber

            self.displayName = displayName

            self.stateType = stateType

            self.bshId = bshId

            self.bagId = bagId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            status = try container.decode(String.self, forKey: .status)

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
                reasons = try container.decode([[String: Any]].self, forKey: .reasons)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                kafkaSync = try container.decode(Bool.self, forKey: .kafkaSync)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bagStateMapper = try container.decode(BagStateMapper.self, forKey: .bagStateMapper)

            stateId = try container.decode(Int.self, forKey: .stateId)

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

            do {
                stateType = try container.decode(String.self, forKey: .stateType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bshId = try container.decode(Int.self, forKey: .bshId)

            bagId = try container.decode(Int.self, forKey: .bagId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encode(deliveryPartnerId, forKey: .deliveryPartnerId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(appDisplayName, forKey: .appDisplayName)

            try? container.encodeIfPresent(forward, forKey: .forward)

            try? container.encodeIfPresent(reasons, forKey: .reasons)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(kafkaSync, forKey: .kafkaSync)

            try? container.encodeIfPresent(bagStateMapper, forKey: .bagStateMapper)

            try? container.encodeIfPresent(stateId, forKey: .stateId)

            try? container.encode(deliveryAwbNumber, forKey: .deliveryAwbNumber)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(stateType, forKey: .stateType)

            try? container.encodeIfPresent(bshId, forKey: .bshId)

            try? container.encodeIfPresent(bagId, forKey: .bagId)
        }
    }
}
