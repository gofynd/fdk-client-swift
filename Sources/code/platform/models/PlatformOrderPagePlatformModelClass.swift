

import Foundation
public extension PlatformClient {
    /*
         Model: PlatformOrderPage
         Used By: Order
     */

    class PlatformOrderPage: Codable {
        public var next: String?

        public var previous: String?

        public var type: String?

        public var size: Int?

        public var current: Int?

        public var hasNext: Bool?

        public var total: Int?

        public var itemTotal: ItemTotal?

        public enum CodingKeys: String, CodingKey {
            case next

            case previous

            case type

            case size

            case current

            case hasNext = "has_next"

            case total

            case itemTotal = "item_total"
        }

        public init(current: Int? = nil, hasNext: Bool? = nil, itemTotal: ItemTotal? = nil, next: String? = nil, previous: String? = nil, size: Int? = nil, total: Int? = nil, type: String? = nil) {
            self.next = next

            self.previous = previous

            self.type = type

            self.size = size

            self.current = current

            self.hasNext = hasNext

            self.total = total

            self.itemTotal = itemTotal
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                next = try container.decode(String.self, forKey: .next)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                previous = try container.decode(String.self, forKey: .previous)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                size = try container.decode(Int.self, forKey: .size)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                current = try container.decode(Int.self, forKey: .current)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                hasNext = try container.decode(Bool.self, forKey: .hasNext)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                total = try container.decode(Int.self, forKey: .total)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemTotal = try container.decode(ItemTotal.self, forKey: .itemTotal)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(next, forKey: .next)

            try? container.encodeIfPresent(previous, forKey: .previous)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(current, forKey: .current)

            try? container.encodeIfPresent(hasNext, forKey: .hasNext)

            try? container.encodeIfPresent(total, forKey: .total)

            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)
        }
    }
}
