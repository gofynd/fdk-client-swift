

import Foundation
public extension PlatformClient {
    /*
         Model: BagStatusHistory
         Used By: Order
     */

    class BagStatusHistory: Codable {
        public var forward: Bool?

        public var reasons: [[String: Any]]?

        public var storeId: Int

        public var updatedAt: String?

        public var bagId: Int

        public var shipmentId: String

        public var kafkaSync: Bool?

        public var stateId: Int

        public var status: String

        public var stateType: String?

        public var bagStateMapper: BagStateMapper

        public var displayName: Bool?

        public var appDisplayName: Bool?

        public var deliveryPartnerId: Int?

        public var bshId: Int

        public var createdAt: String

        public var deliveryAwbNumber: String?

        public enum CodingKeys: String, CodingKey {
            case forward

            case reasons

            case storeId = "store_id"

            case updatedAt = "updated_at"

            case bagId = "bag_id"

            case shipmentId = "shipment_id"

            case kafkaSync = "kafka_sync"

            case stateId = "state_id"

            case status

            case stateType = "state_type"

            case bagStateMapper = "bag_state_mapper"

            case displayName = "display_name"

            case appDisplayName = "app_display_name"

            case deliveryPartnerId = "delivery_partner_id"

            case bshId = "bsh_id"

            case createdAt = "created_at"

            case deliveryAwbNumber = "delivery_awb_number"
        }

        public init(appDisplayName: Bool? = nil, bagId: Int, bagStateMapper: BagStateMapper, bshId: Int, createdAt: String, deliveryAwbNumber: String? = nil, deliveryPartnerId: Int? = nil, displayName: Bool? = nil, forward: Bool? = nil, kafkaSync: Bool? = nil, reasons: [[String: Any]]? = nil, shipmentId: String, stateId: Int, stateType: String? = nil, status: String, storeId: Int, updatedAt: String? = nil) {
            self.forward = forward

            self.reasons = reasons

            self.storeId = storeId

            self.updatedAt = updatedAt

            self.bagId = bagId

            self.shipmentId = shipmentId

            self.kafkaSync = kafkaSync

            self.stateId = stateId

            self.status = status

            self.stateType = stateType

            self.bagStateMapper = bagStateMapper

            self.displayName = displayName

            self.appDisplayName = appDisplayName

            self.deliveryPartnerId = deliveryPartnerId

            self.bshId = bshId

            self.createdAt = createdAt

            self.deliveryAwbNumber = deliveryAwbNumber
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            storeId = try container.decode(Int.self, forKey: .storeId)

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bagId = try container.decode(Int.self, forKey: .bagId)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            do {
                kafkaSync = try container.decode(Bool.self, forKey: .kafkaSync)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            stateId = try container.decode(Int.self, forKey: .stateId)

            status = try container.decode(String.self, forKey: .status)

            do {
                stateType = try container.decode(String.self, forKey: .stateType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bagStateMapper = try container.decode(BagStateMapper.self, forKey: .bagStateMapper)

            do {
                displayName = try container.decode(Bool.self, forKey: .displayName)

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
                deliveryPartnerId = try container.decode(Int.self, forKey: .deliveryPartnerId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bshId = try container.decode(Int.self, forKey: .bshId)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                deliveryAwbNumber = try container.decode(String.self, forKey: .deliveryAwbNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(forward, forKey: .forward)

            try? container.encodeIfPresent(reasons, forKey: .reasons)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(kafkaSync, forKey: .kafkaSync)

            try? container.encodeIfPresent(stateId, forKey: .stateId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(stateType, forKey: .stateType)

            try? container.encodeIfPresent(bagStateMapper, forKey: .bagStateMapper)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(appDisplayName, forKey: .appDisplayName)

            try? container.encode(deliveryPartnerId, forKey: .deliveryPartnerId)

            try? container.encodeIfPresent(bshId, forKey: .bshId)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encode(deliveryAwbNumber, forKey: .deliveryAwbNumber)
        }
    }
}
