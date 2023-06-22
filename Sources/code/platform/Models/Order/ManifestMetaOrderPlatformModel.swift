

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ManifestMeta
         Used By: Order
     */

    class ManifestMeta: Codable {
        public var totalShipmentPricesCount: TotalShipmentPricesCount?

        public var filters: Filters?

        public enum CodingKeys: String, CodingKey {
            case totalShipmentPricesCount = "total_shipment_prices_count"

            case filters
        }

        public init(filters: Filters? = nil, totalShipmentPricesCount: TotalShipmentPricesCount? = nil) {
            self.totalShipmentPricesCount = totalShipmentPricesCount

            self.filters = filters
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                totalShipmentPricesCount = try container.decode(TotalShipmentPricesCount.self, forKey: .totalShipmentPricesCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                filters = try container.decode(Filters.self, forKey: .filters)

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

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ManifestMeta
         Used By: Order
     */

    class ManifestMeta: Codable {
        public var totalShipmentPricesCount: TotalShipmentPricesCount?

        public var filters: Filters?

        public enum CodingKeys: String, CodingKey {
            case totalShipmentPricesCount = "total_shipment_prices_count"

            case filters
        }

        public init(filters: Filters? = nil, totalShipmentPricesCount: TotalShipmentPricesCount? = nil) {
            self.totalShipmentPricesCount = totalShipmentPricesCount

            self.filters = filters
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                totalShipmentPricesCount = try container.decode(TotalShipmentPricesCount.self, forKey: .totalShipmentPricesCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                filters = try container.decode(Filters.self, forKey: .filters)

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
