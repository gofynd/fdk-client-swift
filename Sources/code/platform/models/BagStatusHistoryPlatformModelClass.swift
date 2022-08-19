

import Foundation
public extension PlatformClient {
    /*
         Model: BagStatusHistory
         Used By: Order
     */

    class BagStatusHistory: Codable {
        public var bagId: Int

        public var createdAt: String

        public var deliveryAwbNumber: String?

        public var storeId: Int

        public var shipmentId: String

        public var stateType: String

        public var deliveryPartnerId: Int?

        public var kafkaSync: Bool?

        public var stateId: Int

        public var reasons: [[String: Any]]?

        public var bagStateMapper: BagStateMapper1

        public var updatedAt: String

        public var bshId: Int

        public var status: String

        public enum CodingKeys: String, CodingKey {
            case bagId = "bag_id"

            case createdAt = "created_at"

            case deliveryAwbNumber = "delivery_awb_number"

            case storeId = "store_id"

            case shipmentId = "shipment_id"

            case stateType = "state_type"

            case deliveryPartnerId = "delivery_partner_id"

            case kafkaSync = "kafka_sync"

            case stateId = "state_id"

            case reasons

            case bagStateMapper = "bag_state_mapper"

            case updatedAt = "updated_at"

            case bshId = "bsh_id"

            case status
        }

        public init(bagId: Int, bagStateMapper: BagStateMapper1, bshId: Int, createdAt: String, deliveryAwbNumber: String? = nil, deliveryPartnerId: Int? = nil, kafkaSync: Bool? = nil, reasons: [[String: Any]]? = nil, shipmentId: String, stateId: Int, stateType: String, status: String, storeId: Int, updatedAt: String) {
            self.bagId = bagId

            self.createdAt = createdAt

            self.deliveryAwbNumber = deliveryAwbNumber

            self.storeId = storeId

            self.shipmentId = shipmentId

            self.stateType = stateType

            self.deliveryPartnerId = deliveryPartnerId

            self.kafkaSync = kafkaSync

            self.stateId = stateId

            self.reasons = reasons

            self.bagStateMapper = bagStateMapper

            self.updatedAt = updatedAt

            self.bshId = bshId

            self.status = status
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            bagId = try container.decode(Int.self, forKey: .bagId)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                deliveryAwbNumber = try container.decode(String.self, forKey: .deliveryAwbNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeId = try container.decode(Int.self, forKey: .storeId)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            stateType = try container.decode(String.self, forKey: .stateType)

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

            stateId = try container.decode(Int.self, forKey: .stateId)

            do {
                reasons = try container.decode([[String: Any]].self, forKey: .reasons)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bagStateMapper = try container.decode(BagStateMapper1.self, forKey: .bagStateMapper)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            bshId = try container.decode(Int.self, forKey: .bshId)

            status = try container.decode(String.self, forKey: .status)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encode(deliveryAwbNumber, forKey: .deliveryAwbNumber)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(stateType, forKey: .stateType)

            try? container.encode(deliveryPartnerId, forKey: .deliveryPartnerId)

            try? container.encodeIfPresent(kafkaSync, forKey: .kafkaSync)

            try? container.encodeIfPresent(stateId, forKey: .stateId)

            try? container.encodeIfPresent(reasons, forKey: .reasons)

            try? container.encodeIfPresent(bagStateMapper, forKey: .bagStateMapper)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(bshId, forKey: .bshId)

            try? container.encodeIfPresent(status, forKey: .status)
        }
    }
}
