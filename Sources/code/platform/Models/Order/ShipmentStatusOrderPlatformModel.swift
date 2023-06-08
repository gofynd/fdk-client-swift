

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ShipmentStatus
         Used By: Order
     */

    class ShipmentStatus: Codable {
        public var statusCreatedAt: String?

        public var shipmentStatusId: Int?

        public var meta: [String: Any]?

        public var title: String

        public var bagList: [String]?

        public var shipmentId: String?

        public var createdAt: String?

        public var status: String

        public var currentShipmentStatus: String?

        public enum CodingKeys: String, CodingKey {
            case statusCreatedAt = "status_created_at"

            case shipmentStatusId = "shipment_status_id"

            case meta

            case title

            case bagList = "bag_list"

            case shipmentId = "shipment_id"

            case createdAt = "created_at"

            case status

            case currentShipmentStatus = "current_shipment_status"
        }

        public init(bagList: [String]? = nil, createdAt: String? = nil, currentShipmentStatus: String? = nil, meta: [String: Any]? = nil, shipmentId: String? = nil, shipmentStatusId: Int? = nil, status: String, statusCreatedAt: String? = nil, title: String) {
            self.statusCreatedAt = statusCreatedAt

            self.shipmentStatusId = shipmentStatusId

            self.meta = meta

            self.title = title

            self.bagList = bagList

            self.shipmentId = shipmentId

            self.createdAt = createdAt

            self.status = status

            self.currentShipmentStatus = currentShipmentStatus
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                statusCreatedAt = try container.decode(String.self, forKey: .statusCreatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shipmentStatusId = try container.decode(Int.self, forKey: .shipmentStatusId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            title = try container.decode(String.self, forKey: .title)

            do {
                bagList = try container.decode([String].self, forKey: .bagList)

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
                createdAt = try container.decode(String.self, forKey: .createdAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode(String.self, forKey: .status)

            do {
                currentShipmentStatus = try container.decode(String.self, forKey: .currentShipmentStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(statusCreatedAt, forKey: .statusCreatedAt)

            try? container.encodeIfPresent(shipmentStatusId, forKey: .shipmentStatusId)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(bagList, forKey: .bagList)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(currentShipmentStatus, forKey: .currentShipmentStatus)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ShipmentStatus
         Used By: Order
     */

    class ShipmentStatus: Codable {
        public var statusCreatedAt: String?

        public var shipmentStatusId: Int?

        public var meta: [String: Any]?

        public var title: String

        public var bagList: [String]?

        public var shipmentId: String?

        public var createdAt: String?

        public var status: String

        public var currentShipmentStatus: String?

        public enum CodingKeys: String, CodingKey {
            case statusCreatedAt = "status_created_at"

            case shipmentStatusId = "shipment_status_id"

            case meta

            case title

            case bagList = "bag_list"

            case shipmentId = "shipment_id"

            case createdAt = "created_at"

            case status

            case currentShipmentStatus = "current_shipment_status"
        }

        public init(bagList: [String]? = nil, createdAt: String? = nil, currentShipmentStatus: String? = nil, meta: [String: Any]? = nil, shipmentId: String? = nil, shipmentStatusId: Int? = nil, status: String, statusCreatedAt: String? = nil, title: String) {
            self.statusCreatedAt = statusCreatedAt

            self.shipmentStatusId = shipmentStatusId

            self.meta = meta

            self.title = title

            self.bagList = bagList

            self.shipmentId = shipmentId

            self.createdAt = createdAt

            self.status = status

            self.currentShipmentStatus = currentShipmentStatus
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                statusCreatedAt = try container.decode(String.self, forKey: .statusCreatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shipmentStatusId = try container.decode(Int.self, forKey: .shipmentStatusId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            title = try container.decode(String.self, forKey: .title)

            do {
                bagList = try container.decode([String].self, forKey: .bagList)

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
                createdAt = try container.decode(String.self, forKey: .createdAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode(String.self, forKey: .status)

            do {
                currentShipmentStatus = try container.decode(String.self, forKey: .currentShipmentStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(statusCreatedAt, forKey: .statusCreatedAt)

            try? container.encodeIfPresent(shipmentStatusId, forKey: .shipmentStatusId)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(bagList, forKey: .bagList)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(currentShipmentStatus, forKey: .currentShipmentStatus)
        }
    }
}
