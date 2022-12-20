

import Foundation
public extension PlatformClient {
    /*
         Model: BagStatusHistory
         Used By: Order
     */

    class BagStatusHistory: Codable {
        public var storeId: Int

        public var stateType: String?

        public var displayName: Bool?

        public var shipmentId: String

        public var bshId: Int

        public var stateId: Int

        public var createdAt: String

        public var forward: Bool?

        public var deliveryAwbNumber: String?

        public var appDisplayName: Bool?

        public var status: String

        public var bagId: Int

        public var bagStateMapper: BagStateMapper

        public var kafkaSync: Bool?

        public var deliveryPartnerId: Int?

        public var updatedAt: String?

        public var reasons: [[String: Any]]?

        public enum CodingKeys: String, CodingKey {
            case storeId = "store_id"

            case stateType = "state_type"

            case displayName = "display_name"

            case shipmentId = "shipment_id"

            case bshId = "bsh_id"

            case stateId = "state_id"

            case createdAt = "created_at"

            case forward

            case deliveryAwbNumber = "delivery_awb_number"

            case appDisplayName = "app_display_name"

            case status

            case bagId = "bag_id"

            case bagStateMapper = "bag_state_mapper"

            case kafkaSync = "kafka_sync"

            case deliveryPartnerId = "delivery_partner_id"

            case updatedAt = "updated_at"

            case reasons
        }

        public init(appDisplayName: Bool? = nil, bagId: Int, bagStateMapper: BagStateMapper, bshId: Int, createdAt: String, deliveryAwbNumber: String? = nil, deliveryPartnerId: Int? = nil, displayName: Bool? = nil, forward: Bool? = nil, kafkaSync: Bool? = nil, reasons: [[String: Any]]? = nil, shipmentId: String, stateId: Int, stateType: String? = nil, status: String, storeId: Int, updatedAt: String? = nil) {
            self.storeId = storeId

            self.stateType = stateType

            self.displayName = displayName

            self.shipmentId = shipmentId

            self.bshId = bshId

            self.stateId = stateId

            self.createdAt = createdAt

            self.forward = forward

            self.deliveryAwbNumber = deliveryAwbNumber

            self.appDisplayName = appDisplayName

            self.status = status

            self.bagId = bagId

            self.bagStateMapper = bagStateMapper

            self.kafkaSync = kafkaSync

            self.deliveryPartnerId = deliveryPartnerId

            self.updatedAt = updatedAt

            self.reasons = reasons
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            storeId = try container.decode(Int.self, forKey: .storeId)

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

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            bshId = try container.decode(Int.self, forKey: .bshId)

            stateId = try container.decode(Int.self, forKey: .stateId)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                forward = try container.decode(Bool.self, forKey: .forward)

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
                appDisplayName = try container.decode(Bool.self, forKey: .appDisplayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode(String.self, forKey: .status)

            bagId = try container.decode(Int.self, forKey: .bagId)

            bagStateMapper = try container.decode(BagStateMapper.self, forKey: .bagStateMapper)

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
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(stateType, forKey: .stateType)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(bshId, forKey: .bshId)

            try? container.encodeIfPresent(stateId, forKey: .stateId)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(forward, forKey: .forward)

            try? container.encode(deliveryAwbNumber, forKey: .deliveryAwbNumber)

            try? container.encodeIfPresent(appDisplayName, forKey: .appDisplayName)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(bagStateMapper, forKey: .bagStateMapper)

            try? container.encodeIfPresent(kafkaSync, forKey: .kafkaSync)

            try? container.encode(deliveryPartnerId, forKey: .deliveryPartnerId)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(reasons, forKey: .reasons)
        }
    }
}
