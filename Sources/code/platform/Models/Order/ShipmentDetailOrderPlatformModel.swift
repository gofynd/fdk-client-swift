

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ShipmentDetail
         Used By: Order
     */

    class ShipmentDetail: Codable {
        public var meta: Meta1

        public var remarks: String?

        public var shipmentId: String?

        public var status: String?

        public var bagList: [Int]?

        public var id: Int

        public enum CodingKeys: String, CodingKey {
            case meta

            case remarks

            case shipmentId = "shipment_id"

            case status

            case bagList = "bag_list"

            case id
        }

        public init(bagList: [Int]? = nil, id: Int, meta: Meta1, remarks: String? = nil, shipmentId: String? = nil, status: String? = nil) {
            self.meta = meta

            self.remarks = remarks

            self.shipmentId = shipmentId

            self.status = status

            self.bagList = bagList

            self.id = id
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            meta = try container.decode(Meta1.self, forKey: .meta)

            do {
                remarks = try container.decode(String.self, forKey: .remarks)

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
                bagList = try container.decode([Int].self, forKey: .bagList)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(Int.self, forKey: .id)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(remarks, forKey: .remarks)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(bagList, forKey: .bagList)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ShipmentDetail
         Used By: Order
     */

    class ShipmentDetail: Codable {
        public var meta: Meta1

        public var remarks: String?

        public var shipmentId: String?

        public var status: String?

        public var bagList: [Int]?

        public var id: Int

        public enum CodingKeys: String, CodingKey {
            case meta

            case remarks

            case shipmentId = "shipment_id"

            case status

            case bagList = "bag_list"

            case id
        }

        public init(bagList: [Int]? = nil, id: Int, meta: Meta1, remarks: String? = nil, shipmentId: String? = nil, status: String? = nil) {
            self.meta = meta

            self.remarks = remarks

            self.shipmentId = shipmentId

            self.status = status

            self.bagList = bagList

            self.id = id
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            meta = try container.decode(Meta1.self, forKey: .meta)

            do {
                remarks = try container.decode(String.self, forKey: .remarks)

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
                bagList = try container.decode([Int].self, forKey: .bagList)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(Int.self, forKey: .id)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(remarks, forKey: .remarks)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(bagList, forKey: .bagList)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }
}
