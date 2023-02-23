

import Foundation
public extension PlatformClient {
    /*
         Model: CurrentStatus
         Used By: Order
     */

    class CurrentStatus: Codable {
        public var bagStateMapper: BagStateMapper?

        public var bagId: Int?

        public var currentStatusId: Int

        public var kafkaSync: Bool?

        public var createdAt: String?

        public var storeId: Int?

        public var stateId: Int?

        public var deliveryAwbNumber: String?

        public var status: String?

        public var shipmentId: String?

        public var updatedAt: Int?

        public var stateType: String?

        public var deliveryPartnerId: Int?

        public enum CodingKeys: String, CodingKey {
            case bagStateMapper = "bag_state_mapper"

            case bagId = "bag_id"

            case currentStatusId = "current_status_id"

            case kafkaSync = "kafka_sync"

            case createdAt = "created_at"

            case storeId = "store_id"

            case stateId = "state_id"

            case deliveryAwbNumber = "delivery_awb_number"

            case status

            case shipmentId = "shipment_id"

            case updatedAt = "updated_at"

            case stateType = "state_type"

            case deliveryPartnerId = "delivery_partner_id"
        }

        public init(bagId: Int? = nil, bagStateMapper: BagStateMapper? = nil, createdAt: String? = nil, currentStatusId: Int, deliveryAwbNumber: String? = nil, deliveryPartnerId: Int? = nil, kafkaSync: Bool? = nil, shipmentId: String? = nil, stateId: Int? = nil, stateType: String? = nil, status: String? = nil, storeId: Int? = nil, updatedAt: Int? = nil) {
            self.bagStateMapper = bagStateMapper

            self.bagId = bagId

            self.currentStatusId = currentStatusId

            self.kafkaSync = kafkaSync

            self.createdAt = createdAt

            self.storeId = storeId

            self.stateId = stateId

            self.deliveryAwbNumber = deliveryAwbNumber

            self.status = status

            self.shipmentId = shipmentId

            self.updatedAt = updatedAt

            self.stateType = stateType

            self.deliveryPartnerId = deliveryPartnerId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                bagStateMapper = try container.decode(BagStateMapper.self, forKey: .bagStateMapper)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bagId = try container.decode(Int.self, forKey: .bagId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currentStatusId = try container.decode(Int.self, forKey: .currentStatusId)

            do {
                kafkaSync = try container.decode(Bool.self, forKey: .kafkaSync)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdAt = try container.decode(String.self, forKey: .createdAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeId = try container.decode(Int.self, forKey: .storeId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                stateId = try container.decode(Int.self, forKey: .stateId)

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

            do {
                status = try container.decode(String.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shipmentId = try container.decode(String.self, forKey: .shipmentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                updatedAt = try container.decode(Int.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                stateType = try container.decode(String.self, forKey: .stateType)

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

            try? container.encodeIfPresent(bagStateMapper, forKey: .bagStateMapper)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(currentStatusId, forKey: .currentStatusId)

            try? container.encodeIfPresent(kafkaSync, forKey: .kafkaSync)

            try? container.encode(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(stateId, forKey: .stateId)

            try? container.encodeIfPresent(deliveryAwbNumber, forKey: .deliveryAwbNumber)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(stateType, forKey: .stateType)

            try? container.encodeIfPresent(deliveryPartnerId, forKey: .deliveryPartnerId)
        }
    }
}
