

import Foundation
public extension PlatformClient {
    /*
         Model: Quantities
         Used By: Order
     */

    class Quantities: Codable {
        public var notAvailable: NotAvailable?

        public var sellable: Sellable?

        public var orderCommitted: OrderCommitted?

        public var damaged: Damaged?

        public enum CodingKeys: String, CodingKey {
            case notAvailable = "not_available"

            case sellable

            case orderCommitted = "order_committed"

            case damaged
        }

        public init(damaged: Damaged? = nil, notAvailable: NotAvailable? = nil, orderCommitted: OrderCommitted? = nil, sellable: Sellable? = nil) {
            self.notAvailable = notAvailable

            self.sellable = sellable

            self.orderCommitted = orderCommitted

            self.damaged = damaged
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                notAvailable = try container.decode(NotAvailable.self, forKey: .notAvailable)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sellable = try container.decode(Sellable.self, forKey: .sellable)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderCommitted = try container.decode(OrderCommitted.self, forKey: .orderCommitted)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                damaged = try container.decode(Damaged.self, forKey: .damaged)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(notAvailable, forKey: .notAvailable)

            try? container.encodeIfPresent(sellable, forKey: .sellable)

            try? container.encodeIfPresent(orderCommitted, forKey: .orderCommitted)

            try? container.encodeIfPresent(damaged, forKey: .damaged)
        }
    }
}
