

import Foundation
public extension PlatformClient {
    /*
         Model: BagStatusHistory
         Used By: Order
     */

    class BagStatusHistory: Codable {
        public var createdAt: String

        public var bagStateMapper: BagStateMapper1

        public var status: String

        public var shipmentId: String

        public var storeId: Int

        public var stateType: String

        public var stateId: Int

        public var deliveryPartnerId: Int?

        public var bshId: Int

        public var reasons: [[String: Any]]?

        public var kafkaSync: Bool?

        public var updatedAt: String

        public var deliveryAwbNumber: String?

        public var bagId: Int

        public enum CodingKeys: String, CodingKey {
            case createdAt = "created_at"

            case bagStateMapper = "bag_state_mapper"

            case status

            case shipmentId = "shipment_id"

            case storeId = "store_id"

            case stateType = "state_type"

            case stateId = "state_id"

            case deliveryPartnerId = "delivery_partner_id"

            case bshId = "bsh_id"

            case reasons

            case kafkaSync = "kafka_sync"

            case updatedAt = "updated_at"

            case deliveryAwbNumber = "delivery_awb_number"

            case bagId = "bag_id"
        }

        public init(bagId: Int, bagStateMapper: BagStateMapper1, bshId: Int, createdAt: String, deliveryAwbNumber: String? = nil, deliveryPartnerId: Int? = nil, kafkaSync: Bool? = nil, reasons: [[String: Any]]? = nil, shipmentId: String, stateId: Int, stateType: String, status: String, storeId: Int, updatedAt: String) {
            self.createdAt = createdAt

            self.bagStateMapper = bagStateMapper

            self.status = status

            self.shipmentId = shipmentId

            self.storeId = storeId

            self.stateType = stateType

            self.stateId = stateId

            self.deliveryPartnerId = deliveryPartnerId

            self.bshId = bshId

            self.reasons = reasons

            self.kafkaSync = kafkaSync

            self.updatedAt = updatedAt

            self.deliveryAwbNumber = deliveryAwbNumber

            self.bagId = bagId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            bagStateMapper = try container.decode(BagStateMapper1.self, forKey: .bagStateMapper)

            status = try container.decode(String.self, forKey: .status)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            stateType = try container.decode(String.self, forKey: .stateType)

            stateId = try container.decode(Int.self, forKey: .stateId)

            do {
                deliveryPartnerId = try container.decode(Int.self, forKey: .deliveryPartnerId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bshId = try container.decode(Int.self, forKey: .bshId)

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

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            do {
                deliveryAwbNumber = try container.decode(String.self, forKey: .deliveryAwbNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bagId = try container.decode(Int.self, forKey: .bagId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(bagStateMapper, forKey: .bagStateMapper)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(stateType, forKey: .stateType)

            try? container.encodeIfPresent(stateId, forKey: .stateId)

            try? container.encode(deliveryPartnerId, forKey: .deliveryPartnerId)

            try? container.encodeIfPresent(bshId, forKey: .bshId)

            try? container.encodeIfPresent(reasons, forKey: .reasons)

            try? container.encodeIfPresent(kafkaSync, forKey: .kafkaSync)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encode(deliveryAwbNumber, forKey: .deliveryAwbNumber)

            try? container.encodeIfPresent(bagId, forKey: .bagId)
        }
    }
}
