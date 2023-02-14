

import Foundation
public extension PlatformClient {
    /*
         Model: ManifestDetailTotalShipmentPricesCount
         Used By: Order
     */

    class ManifestDetailTotalShipmentPricesCount: Codable {
        public var shipmentCount: Int?

        public var totalPrice: Double?

        public enum CodingKeys: String, CodingKey {
            case shipmentCount = "shipment_count"

            case totalPrice = "total_price"
        }

        public init(shipmentCount: Int? = nil, totalPrice: Double? = nil) {
            self.shipmentCount = shipmentCount

            self.totalPrice = totalPrice
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                shipmentCount = try container.decode(Int.self, forKey: .shipmentCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                totalPrice = try container.decode(Double.self, forKey: .totalPrice)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shipmentCount, forKey: .shipmentCount)

            try? container.encodeIfPresent(totalPrice, forKey: .totalPrice)
        }
    }
}
