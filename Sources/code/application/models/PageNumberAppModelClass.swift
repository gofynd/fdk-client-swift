

import Foundation
public extension ApplicationClient {
    /*
         Model: PageNumber
         Used By: Feedback
     */
    class PageNumber: Codable {
        public var current: Int?

        public var hasNext: Bool?

        public var itemTotal: Int?

        public var size: Int?

        public var type: String?

        public enum CodingKeys: String, CodingKey {
            case current

            case hasNext = "has_next"

            case itemTotal = "item_total"

            case size

            case type
        }

        public init(current: Int? = nil, hasNext: Bool? = nil, itemTotal: Int? = nil, size: Int? = nil, type: String? = nil) {
            self.current = current

            self.hasNext = hasNext

            self.itemTotal = itemTotal

            self.size = size

            self.type = type
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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
                itemTotal = try container.decode(Int.self, forKey: .itemTotal)

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
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(current, forKey: .current)

            try? container.encodeIfPresent(hasNext, forKey: .hasNext)

            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }
}
