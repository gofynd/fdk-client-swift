

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ShipmentStatusData
         Used By: Order
     */

    class ShipmentStatusData: Codable {
        public var shipmentId: String?

        public var bagList: [String]?

        public var id: Int?

        public var status: String?

        public var createdAt: String?

        public enum CodingKeys: String, CodingKey {
            case shipmentId = "shipment_id"

            case bagList = "bag_list"

            case id

            case status

            case createdAt = "created_at"
        }

        public init(bagList: [String]? = nil, createdAt: String? = nil, id: Int? = nil, shipmentId: String? = nil, status: String? = nil) {
            self.shipmentId = shipmentId

            self.bagList = bagList

            self.id = id

            self.status = status

            self.createdAt = createdAt
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                shipmentId = try container.decode(String.self, forKey: .shipmentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bagList = try container.decode([String].self, forKey: .bagList)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(bagList, forKey: .bagList)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encode(createdAt, forKey: .createdAt)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ShipmentStatusData
         Used By: Order
     */

    class ShipmentStatusData: Codable {
        public var shipmentId: String?

        public var bagList: [String]?

        public var id: Int?

        public var status: String?

        public var createdAt: String?

        public enum CodingKeys: String, CodingKey {
            case shipmentId = "shipment_id"

            case bagList = "bag_list"

            case id

            case status

            case createdAt = "created_at"
        }

        public init(bagList: [String]? = nil, createdAt: String? = nil, id: Int? = nil, shipmentId: String? = nil, status: String? = nil) {
            self.shipmentId = shipmentId

            self.bagList = bagList

            self.id = id

            self.status = status

            self.createdAt = createdAt
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                shipmentId = try container.decode(String.self, forKey: .shipmentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bagList = try container.decode([String].self, forKey: .bagList)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(bagList, forKey: .bagList)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encode(createdAt, forKey: .createdAt)
        }
    }
}
