

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentDetail
         Used By: OrderManage
     */

    class ShipmentDetail: Codable {
        public var meta: Meta

        public var shipmentId: String?

        public var id: Int

        public var status: String?

        public var bagList: [Int]?

        public var remarks: String?

        public enum CodingKeys: String, CodingKey {
            case meta

            case shipmentId = "shipment_id"

            case id

            case status

            case bagList = "bag_list"

            case remarks
        }

        public init(bagList: [Int]? = nil, id: Int, meta: Meta, remarks: String? = nil, shipmentId: String? = nil, status: String? = nil) {
            self.meta = meta

            self.shipmentId = shipmentId

            self.id = id

            self.status = status

            self.bagList = bagList

            self.remarks = remarks
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            meta = try container.decode(Meta.self, forKey: .meta)

            do {
                shipmentId = try container.decode(String.self, forKey: .shipmentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(Int.self, forKey: .id)

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

            do {
                remarks = try container.decode(String.self, forKey: .remarks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(bagList, forKey: .bagList)

            try? container.encodeIfPresent(remarks, forKey: .remarks)
        }
    }
}
