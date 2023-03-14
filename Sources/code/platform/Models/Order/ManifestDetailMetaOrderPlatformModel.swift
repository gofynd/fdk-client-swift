

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ManifestDetailMeta
         Used By: Order
     */

    class ManifestDetailMeta: Codable {
        public var filters: ManifestFilter?

        public var totalShipmentPricesCount: ManifestDetailTotalShipmentPricesCount?

        public enum CodingKeys: String, CodingKey {
            case filters

            case totalShipmentPricesCount = "total_shipment_prices_count"
        }

        public init(filters: ManifestFilter? = nil, totalShipmentPricesCount: ManifestDetailTotalShipmentPricesCount? = nil) {
            self.filters = filters

            self.totalShipmentPricesCount = totalShipmentPricesCount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                filters = try container.decode(ManifestFilter.self, forKey: .filters)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                totalShipmentPricesCount = try container.decode(ManifestDetailTotalShipmentPricesCount.self, forKey: .totalShipmentPricesCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(totalShipmentPricesCount, forKey: .totalShipmentPricesCount)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ManifestDetailMeta
         Used By: Order
     */

    class ManifestDetailMeta: Codable {
        public var filters: ManifestFilter?

        public var totalShipmentPricesCount: ManifestDetailTotalShipmentPricesCount?

        public enum CodingKeys: String, CodingKey {
            case filters

            case totalShipmentPricesCount = "total_shipment_prices_count"
        }

        public init(filters: ManifestFilter? = nil, totalShipmentPricesCount: ManifestDetailTotalShipmentPricesCount? = nil) {
            self.filters = filters

            self.totalShipmentPricesCount = totalShipmentPricesCount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                filters = try container.decode(ManifestFilter.self, forKey: .filters)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                totalShipmentPricesCount = try container.decode(ManifestDetailTotalShipmentPricesCount.self, forKey: .totalShipmentPricesCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(totalShipmentPricesCount, forKey: .totalShipmentPricesCount)
        }
    }
}
