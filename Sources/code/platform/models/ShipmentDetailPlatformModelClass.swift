

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentDetail
         Used By: Order
     */

    class ShipmentDetail: Codable {
        public var status: String?

        public var id: Int

        public var remarks: String?

        public var bagList: [Int]?

        public var meta: Meta

        public var shipmentId: String?

        public enum CodingKeys: String, CodingKey {
            case status

            case id

            case remarks

            case bagList = "bag_list"

            case meta

            case shipmentId = "shipment_id"
        }

        public init(bagList: [Int]? = nil, id: Int, meta: Meta, remarks: String? = nil, shipmentId: String? = nil, status: String? = nil) {
            self.status = status

            self.id = id

            self.remarks = remarks

            self.bagList = bagList

            self.meta = meta

            self.shipmentId = shipmentId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                status = try container.decode(String.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(Int.self, forKey: .id)

            do {
                remarks = try container.decode(String.self, forKey: .remarks)

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

            meta = try container.decode(Meta.self, forKey: .meta)

            do {
                shipmentId = try container.decode(String.self, forKey: .shipmentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(remarks, forKey: .remarks)

            try? container.encodeIfPresent(bagList, forKey: .bagList)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
        }
    }
}
