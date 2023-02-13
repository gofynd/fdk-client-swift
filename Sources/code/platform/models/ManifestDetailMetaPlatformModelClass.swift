

import Foundation
public extension PlatformClient {
    /*
         Model: ManifestDetailMeta
         Used By: Orders
     */

    class ManifestDetailMeta: Codable {
        public var totalShipmentPricesCount: ManifestDetailTotalShipmentPricesCount?

        public var filters: ManifestFilter?

        public enum CodingKeys: String, CodingKey {
            case totalShipmentPricesCount = "total_shipment_prices_count"

            case filters
        }

        public init(filters: ManifestFilter? = nil, totalShipmentPricesCount: ManifestDetailTotalShipmentPricesCount? = nil) {
            self.totalShipmentPricesCount = totalShipmentPricesCount

            self.filters = filters
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                totalShipmentPricesCount = try container.decode(ManifestDetailTotalShipmentPricesCount.self, forKey: .totalShipmentPricesCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                filters = try container.decode(ManifestFilter.self, forKey: .filters)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(totalShipmentPricesCount, forKey: .totalShipmentPricesCount)

            try? container.encodeIfPresent(filters, forKey: .filters)
        }
    }
}
