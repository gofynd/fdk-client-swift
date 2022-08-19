

import Foundation
public extension PlatformClient {
    /*
         Model: BagStatusHistory
         Used By: Order
     */

    class BagStatusHistory: Codable {
        public var updatedAt: String

        public var createdAt: String

        public var kafkaSync: Bool?

        public var storeId: Int

        public var bagStateMapper: BagStateMapper1

        public var shipmentId: String

        public var stateId: Int

        public var status: String

        public var stateType: String

        public var bshId: Int

        public var deliveryAwbNumber: String?

        public var bagId: Int

        public var reasons: [[String: Any]]?

        public var deliveryPartnerId: Int?

        public enum CodingKeys: String, CodingKey {
            case updatedAt = "updated_at"

            case createdAt = "created_at"

            case kafkaSync = "kafka_sync"

            case storeId = "store_id"

            case bagStateMapper = "bag_state_mapper"

            case shipmentId = "shipment_id"

            case stateId = "state_id"

            case status

            case stateType = "state_type"

            case bshId = "bsh_id"

            case deliveryAwbNumber = "delivery_awb_number"

            case bagId = "bag_id"

            case reasons

            case deliveryPartnerId = "delivery_partner_id"
        }

        public init(bagId: Int, bagStateMapper: BagStateMapper1, bshId: Int, createdAt: String, deliveryAwbNumber: String? = nil, deliveryPartnerId: Int? = nil, kafkaSync: Bool? = nil, reasons: [[String: Any]]? = nil, shipmentId: String, stateId: Int, stateType: String, status: String, storeId: Int, updatedAt: String) {
            self.updatedAt = updatedAt

            self.createdAt = createdAt

            self.kafkaSync = kafkaSync

            self.storeId = storeId

            self.bagStateMapper = bagStateMapper

            self.shipmentId = shipmentId

            self.stateId = stateId

            self.status = status

            self.stateType = stateType

            self.bshId = bshId

            self.deliveryAwbNumber = deliveryAwbNumber

            self.bagId = bagId

            self.reasons = reasons

            self.deliveryPartnerId = deliveryPartnerId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                kafkaSync = try container.decode(Bool.self, forKey: .kafkaSync)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeId = try container.decode(Int.self, forKey: .storeId)

            bagStateMapper = try container.decode(BagStateMapper1.self, forKey: .bagStateMapper)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            stateId = try container.decode(Int.self, forKey: .stateId)

            status = try container.decode(String.self, forKey: .status)

            stateType = try container.decode(String.self, forKey: .stateType)

            bshId = try container.decode(Int.self, forKey: .bshId)

            do {
                deliveryAwbNumber = try container.decode(String.self, forKey: .deliveryAwbNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bagId = try container.decode(Int.self, forKey: .bagId)

            do {
                reasons = try container.decode([[String: Any]].self, forKey: .reasons)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(kafkaSync, forKey: .kafkaSync)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(bagStateMapper, forKey: .bagStateMapper)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(stateId, forKey: .stateId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(stateType, forKey: .stateType)

            try? container.encodeIfPresent(bshId, forKey: .bshId)

            try? container.encode(deliveryAwbNumber, forKey: .deliveryAwbNumber)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(reasons, forKey: .reasons)

            try? container.encode(deliveryPartnerId, forKey: .deliveryPartnerId)
        }
    }
}
