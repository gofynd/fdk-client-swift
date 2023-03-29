

import Foundation
public extension ApplicationClient {
    /*
         Model: UpdateCartShipmentItem
         Used By: PosCart
     */
    class UpdateCartShipmentItem: Codable {
        public var quantity: Int?

        public var shipmentType: String

        public var articleUid: String

        public enum CodingKeys: String, CodingKey {
            case quantity

            case shipmentType = "shipment_type"

            case articleUid = "article_uid"
        }

        public init(articleUid: String, quantity: Int? = nil, shipmentType: String) {
            self.quantity = quantity

            self.shipmentType = shipmentType

            self.articleUid = articleUid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                quantity = try container.decode(Int.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentType = try container.decode(String.self, forKey: .shipmentType)

            articleUid = try container.decode(String.self, forKey: .articleUid)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(shipmentType, forKey: .shipmentType)

            try? container.encodeIfPresent(articleUid, forKey: .articleUid)
        }
    }
}
