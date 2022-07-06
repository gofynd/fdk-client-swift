

import Foundation
public extension ApplicationClient {
    /*
         Model: UpdateCartShipmentItem
         Used By: PosCart
     */
    class UpdateCartShipmentItem: Codable {
        public var articleUid: String

        public var shipmentType: String

        public var quantity: Int?

        public enum CodingKeys: String, CodingKey {
            case articleUid = "article_uid"

            case shipmentType = "shipment_type"

            case quantity
        }

        public init(articleUid: String, quantity: Int? = nil, shipmentType: String) {
            self.articleUid = articleUid

            self.shipmentType = shipmentType

            self.quantity = quantity
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            articleUid = try container.decode(String.self, forKey: .articleUid)

            shipmentType = try container.decode(String.self, forKey: .shipmentType)

            do {
                quantity = try container.decode(Int.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(articleUid, forKey: .articleUid)

            try? container.encodeIfPresent(shipmentType, forKey: .shipmentType)

            try? container.encodeIfPresent(quantity, forKey: .quantity)
        }
    }
}
