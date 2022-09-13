

import Foundation
public extension PlatformClient {
    /*
         Model: BagStatusHistory
         Used By: Order
     */

    class BagStatusHistory: Codable {
        public var kafkaSync: Bool?

        public var storeId: Int

        public var bagStateMapper: BagStateMapper1

        public var reasons: [[String: Any]]?

        public var deliveryPartnerId: Int?

        public var bagId: Int

        public var stateType: String

        public var stateId: Int

        public var deliveryAwbNumber: String?

        public var updatedAt: String

        public var bshId: Int

        public var createdAt: String

        public var shipmentId: String

        public var status: String

        public enum CodingKeys: String, CodingKey {
            case kafkaSync = "kafka_sync"

            case storeId = "store_id"

            case bagStateMapper = "bag_state_mapper"

            case reasons

            case deliveryPartnerId = "delivery_partner_id"

            case bagId = "bag_id"

            case stateType = "state_type"

            case stateId = "state_id"

            case deliveryAwbNumber = "delivery_awb_number"

            case updatedAt = "updated_at"

            case bshId = "bsh_id"

            case createdAt = "created_at"

            case shipmentId = "shipment_id"

            case status
        }

        public init(bagId: Int, bagStateMapper: BagStateMapper1, bshId: Int, createdAt: String, deliveryAwbNumber: String? = nil, deliveryPartnerId: Int? = nil, kafkaSync: Bool? = nil, reasons: [[String: Any]]? = nil, shipmentId: String, stateId: Int, stateType: String, status: String, storeId: Int, updatedAt: String) {
            self.kafkaSync = kafkaSync

            self.storeId = storeId

            self.bagStateMapper = bagStateMapper

            self.reasons = reasons

            self.deliveryPartnerId = deliveryPartnerId

            self.bagId = bagId

            self.stateType = stateType

            self.stateId = stateId

            self.deliveryAwbNumber = deliveryAwbNumber

            self.updatedAt = updatedAt

            self.bshId = bshId

            self.createdAt = createdAt

            self.shipmentId = shipmentId

            self.status = status
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                kafkaSync = try container.decode(Bool.self, forKey: .kafkaSync)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeId = try container.decode(Int.self, forKey: .storeId)

            bagStateMapper = try container.decode(BagStateMapper1.self, forKey: .bagStateMapper)

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

            bagId = try container.decode(Int.self, forKey: .bagId)

            stateType = try container.decode(String.self, forKey: .stateType)

            stateId = try container.decode(Int.self, forKey: .stateId)

            do {
                deliveryAwbNumber = try container.decode(String.self, forKey: .deliveryAwbNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            bshId = try container.decode(Int.self, forKey: .bshId)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            status = try container.decode(String.self, forKey: .status)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(kafkaSync, forKey: .kafkaSync)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(bagStateMapper, forKey: .bagStateMapper)

            try? container.encodeIfPresent(reasons, forKey: .reasons)

            try? container.encode(deliveryPartnerId, forKey: .deliveryPartnerId)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(stateType, forKey: .stateType)

            try? container.encodeIfPresent(stateId, forKey: .stateId)

            try? container.encode(deliveryAwbNumber, forKey: .deliveryAwbNumber)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(bshId, forKey: .bshId)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(status, forKey: .status)
        }
    }
}
