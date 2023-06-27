

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ShipmentStatus
         Used By: Order
     */

    class ShipmentStatus: Codable {
        public var currentShipmentStatus: String?

        public var shipmentStatusId: Int?

        public var statusCreatedAt: String?

        public var bagList: [String]?

        public var createdAt: String?

        public var shipmentId: String?

        public var meta: [String: Any]?

        public var status: String

        public var title: String

        public enum CodingKeys: String, CodingKey {
            case currentShipmentStatus = "current_shipment_status"

            case shipmentStatusId = "shipment_status_id"

            case statusCreatedAt = "status_created_at"

            case bagList = "bag_list"

            case createdAt = "created_at"

            case shipmentId = "shipment_id"

            case meta

            case status

            case title
        }

        public init(bagList: [String]? = nil, createdAt: String? = nil, currentShipmentStatus: String? = nil, meta: [String: Any]? = nil, shipmentId: String? = nil, shipmentStatusId: Int? = nil, status: String, statusCreatedAt: String? = nil, title: String) {
            self.currentShipmentStatus = currentShipmentStatus

            self.shipmentStatusId = shipmentStatusId

            self.statusCreatedAt = statusCreatedAt

            self.bagList = bagList

            self.createdAt = createdAt

            self.shipmentId = shipmentId

            self.meta = meta

            self.status = status

            self.title = title
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                currentShipmentStatus = try container.decode(String.self, forKey: .currentShipmentStatus)

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
                statusCreatedAt = try container.decode(String.self, forKey: .statusCreatedAt)

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
                createdAt = try container.decode(String.self, forKey: .createdAt)

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
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode(String.self, forKey: .status)

            title = try container.decode(String.self, forKey: .title)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currentShipmentStatus, forKey: .currentShipmentStatus)

            try? container.encodeIfPresent(shipmentStatusId, forKey: .shipmentStatusId)

            try? container.encodeIfPresent(statusCreatedAt, forKey: .statusCreatedAt)

            try? container.encodeIfPresent(bagList, forKey: .bagList)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(title, forKey: .title)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ShipmentStatus
         Used By: Order
     */

    class ShipmentStatus: Codable {
        public var currentShipmentStatus: String?

        public var shipmentStatusId: Int?

        public var statusCreatedAt: String?

        public var bagList: [String]?

        public var createdAt: String?

        public var shipmentId: String?

        public var meta: [String: Any]?

        public var status: String

        public var title: String

        public enum CodingKeys: String, CodingKey {
            case currentShipmentStatus = "current_shipment_status"

            case shipmentStatusId = "shipment_status_id"

            case statusCreatedAt = "status_created_at"

            case bagList = "bag_list"

            case createdAt = "created_at"

            case shipmentId = "shipment_id"

            case meta

            case status

            case title
        }

        public init(bagList: [String]? = nil, createdAt: String? = nil, currentShipmentStatus: String? = nil, meta: [String: Any]? = nil, shipmentId: String? = nil, shipmentStatusId: Int? = nil, status: String, statusCreatedAt: String? = nil, title: String) {
            self.currentShipmentStatus = currentShipmentStatus

            self.shipmentStatusId = shipmentStatusId

            self.statusCreatedAt = statusCreatedAt

            self.bagList = bagList

            self.createdAt = createdAt

            self.shipmentId = shipmentId

            self.meta = meta

            self.status = status

            self.title = title
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                currentShipmentStatus = try container.decode(String.self, forKey: .currentShipmentStatus)

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
                statusCreatedAt = try container.decode(String.self, forKey: .statusCreatedAt)

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
                createdAt = try container.decode(String.self, forKey: .createdAt)

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
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode(String.self, forKey: .status)

            title = try container.decode(String.self, forKey: .title)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currentShipmentStatus, forKey: .currentShipmentStatus)

            try? container.encodeIfPresent(shipmentStatusId, forKey: .shipmentStatusId)

            try? container.encodeIfPresent(statusCreatedAt, forKey: .statusCreatedAt)

            try? container.encodeIfPresent(bagList, forKey: .bagList)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(title, forKey: .title)
        }
    }
}
