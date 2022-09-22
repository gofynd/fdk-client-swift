

import Foundation
public extension PlatformClient {
    /*
         Model: BagStatusHistory
         Used By: Order
     */

    class BagStatusHistory: Codable {
        public var deliveryPartnerId: Int?

        public var bshId: Int

        public var stateType: String

        public var bagStateMapper: BagStateMapper1

        public var storeId: Int

        public var deliveryAwbNumber: String?

        public var bagId: Int

        public var status: String

        public var createdAt: String

        public var stateId: Int

        public var shipmentId: String

        public var updatedAt: String

        public var kafkaSync: Bool?

        public var reasons: [[String: Any]]?

        public enum CodingKeys: String, CodingKey {
            case deliveryPartnerId = "delivery_partner_id"

            case bshId = "bsh_id"

            case stateType = "state_type"

            case bagStateMapper = "bag_state_mapper"

            case storeId = "store_id"

            case deliveryAwbNumber = "delivery_awb_number"

            case bagId = "bag_id"

            case status

            case createdAt = "created_at"

            case stateId = "state_id"

            case shipmentId = "shipment_id"

            case updatedAt = "updated_at"

            case kafkaSync = "kafka_sync"

            case reasons
        }

        public init(bagId: Int, bagStateMapper: BagStateMapper1, bshId: Int, createdAt: String, deliveryAwbNumber: String? = nil, deliveryPartnerId: Int? = nil, kafkaSync: Bool? = nil, reasons: [[String: Any]]? = nil, shipmentId: String, stateId: Int, stateType: String, status: String, storeId: Int, updatedAt: String) {
            self.deliveryPartnerId = deliveryPartnerId

            self.bshId = bshId

            self.stateType = stateType

            self.bagStateMapper = bagStateMapper

            self.storeId = storeId

            self.deliveryAwbNumber = deliveryAwbNumber

            self.bagId = bagId

            self.status = status

            self.createdAt = createdAt

            self.stateId = stateId

            self.shipmentId = shipmentId

            self.updatedAt = updatedAt

            self.kafkaSync = kafkaSync

            self.reasons = reasons
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                deliveryPartnerId = try container.decode(Int.self, forKey: .deliveryPartnerId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bshId = try container.decode(Int.self, forKey: .bshId)

            stateType = try container.decode(String.self, forKey: .stateType)

            bagStateMapper = try container.decode(BagStateMapper1.self, forKey: .bagStateMapper)

            storeId = try container.decode(Int.self, forKey: .storeId)

            do {
                deliveryAwbNumber = try container.decode(String.self, forKey: .deliveryAwbNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bagId = try container.decode(Int.self, forKey: .bagId)

            status = try container.decode(String.self, forKey: .status)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            stateId = try container.decode(Int.self, forKey: .stateId)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(deliveryPartnerId, forKey: .deliveryPartnerId)

            try? container.encodeIfPresent(bshId, forKey: .bshId)

            try? container.encodeIfPresent(stateType, forKey: .stateType)

            try? container.encodeIfPresent(bagStateMapper, forKey: .bagStateMapper)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encode(deliveryAwbNumber, forKey: .deliveryAwbNumber)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(stateId, forKey: .stateId)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(kafkaSync, forKey: .kafkaSync)

            try? container.encodeIfPresent(reasons, forKey: .reasons)
        }
    }
}
