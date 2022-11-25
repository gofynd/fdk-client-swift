

import Foundation
public extension PlatformClient {
    /*
         Model: Quantities
         Used By: Catalog
     */

    class Quantities: Codable {
        public var damaged: QuantityBase?

        public var sellable: QuantityBase?

        public var notAvailable: QuantityBase?

        public var orderCommitted: QuantityBase?

        public enum CodingKeys: String, CodingKey {
            case damaged

            case sellable

            case notAvailable = "not_available"

            case orderCommitted = "order_committed"
        }

        public init(damaged: QuantityBase? = nil, notAvailable: QuantityBase? = nil, orderCommitted: QuantityBase? = nil, sellable: QuantityBase? = nil) {
            self.damaged = damaged

            self.sellable = sellable

            self.notAvailable = notAvailable

            self.orderCommitted = orderCommitted
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                damaged = try container.decode(QuantityBase.self, forKey: .damaged)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sellable = try container.decode(QuantityBase.self, forKey: .sellable)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                notAvailable = try container.decode(QuantityBase.self, forKey: .notAvailable)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderCommitted = try container.decode(QuantityBase.self, forKey: .orderCommitted)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(damaged, forKey: .damaged)

            try? container.encodeIfPresent(sellable, forKey: .sellable)

            try? container.encodeIfPresent(notAvailable, forKey: .notAvailable)

            try? container.encodeIfPresent(orderCommitted, forKey: .orderCommitted)
        }
    }
}
