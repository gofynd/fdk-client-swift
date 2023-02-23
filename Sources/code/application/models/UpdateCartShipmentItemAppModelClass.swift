

import Foundation
public extension ApplicationClient {
    /*
         Model: UpdateCartShipmentItem
         Used By: PosCart
     */
    class UpdateCartShipmentItem: Codable {
        public var quantity: Int?

        public var articleUid: String

        public var shipmentType: String

        public enum CodingKeys: String, CodingKey {
            case quantity

            case articleUid = "article_uid"

            case shipmentType = "shipment_type"
        }

        public init(articleUid: String, quantity: Int? = nil, shipmentType: String) {
            self.quantity = quantity

            self.articleUid = articleUid

            self.shipmentType = shipmentType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                quantity = try container.decode(Int.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            articleUid = try container.decode(String.self, forKey: .articleUid)

            shipmentType = try container.decode(String.self, forKey: .shipmentType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(articleUid, forKey: .articleUid)

            try? container.encodeIfPresent(shipmentType, forKey: .shipmentType)
        }
    }
}
