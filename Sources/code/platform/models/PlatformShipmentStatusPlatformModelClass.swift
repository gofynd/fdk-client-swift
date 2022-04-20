

import Foundation
public extension PlatformClient {
    /*
         Model: PlatformShipmentStatus
         Used By: Order
     */

    class PlatformShipmentStatus: Codable {
        public var id: Int?

        public var bagList: [Int]?

        public var createdAt: String?

        public var status: String?

        public var name: String?

        public var progress: Int?

        public var shipmentId: String?

        public var currentShipmentStatus: String?

        public var colorCode: String?

        public enum CodingKeys: String, CodingKey {
            case id

            case bagList = "bag_list"

            case createdAt = "created_at"

            case status

            case name

            case progress

            case shipmentId = "shipment_id"

            case currentShipmentStatus = "current_shipment_status"

            case colorCode = "color_code"
        }

        public init(bagList: [Int]? = nil, colorCode: String? = nil, createdAt: String? = nil, currentShipmentStatus: String? = nil, id: Int? = nil, name: String? = nil, progress: Int? = nil, shipmentId: String? = nil, status: String? = nil) {
            self.id = id

            self.bagList = bagList

            self.createdAt = createdAt

            self.status = status

            self.name = name

            self.progress = progress

            self.shipmentId = shipmentId

            self.currentShipmentStatus = currentShipmentStatus

            self.colorCode = colorCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                id = try container.decode(Int.self, forKey: .id)

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
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                progress = try container.decode(Int.self, forKey: .progress)

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
                currentShipmentStatus = try container.decode(String.self, forKey: .currentShipmentStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                colorCode = try container.decode(String.self, forKey: .colorCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(bagList, forKey: .bagList)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(progress, forKey: .progress)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(currentShipmentStatus, forKey: .currentShipmentStatus)

            try? container.encodeIfPresent(colorCode, forKey: .colorCode)
        }
    }
}
