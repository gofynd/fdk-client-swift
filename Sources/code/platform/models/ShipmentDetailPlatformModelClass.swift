

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentDetail
         Used By: Order
     */

    class ShipmentDetail: Codable {
        public var remarks: String?

        public var shipmentId: String?

        public var id: Int

        public var bagList: [Int]?

        public var status: String?

        public var meta: Meta

        public enum CodingKeys: String, CodingKey {
            case remarks

            case shipmentId = "shipment_id"

            case id

            case bagList = "bag_list"

            case status

            case meta
        }

        public init(bagList: [Int]? = nil, id: Int, meta: Meta, remarks: String? = nil, shipmentId: String? = nil, status: String? = nil) {
            self.remarks = remarks

            self.shipmentId = shipmentId

            self.id = id

            self.bagList = bagList

            self.status = status

            self.meta = meta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            id = try container.decode(Int.self, forKey: .id)

            do {
                bagList = try container.decode([Int].self, forKey: .bagList)

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

            meta = try container.decode(Meta.self, forKey: .meta)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(remarks, forKey: .remarks)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(bagList, forKey: .bagList)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(meta, forKey: .meta)
        }
    }
}
