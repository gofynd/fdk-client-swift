

import Foundation
public extension PlatformClient {
    /*
         Model: UpdateCartShipmentItem
         Used By: Cart
     */

    class UpdateCartShipmentItem: Codable {
        public var articleUid: String

        public var quantity: Int?

        public var shipmentType: String

        public enum CodingKeys: String, CodingKey {
            case articleUid = "article_uid"

            case quantity

            case shipmentType = "shipment_type"
        }

        public init(articleUid: String, quantity: Int? = nil, shipmentType: String) {
            self.articleUid = articleUid

            self.quantity = quantity

            self.shipmentType = shipmentType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            articleUid = try container.decode(String.self, forKey: .articleUid)

            do {
                quantity = try container.decode(Int.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentType = try container.decode(String.self, forKey: .shipmentType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(articleUid, forKey: .articleUid)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(shipmentType, forKey: .shipmentType)
        }
    }
}
