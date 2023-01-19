

import Foundation
public extension PlatformClient {
    /*
         Model: BagStatusHistory
         Used By: Order
     */

    class BagStatusHistory: Codable {
        public var appDisplayName: Bool?

        public var storeId: Int

        public var status: String

        public var kafkaSync: Bool?

        public var shipmentId: String

        public var stateType: String?

        public var bshId: Int

        public var bagId: Int

        public var bagStateMapper: BagStateMapper

        public var createdAt: String

        public var deliveryAwbNumber: String?

        public var forward: Bool?

        public var deliveryPartnerId: Int?

        public var updatedAt: String?

        public var displayName: Bool?

        public var stateId: Int

        public var reasons: [[String: Any]]?

        public enum CodingKeys: String, CodingKey {
            case appDisplayName = "app_display_name"

            case storeId = "store_id"

            case status

            case kafkaSync = "kafka_sync"

            case shipmentId = "shipment_id"

            case stateType = "state_type"

            case bshId = "bsh_id"

            case bagId = "bag_id"

            case bagStateMapper = "bag_state_mapper"

            case createdAt = "created_at"

            case deliveryAwbNumber = "delivery_awb_number"

            case forward

            case deliveryPartnerId = "delivery_partner_id"

            case updatedAt = "updated_at"

            case displayName = "display_name"

            case stateId = "state_id"

            case reasons
        }

        public init(appDisplayName: Bool? = nil, bagId: Int, bagStateMapper: BagStateMapper, bshId: Int, createdAt: String, deliveryAwbNumber: String? = nil, deliveryPartnerId: Int? = nil, displayName: Bool? = nil, forward: Bool? = nil, kafkaSync: Bool? = nil, reasons: [[String: Any]]? = nil, shipmentId: String, stateId: Int, stateType: String? = nil, status: String, storeId: Int, updatedAt: String? = nil) {
            self.appDisplayName = appDisplayName

            self.storeId = storeId

            self.status = status

            self.kafkaSync = kafkaSync

            self.shipmentId = shipmentId

            self.stateType = stateType

            self.bshId = bshId

            self.bagId = bagId

            self.bagStateMapper = bagStateMapper

            self.createdAt = createdAt

            self.deliveryAwbNumber = deliveryAwbNumber

            self.forward = forward

            self.deliveryPartnerId = deliveryPartnerId

            self.updatedAt = updatedAt

            self.displayName = displayName

            self.stateId = stateId

            self.reasons = reasons
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                appDisplayName = try container.decode(Bool.self, forKey: .appDisplayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeId = try container.decode(Int.self, forKey: .storeId)

            status = try container.decode(String.self, forKey: .status)

            do {
                kafkaSync = try container.decode(Bool.self, forKey: .kafkaSync)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            do {
                stateType = try container.decode(String.self, forKey: .stateType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bshId = try container.decode(Int.self, forKey: .bshId)

            bagId = try container.decode(Int.self, forKey: .bagId)

            bagStateMapper = try container.decode(BagStateMapper.self, forKey: .bagStateMapper)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                deliveryAwbNumber = try container.decode(String.self, forKey: .deliveryAwbNumber)

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
                displayName = try container.decode(Bool.self, forKey: .displayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            stateId = try container.decode(Int.self, forKey: .stateId)

            do {
                reasons = try container.decode([[String: Any]].self, forKey: .reasons)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(appDisplayName, forKey: .appDisplayName)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(kafkaSync, forKey: .kafkaSync)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(stateType, forKey: .stateType)

            try? container.encodeIfPresent(bshId, forKey: .bshId)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(bagStateMapper, forKey: .bagStateMapper)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encode(deliveryAwbNumber, forKey: .deliveryAwbNumber)

            try? container.encodeIfPresent(forward, forKey: .forward)

            try? container.encode(deliveryPartnerId, forKey: .deliveryPartnerId)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(stateId, forKey: .stateId)

            try? container.encodeIfPresent(reasons, forKey: .reasons)
        }
    }
}
