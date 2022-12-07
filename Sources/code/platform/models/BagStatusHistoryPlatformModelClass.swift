

import Foundation
public extension PlatformClient {
    /*
         Model: BagStatusHistory
         Used By: Order
     */

    class BagStatusHistory: Codable {
        public var forward: Bool?

        public var storeId: Int

        public var stateId: Int

        public var kafkaSync: Bool?

        public var deliveryPartnerId: Int?

        public var deliveryAwbNumber: String?

        public var reasons: [[String: Any]]?

        public var appDisplayName: Bool?

        public var bagStateMapper: BagStateMapper1

        public var displayName: Bool?

        public var updatedAt: String?

        public var stateType: String?

        public var status: String

        public var bshId: Int

        public var shipmentId: String

        public var bagId: Int

        public var createdAt: String

        public enum CodingKeys: String, CodingKey {
            case forward

            case storeId = "store_id"

            case stateId = "state_id"

            case kafkaSync = "kafka_sync"

            case deliveryPartnerId = "delivery_partner_id"

            case deliveryAwbNumber = "delivery_awb_number"

            case reasons

            case appDisplayName = "app_display_name"

            case bagStateMapper = "bag_state_mapper"

            case displayName = "display_name"

            case updatedAt = "updated_at"

            case stateType = "state_type"

            case status

            case bshId = "bsh_id"

            case shipmentId = "shipment_id"

            case bagId = "bag_id"

            case createdAt = "created_at"
        }

        public init(appDisplayName: Bool? = nil, bagId: Int, bagStateMapper: BagStateMapper1, bshId: Int, createdAt: String, deliveryAwbNumber: String? = nil, deliveryPartnerId: Int? = nil, displayName: Bool? = nil, forward: Bool? = nil, kafkaSync: Bool? = nil, reasons: [[String: Any]]? = nil, shipmentId: String, stateId: Int, stateType: String? = nil, status: String, storeId: Int, updatedAt: String? = nil) {
            self.forward = forward

            self.storeId = storeId

            self.stateId = stateId

            self.kafkaSync = kafkaSync

            self.deliveryPartnerId = deliveryPartnerId

            self.deliveryAwbNumber = deliveryAwbNumber

            self.reasons = reasons

            self.appDisplayName = appDisplayName

            self.bagStateMapper = bagStateMapper

            self.displayName = displayName

            self.updatedAt = updatedAt

            self.stateType = stateType

            self.status = status

            self.bshId = bshId

            self.shipmentId = shipmentId

            self.bagId = bagId

            self.createdAt = createdAt
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                forward = try container.decode(Bool.self, forKey: .forward)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeId = try container.decode(Int.self, forKey: .storeId)

            stateId = try container.decode(Int.self, forKey: .stateId)

            do {
                kafkaSync = try container.decode(Bool.self, forKey: .kafkaSync)

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
                deliveryAwbNumber = try container.decode(String.self, forKey: .deliveryAwbNumber)

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
                appDisplayName = try container.decode(Bool.self, forKey: .appDisplayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bagStateMapper = try container.decode(BagStateMapper1.self, forKey: .bagStateMapper)

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

            do {
                stateType = try container.decode(String.self, forKey: .stateType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode(String.self, forKey: .status)

            bshId = try container.decode(Int.self, forKey: .bshId)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            bagId = try container.decode(Int.self, forKey: .bagId)

            createdAt = try container.decode(String.self, forKey: .createdAt)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(forward, forKey: .forward)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(stateId, forKey: .stateId)

            try? container.encodeIfPresent(kafkaSync, forKey: .kafkaSync)

            try? container.encode(deliveryPartnerId, forKey: .deliveryPartnerId)

            try? container.encode(deliveryAwbNumber, forKey: .deliveryAwbNumber)

            try? container.encodeIfPresent(reasons, forKey: .reasons)

            try? container.encodeIfPresent(appDisplayName, forKey: .appDisplayName)

            try? container.encodeIfPresent(bagStateMapper, forKey: .bagStateMapper)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(stateType, forKey: .stateType)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(bshId, forKey: .bshId)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
        }
    }
}
