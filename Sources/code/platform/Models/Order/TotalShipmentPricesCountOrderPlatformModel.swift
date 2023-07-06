

import Foundation

public extension PlatformClient.Order {
    /*
         Model: TotalShipmentPricesCount
         Used By: Order
     */

    class TotalShipmentPricesCount: Codable {
        public var totalPrice: Double?

        public var shipmentCount: Int?

        public enum CodingKeys: String, CodingKey {
            case totalPrice = "total_price"

            case shipmentCount = "shipment_count"
        }

        public init(shipmentCount: Int? = nil, totalPrice: Double? = nil) {
            self.totalPrice = totalPrice

            self.shipmentCount = shipmentCount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                totalPrice = try container.decode(Double.self, forKey: .totalPrice)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shipmentCount = try container.decode(Int.self, forKey: .shipmentCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(totalPrice, forKey: .totalPrice)

            try? container.encodeIfPresent(shipmentCount, forKey: .shipmentCount)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: TotalShipmentPricesCount
         Used By: Order
     */

    class TotalShipmentPricesCount: Codable {
        public var totalPrice: Double?

        public var shipmentCount: Int?

        public enum CodingKeys: String, CodingKey {
            case totalPrice = "total_price"

            case shipmentCount = "shipment_count"
        }

        public init(shipmentCount: Int? = nil, totalPrice: Double? = nil) {
            self.totalPrice = totalPrice

            self.shipmentCount = shipmentCount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                totalPrice = try container.decode(Double.self, forKey: .totalPrice)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shipmentCount = try container.decode(Int.self, forKey: .shipmentCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(totalPrice, forKey: .totalPrice)

            try? container.encodeIfPresent(shipmentCount, forKey: .shipmentCount)
        }
    }
}
