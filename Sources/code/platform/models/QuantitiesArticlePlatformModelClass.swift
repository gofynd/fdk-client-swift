

import Foundation
public extension PlatformClient {
    /*
         Model: QuantitiesArticle
         Used By: Catalog
     */

    class QuantitiesArticle: Codable {
        public var orderCommitted: Quantity?

        public var damaged: Quantity?

        public var sellable: Quantity?

        public var notAvailable: Quantity?

        public enum CodingKeys: String, CodingKey {
            case orderCommitted = "order_committed"

            case damaged

            case sellable

            case notAvailable = "not_available"
        }

        public init(damaged: Quantity? = nil, notAvailable: Quantity? = nil, orderCommitted: Quantity? = nil, sellable: Quantity? = nil) {
            self.orderCommitted = orderCommitted

            self.damaged = damaged

            self.sellable = sellable

            self.notAvailable = notAvailable
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                orderCommitted = try container.decode(Quantity.self, forKey: .orderCommitted)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                damaged = try container.decode(Quantity.self, forKey: .damaged)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sellable = try container.decode(Quantity.self, forKey: .sellable)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                notAvailable = try container.decode(Quantity.self, forKey: .notAvailable)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderCommitted, forKey: .orderCommitted)

            try? container.encodeIfPresent(damaged, forKey: .damaged)

            try? container.encodeIfPresent(sellable, forKey: .sellable)

            try? container.encodeIfPresent(notAvailable, forKey: .notAvailable)
        }
    }
}
