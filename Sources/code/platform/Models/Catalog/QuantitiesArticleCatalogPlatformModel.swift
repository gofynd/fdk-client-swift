

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: QuantitiesArticle
         Used By: Catalog
     */

    class QuantitiesArticle: Codable {
        public var notAvailable: Quantity?

        public var orderCommitted: Quantity?

        public var sellable: Quantity?

        public var damaged: Quantity?

        public enum CodingKeys: String, CodingKey {
            case notAvailable = "not_available"

            case orderCommitted = "order_committed"

            case sellable

            case damaged
        }

        public init(damaged: Quantity? = nil, notAvailable: Quantity? = nil, orderCommitted: Quantity? = nil, sellable: Quantity? = nil) {
            self.notAvailable = notAvailable

            self.orderCommitted = orderCommitted

            self.sellable = sellable

            self.damaged = damaged
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                notAvailable = try container.decode(Quantity.self, forKey: .notAvailable)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderCommitted = try container.decode(Quantity.self, forKey: .orderCommitted)

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
                damaged = try container.decode(Quantity.self, forKey: .damaged)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(notAvailable, forKey: .notAvailable)

            try? container.encodeIfPresent(orderCommitted, forKey: .orderCommitted)

            try? container.encodeIfPresent(sellable, forKey: .sellable)

            try? container.encodeIfPresent(damaged, forKey: .damaged)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: QuantitiesArticle
         Used By: Catalog
     */

    class QuantitiesArticle: Codable {
        public var notAvailable: Quantity?

        public var orderCommitted: Quantity?

        public var sellable: Quantity?

        public var damaged: Quantity?

        public enum CodingKeys: String, CodingKey {
            case notAvailable = "not_available"

            case orderCommitted = "order_committed"

            case sellable

            case damaged
        }

        public init(damaged: Quantity? = nil, notAvailable: Quantity? = nil, orderCommitted: Quantity? = nil, sellable: Quantity? = nil) {
            self.notAvailable = notAvailable

            self.orderCommitted = orderCommitted

            self.sellable = sellable

            self.damaged = damaged
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                notAvailable = try container.decode(Quantity.self, forKey: .notAvailable)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderCommitted = try container.decode(Quantity.self, forKey: .orderCommitted)

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
                damaged = try container.decode(Quantity.self, forKey: .damaged)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(notAvailable, forKey: .notAvailable)

            try? container.encodeIfPresent(orderCommitted, forKey: .orderCommitted)

            try? container.encodeIfPresent(sellable, forKey: .sellable)

            try? container.encodeIfPresent(damaged, forKey: .damaged)
        }
    }
}
