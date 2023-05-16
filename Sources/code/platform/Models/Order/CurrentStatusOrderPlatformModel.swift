

import Foundation

public extension PlatformClient.Order {
    /*
         Model: CurrentStatus
         Used By: Order
     */

    class CurrentStatus: Codable {
        public var createdAt: String?

        public var status: String?

        public var bagStateMapper: BagStateMapper?

        public var currentStatusId: Int

        public var deliveryPartnerId: Int?

        public var stateType: String?

        public var storeId: Int?

        public var stateId: Int?

        public var updatedAt: String?

        public var bagId: Int?

        public var shipmentId: String?

        public var kafkaSync: Bool?

        public var deliveryAwbNumber: String?

        public enum CodingKeys: String, CodingKey {
            case createdAt = "created_at"

            case status

            case bagStateMapper = "bag_state_mapper"

            case currentStatusId = "current_status_id"

            case deliveryPartnerId = "delivery_partner_id"

            case stateType = "state_type"

            case storeId = "store_id"

            case stateId = "state_id"

            case updatedAt = "updated_at"

            case bagId = "bag_id"

            case shipmentId = "shipment_id"

            case kafkaSync = "kafka_sync"

            case deliveryAwbNumber = "delivery_awb_number"
        }

        public init(bagId: Int? = nil, bagStateMapper: BagStateMapper? = nil, createdAt: String? = nil, currentStatusId: Int, deliveryAwbNumber: String? = nil, deliveryPartnerId: Int? = nil, kafkaSync: Bool? = nil, shipmentId: String? = nil, stateId: Int? = nil, stateType: String? = nil, status: String? = nil, storeId: Int? = nil, updatedAt: String? = nil) {
            self.createdAt = createdAt

            self.status = status

            self.bagStateMapper = bagStateMapper

            self.currentStatusId = currentStatusId

            self.deliveryPartnerId = deliveryPartnerId

            self.stateType = stateType

            self.storeId = storeId

            self.stateId = stateId

            self.updatedAt = updatedAt

            self.bagId = bagId

            self.shipmentId = shipmentId

            self.kafkaSync = kafkaSync

            self.deliveryAwbNumber = deliveryAwbNumber
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                createdAt = try container.decode(String.self, forKey: .createdAt)

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
                bagStateMapper = try container.decode(BagStateMapper.self, forKey: .bagStateMapper)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currentStatusId = try container.decode(Int.self, forKey: .currentStatusId)

            do {
                deliveryPartnerId = try container.decode(Int.self, forKey: .deliveryPartnerId)

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
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

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
                shipmentId = try container.decode(String.self, forKey: .shipmentId)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(bagStateMapper, forKey: .bagStateMapper)

            try? container.encodeIfPresent(currentStatusId, forKey: .currentStatusId)

            try? container.encodeIfPresent(deliveryPartnerId, forKey: .deliveryPartnerId)

            try? container.encodeIfPresent(stateType, forKey: .stateType)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(stateId, forKey: .stateId)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(kafkaSync, forKey: .kafkaSync)

            try? container.encodeIfPresent(deliveryAwbNumber, forKey: .deliveryAwbNumber)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: CurrentStatus
         Used By: Order
     */

    class CurrentStatus: Codable {
        public var createdAt: String?

        public var status: String?

        public var bagStateMapper: BagStateMapper?

        public var currentStatusId: Int

        public var deliveryPartnerId: Int?

        public var stateType: String?

        public var storeId: Int?

        public var stateId: Int?

        public var updatedAt: String?

        public var bagId: Int?

        public var shipmentId: String?

        public var kafkaSync: Bool?

        public var deliveryAwbNumber: String?

        public enum CodingKeys: String, CodingKey {
            case createdAt = "created_at"

            case status

            case bagStateMapper = "bag_state_mapper"

            case currentStatusId = "current_status_id"

            case deliveryPartnerId = "delivery_partner_id"

            case stateType = "state_type"

            case storeId = "store_id"

            case stateId = "state_id"

            case updatedAt = "updated_at"

            case bagId = "bag_id"

            case shipmentId = "shipment_id"

            case kafkaSync = "kafka_sync"

            case deliveryAwbNumber = "delivery_awb_number"
        }

        public init(bagId: Int? = nil, bagStateMapper: BagStateMapper? = nil, createdAt: String? = nil, currentStatusId: Int, deliveryAwbNumber: String? = nil, deliveryPartnerId: Int? = nil, kafkaSync: Bool? = nil, shipmentId: String? = nil, stateId: Int? = nil, stateType: String? = nil, status: String? = nil, storeId: Int? = nil, updatedAt: String? = nil) {
            self.createdAt = createdAt

            self.status = status

            self.bagStateMapper = bagStateMapper

            self.currentStatusId = currentStatusId

            self.deliveryPartnerId = deliveryPartnerId

            self.stateType = stateType

            self.storeId = storeId

            self.stateId = stateId

            self.updatedAt = updatedAt

            self.bagId = bagId

            self.shipmentId = shipmentId

            self.kafkaSync = kafkaSync

            self.deliveryAwbNumber = deliveryAwbNumber
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                createdAt = try container.decode(String.self, forKey: .createdAt)

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
                bagStateMapper = try container.decode(BagStateMapper.self, forKey: .bagStateMapper)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currentStatusId = try container.decode(Int.self, forKey: .currentStatusId)

            do {
                deliveryPartnerId = try container.decode(Int.self, forKey: .deliveryPartnerId)

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
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

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
                shipmentId = try container.decode(String.self, forKey: .shipmentId)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(bagStateMapper, forKey: .bagStateMapper)

            try? container.encodeIfPresent(currentStatusId, forKey: .currentStatusId)

            try? container.encodeIfPresent(deliveryPartnerId, forKey: .deliveryPartnerId)

            try? container.encodeIfPresent(stateType, forKey: .stateType)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(stateId, forKey: .stateId)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(kafkaSync, forKey: .kafkaSync)

            try? container.encodeIfPresent(deliveryAwbNumber, forKey: .deliveryAwbNumber)
        }
    }
}
