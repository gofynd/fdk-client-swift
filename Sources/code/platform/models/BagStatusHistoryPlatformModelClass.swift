

import Foundation
public extension PlatformClient {
    /*
         Model: BagStatusHistory
         Used By: Order
     */

    class BagStatusHistory: Codable {
        public var status: String

        public var bagStateMapper: BagStateMapper1

        public var deliveryAwbNumber: String?

        public var kafkaSync: Bool?

        public var reasons: [[String: Any]]?

        public var shipmentId: String

        public var stateType: String

        public var bagId: Int

        public var updatedAt: String

        public var bshId: Int

        public var storeId: Int

        public var stateId: Int

        public var deliveryPartnerId: Int?

        public var createdAt: String

        public enum CodingKeys: String, CodingKey {
            case status

            case bagStateMapper = "bag_state_mapper"

            case deliveryAwbNumber = "delivery_awb_number"

            case kafkaSync = "kafka_sync"

            case reasons

            case shipmentId = "shipment_id"

            case stateType = "state_type"

            case bagId = "bag_id"

            case updatedAt = "updated_at"

            case bshId = "bsh_id"

            case storeId = "store_id"

            case stateId = "state_id"

            case deliveryPartnerId = "delivery_partner_id"

            case createdAt = "created_at"
        }

        public init(bagId: Int, bagStateMapper: BagStateMapper1, bshId: Int, createdAt: String, deliveryAwbNumber: String? = nil, deliveryPartnerId: Int? = nil, kafkaSync: Bool? = nil, reasons: [[String: Any]]? = nil, shipmentId: String, stateId: Int, stateType: String, status: String, storeId: Int, updatedAt: String) {
            self.status = status

            self.bagStateMapper = bagStateMapper

            self.deliveryAwbNumber = deliveryAwbNumber

            self.kafkaSync = kafkaSync

            self.reasons = reasons

            self.shipmentId = shipmentId

            self.stateType = stateType

            self.bagId = bagId

            self.updatedAt = updatedAt

            self.bshId = bshId

            self.storeId = storeId

            self.stateId = stateId

            self.deliveryPartnerId = deliveryPartnerId

            self.createdAt = createdAt
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            status = try container.decode(String.self, forKey: .status)

            bagStateMapper = try container.decode(BagStateMapper1.self, forKey: .bagStateMapper)

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

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            stateType = try container.decode(String.self, forKey: .stateType)

            bagId = try container.decode(Int.self, forKey: .bagId)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            bshId = try container.decode(Int.self, forKey: .bshId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            stateId = try container.decode(Int.self, forKey: .stateId)

            do {
                deliveryPartnerId = try container.decode(Int.self, forKey: .deliveryPartnerId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdAt = try container.decode(String.self, forKey: .createdAt)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(bagStateMapper, forKey: .bagStateMapper)

            try? container.encode(deliveryAwbNumber, forKey: .deliveryAwbNumber)

            try? container.encodeIfPresent(kafkaSync, forKey: .kafkaSync)

            try? container.encodeIfPresent(reasons, forKey: .reasons)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(stateType, forKey: .stateType)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(bshId, forKey: .bshId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(stateId, forKey: .stateId)

            try? container.encode(deliveryPartnerId, forKey: .deliveryPartnerId)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
        }
    }
}
