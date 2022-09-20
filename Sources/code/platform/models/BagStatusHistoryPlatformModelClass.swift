

import Foundation
public extension PlatformClient {
    /*
         Model: BagStatusHistory
         Used By: Order
     */

    class BagStatusHistory: Codable {
        public var bshId: Int

        public var storeId: Int

        public var updatedAt: String

        public var reasons: [[String: Any]]?

        public var deliveryPartnerId: Int?

        public var kafkaSync: Bool?

        public var deliveryAwbNumber: String?

        public var stateType: String

        public var status: String

        public var createdAt: String

        public var stateId: Int

        public var bagId: Int

        public var bagStateMapper: BagStateMapper1

        public var shipmentId: String

        public enum CodingKeys: String, CodingKey {
            case bshId = "bsh_id"

            case storeId = "store_id"

            case updatedAt = "updated_at"

            case reasons

            case deliveryPartnerId = "delivery_partner_id"

            case kafkaSync = "kafka_sync"

            case deliveryAwbNumber = "delivery_awb_number"

            case stateType = "state_type"

            case status

            case createdAt = "created_at"

            case stateId = "state_id"

            case bagId = "bag_id"

            case bagStateMapper = "bag_state_mapper"

            case shipmentId = "shipment_id"
        }

        public init(bagId: Int, bagStateMapper: BagStateMapper1, bshId: Int, createdAt: String, deliveryAwbNumber: String? = nil, deliveryPartnerId: Int? = nil, kafkaSync: Bool? = nil, reasons: [[String: Any]]? = nil, shipmentId: String, stateId: Int, stateType: String, status: String, storeId: Int, updatedAt: String) {
            self.bshId = bshId

            self.storeId = storeId

            self.updatedAt = updatedAt

            self.reasons = reasons

            self.deliveryPartnerId = deliveryPartnerId

            self.kafkaSync = kafkaSync

            self.deliveryAwbNumber = deliveryAwbNumber

            self.stateType = stateType

            self.status = status

            self.createdAt = createdAt

            self.stateId = stateId

            self.bagId = bagId

            self.bagStateMapper = bagStateMapper

            self.shipmentId = shipmentId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            bshId = try container.decode(Int.self, forKey: .bshId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

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

            do {
                kafkaSync = try container.decode(Bool.self, forKey: .kafkaSync)

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

            stateType = try container.decode(String.self, forKey: .stateType)

            status = try container.decode(String.self, forKey: .status)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            stateId = try container.decode(Int.self, forKey: .stateId)

            bagId = try container.decode(Int.self, forKey: .bagId)

            bagStateMapper = try container.decode(BagStateMapper1.self, forKey: .bagStateMapper)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(bshId, forKey: .bshId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(reasons, forKey: .reasons)

            try? container.encode(deliveryPartnerId, forKey: .deliveryPartnerId)

            try? container.encodeIfPresent(kafkaSync, forKey: .kafkaSync)

            try? container.encode(deliveryAwbNumber, forKey: .deliveryAwbNumber)

            try? container.encodeIfPresent(stateType, forKey: .stateType)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(stateId, forKey: .stateId)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(bagStateMapper, forKey: .bagStateMapper)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
        }
    }
}
