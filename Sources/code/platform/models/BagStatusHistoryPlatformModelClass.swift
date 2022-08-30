

import Foundation
public extension PlatformClient {
    /*
         Model: BagStatusHistory
         Used By: Order
     */

    class BagStatusHistory: Codable {
        public var bagId: Int

        public var bshId: Int

        public var updatedAt: String

        public var deliveryAwbNumber: String?

        public var status: String

        public var deliveryPartnerId: Int?

        public var stateType: String

        public var shipmentId: String

        public var reasons: [[String: Any]]?

        public var storeId: Int

        public var kafkaSync: Bool?

        public var createdAt: String

        public var stateId: Int

        public var bagStateMapper: BagStateMapper1

        public enum CodingKeys: String, CodingKey {
            case bagId = "bag_id"

            case bshId = "bsh_id"

            case updatedAt = "updated_at"

            case deliveryAwbNumber = "delivery_awb_number"

            case status

            case deliveryPartnerId = "delivery_partner_id"

            case stateType = "state_type"

            case shipmentId = "shipment_id"

            case reasons

            case storeId = "store_id"

            case kafkaSync = "kafka_sync"

            case createdAt = "created_at"

            case stateId = "state_id"

            case bagStateMapper = "bag_state_mapper"
        }

        public init(bagId: Int, bagStateMapper: BagStateMapper1, bshId: Int, createdAt: String, deliveryAwbNumber: String? = nil, deliveryPartnerId: Int? = nil, kafkaSync: Bool? = nil, reasons: [[String: Any]]? = nil, shipmentId: String, stateId: Int, stateType: String, status: String, storeId: Int, updatedAt: String) {
            self.bagId = bagId

            self.bshId = bshId

            self.updatedAt = updatedAt

            self.deliveryAwbNumber = deliveryAwbNumber

            self.status = status

            self.deliveryPartnerId = deliveryPartnerId

            self.stateType = stateType

            self.shipmentId = shipmentId

            self.reasons = reasons

            self.storeId = storeId

            self.kafkaSync = kafkaSync

            self.createdAt = createdAt

            self.stateId = stateId

            self.bagStateMapper = bagStateMapper
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            bagId = try container.decode(Int.self, forKey: .bagId)

            bshId = try container.decode(Int.self, forKey: .bshId)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            do {
                deliveryAwbNumber = try container.decode(String.self, forKey: .deliveryAwbNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode(String.self, forKey: .status)

            do {
                deliveryPartnerId = try container.decode(Int.self, forKey: .deliveryPartnerId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            stateType = try container.decode(String.self, forKey: .stateType)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            do {
                reasons = try container.decode([[String: Any]].self, forKey: .reasons)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeId = try container.decode(Int.self, forKey: .storeId)

            do {
                kafkaSync = try container.decode(Bool.self, forKey: .kafkaSync)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdAt = try container.decode(String.self, forKey: .createdAt)

            stateId = try container.decode(Int.self, forKey: .stateId)

            bagStateMapper = try container.decode(BagStateMapper1.self, forKey: .bagStateMapper)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(bshId, forKey: .bshId)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encode(deliveryAwbNumber, forKey: .deliveryAwbNumber)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encode(deliveryPartnerId, forKey: .deliveryPartnerId)

            try? container.encodeIfPresent(stateType, forKey: .stateType)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(reasons, forKey: .reasons)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(kafkaSync, forKey: .kafkaSync)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(stateId, forKey: .stateId)

            try? container.encodeIfPresent(bagStateMapper, forKey: .bagStateMapper)
        }
    }
}
