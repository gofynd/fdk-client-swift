

import Foundation

public extension PlatformClient.Order {
    /*
         Model: BagCurrentStatus
         Used By: Order
     */

    class BagCurrentStatus: Codable {
        public var stateType: String?

        public var deliveryPartnerId: Int?

        public var bagId: Int?

        public var deliveryAwbNumber: String?

        public var updatedAt: String?

        public var bagStateMapper: BagStateMapper?

        public var kafkaSync: Bool?

        public var shipmentId: String?

        public var status: String?

        public var createdAt: String?

        public var storeId: Int?

        public var stateId: Int?

        public var id: Int?

        public enum CodingKeys: String, CodingKey {
            case stateType = "state_type"

            case deliveryPartnerId = "delivery_partner_id"

            case bagId = "bag_id"

            case deliveryAwbNumber = "delivery_awb_number"

            case updatedAt = "updated_at"

            case bagStateMapper = "bag_state_mapper"

            case kafkaSync = "kafka_sync"

            case shipmentId = "shipment_id"

            case status

            case createdAt = "created_at"

            case storeId = "store_id"

            case stateId = "state_id"

            case id
        }

        public init(bagId: Int? = nil, bagStateMapper: BagStateMapper? = nil, createdAt: String? = nil, deliveryAwbNumber: String? = nil, deliveryPartnerId: Int? = nil, id: Int? = nil, kafkaSync: Bool? = nil, shipmentId: String? = nil, stateId: Int? = nil, stateType: String? = nil, status: String? = nil, storeId: Int? = nil, updatedAt: String? = nil) {
            self.stateType = stateType

            self.deliveryPartnerId = deliveryPartnerId

            self.bagId = bagId

            self.deliveryAwbNumber = deliveryAwbNumber

            self.updatedAt = updatedAt

            self.bagStateMapper = bagStateMapper

            self.kafkaSync = kafkaSync

            self.shipmentId = shipmentId

            self.status = status

            self.createdAt = createdAt

            self.storeId = storeId

            self.stateId = stateId

            self.id = id
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            do {
                bagId = try container.decode(Int.self, forKey: .bagId)

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
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bagStateMapper = try container.decode(BagStateMapper.self, forKey: .bagStateMapper)

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
                shipmentId = try container.decode(String.self, forKey: .shipmentId)

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
                id = try container.decode(Int.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(stateType, forKey: .stateType)

            try? container.encodeIfPresent(deliveryPartnerId, forKey: .deliveryPartnerId)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(deliveryAwbNumber, forKey: .deliveryAwbNumber)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(bagStateMapper, forKey: .bagStateMapper)

            try? container.encodeIfPresent(kafkaSync, forKey: .kafkaSync)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(stateId, forKey: .stateId)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: BagCurrentStatus
         Used By: Order
     */

    class BagCurrentStatus: Codable {
        public var stateType: String?

        public var deliveryPartnerId: Int?

        public var bagId: Int?

        public var deliveryAwbNumber: String?

        public var updatedAt: String?

        public var bagStateMapper: BagStateMapper?

        public var kafkaSync: Bool?

        public var shipmentId: String?

        public var status: String?

        public var createdAt: String?

        public var storeId: Int?

        public var stateId: Int?

        public var id: Int?

        public enum CodingKeys: String, CodingKey {
            case stateType = "state_type"

            case deliveryPartnerId = "delivery_partner_id"

            case bagId = "bag_id"

            case deliveryAwbNumber = "delivery_awb_number"

            case updatedAt = "updated_at"

            case bagStateMapper = "bag_state_mapper"

            case kafkaSync = "kafka_sync"

            case shipmentId = "shipment_id"

            case status

            case createdAt = "created_at"

            case storeId = "store_id"

            case stateId = "state_id"

            case id
        }

        public init(bagId: Int? = nil, bagStateMapper: BagStateMapper? = nil, createdAt: String? = nil, deliveryAwbNumber: String? = nil, deliveryPartnerId: Int? = nil, id: Int? = nil, kafkaSync: Bool? = nil, shipmentId: String? = nil, stateId: Int? = nil, stateType: String? = nil, status: String? = nil, storeId: Int? = nil, updatedAt: String? = nil) {
            self.stateType = stateType

            self.deliveryPartnerId = deliveryPartnerId

            self.bagId = bagId

            self.deliveryAwbNumber = deliveryAwbNumber

            self.updatedAt = updatedAt

            self.bagStateMapper = bagStateMapper

            self.kafkaSync = kafkaSync

            self.shipmentId = shipmentId

            self.status = status

            self.createdAt = createdAt

            self.storeId = storeId

            self.stateId = stateId

            self.id = id
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            do {
                bagId = try container.decode(Int.self, forKey: .bagId)

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
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bagStateMapper = try container.decode(BagStateMapper.self, forKey: .bagStateMapper)

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
                shipmentId = try container.decode(String.self, forKey: .shipmentId)

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
                id = try container.decode(Int.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(stateType, forKey: .stateType)

            try? container.encodeIfPresent(deliveryPartnerId, forKey: .deliveryPartnerId)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(deliveryAwbNumber, forKey: .deliveryAwbNumber)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(bagStateMapper, forKey: .bagStateMapper)

            try? container.encodeIfPresent(kafkaSync, forKey: .kafkaSync)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(stateId, forKey: .stateId)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }
}
