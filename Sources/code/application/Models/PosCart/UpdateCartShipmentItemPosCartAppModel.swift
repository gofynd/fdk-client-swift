

import Foundation
public extension ApplicationClient.PosCart {
    /*
         Model: UpdateCartShipmentItem
         Used By: PosCart
     */
    class UpdateCartShipmentItem: Codable {
        public var shipmentType: String

        public var quantity: Int?

        public var articleUid: String

        public enum CodingKeys: String, CodingKey {
            case shipmentType = "shipment_type"

            case quantity

            case articleUid = "article_uid"
        }

        public init(articleUid: String, quantity: Int? = nil, shipmentType: String) {
            self.shipmentType = shipmentType

            self.quantity = quantity

            self.articleUid = articleUid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            shipmentType = try container.decode(String.self, forKey: .shipmentType)

            do {
                quantity = try container.decode(Int.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            articleUid = try container.decode(String.self, forKey: .articleUid)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shipmentType, forKey: .shipmentType)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(articleUid, forKey: .articleUid)
        }
    }
}
