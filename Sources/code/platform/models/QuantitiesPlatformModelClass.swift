

import Foundation
public extension PlatformClient {
    /*
         Model: Quantities
         Used By: Catalog
     */

    class Quantities: Codable {
        public var orderCommitted: QuantityBase?

        public var notAvailable: QuantityBase?

        public var damaged: QuantityBase?

        public var sellable: QuantityBase?

        public enum CodingKeys: String, CodingKey {
            case orderCommitted = "order_committed"

            case notAvailable = "not_available"

            case damaged

            case sellable
        }

        public init(damaged: QuantityBase? = nil, notAvailable: QuantityBase? = nil, orderCommitted: QuantityBase? = nil, sellable: QuantityBase? = nil) {
            self.orderCommitted = orderCommitted

            self.notAvailable = notAvailable

            self.damaged = damaged

            self.sellable = sellable
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                orderCommitted = try container.decode(QuantityBase.self, forKey: .orderCommitted)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderCommitted, forKey: .orderCommitted)

            try? container.encodeIfPresent(notAvailable, forKey: .notAvailable)

            try? container.encodeIfPresent(damaged, forKey: .damaged)

            try? container.encodeIfPresent(sellable, forKey: .sellable)
        }
    }
}
