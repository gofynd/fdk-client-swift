

import Foundation
public extension PlatformClient {
    /*
         Model: BagStatusHistory
         Used By: Order
     */

    class BagStatusHistory: Codable {
        public var stateType: String

        public var bagId: Int

        public var reasons: [[String: Any]]?

        public var stateId: Int

        public var status: String

        public var deliveryPartnerId: Int?

        public var updatedAt: String

        public var storeId: Int

        public var deliveryAwbNumber: String?

        public var bagStateMapper: BagStateMapper1

        public var kafkaSync: Bool?

        public var shipmentId: String

        public var createdAt: String

        public var bshId: Int

        public enum CodingKeys: String, CodingKey {
            case stateType = "state_type"

            case bagId = "bag_id"

            case reasons

            case stateId = "state_id"

            case status

            case deliveryPartnerId = "delivery_partner_id"

            case updatedAt = "updated_at"

            case storeId = "store_id"

            case deliveryAwbNumber = "delivery_awb_number"

            case bagStateMapper = "bag_state_mapper"

            case kafkaSync = "kafka_sync"

            case shipmentId = "shipment_id"

            case createdAt = "created_at"

            case bshId = "bsh_id"
        }

        public init(bagId: Int, bagStateMapper: BagStateMapper1, bshId: Int, createdAt: String, deliveryAwbNumber: String? = nil, deliveryPartnerId: Int? = nil, kafkaSync: Bool? = nil, reasons: [[String: Any]]? = nil, shipmentId: String, stateId: Int, stateType: String, status: String, storeId: Int, updatedAt: String) {
            self.stateType = stateType

            self.bagId = bagId

            self.reasons = reasons

            self.stateId = stateId

            self.status = status

            self.deliveryPartnerId = deliveryPartnerId

            self.updatedAt = updatedAt

            self.storeId = storeId

            self.deliveryAwbNumber = deliveryAwbNumber

            self.bagStateMapper = bagStateMapper

            self.kafkaSync = kafkaSync

            self.shipmentId = shipmentId

            self.createdAt = createdAt

            self.bshId = bshId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            stateType = try container.decode(String.self, forKey: .stateType)

            bagId = try container.decode(Int.self, forKey: .bagId)

            do {
                reasons = try container.decode([[String: Any]].self, forKey: .reasons)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            stateId = try container.decode(Int.self, forKey: .stateId)

            status = try container.decode(String.self, forKey: .status)

            do {
                deliveryPartnerId = try container.decode(Int.self, forKey: .deliveryPartnerId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            storeId = try container.decode(Int.self, forKey: .storeId)

            do {
                deliveryAwbNumber = try container.decode(String.self, forKey: .deliveryAwbNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bagStateMapper = try container.decode(BagStateMapper1.self, forKey: .bagStateMapper)

            do {
                kafkaSync = try container.decode(Bool.self, forKey: .kafkaSync)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            bshId = try container.decode(Int.self, forKey: .bshId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(stateType, forKey: .stateType)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(reasons, forKey: .reasons)

            try? container.encodeIfPresent(stateId, forKey: .stateId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encode(deliveryPartnerId, forKey: .deliveryPartnerId)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encode(deliveryAwbNumber, forKey: .deliveryAwbNumber)

            try? container.encodeIfPresent(bagStateMapper, forKey: .bagStateMapper)

            try? container.encodeIfPresent(kafkaSync, forKey: .kafkaSync)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(bshId, forKey: .bshId)
        }
    }
}
