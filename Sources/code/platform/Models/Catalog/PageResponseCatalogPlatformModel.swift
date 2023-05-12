

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: PageResponse
         Used By: Catalog
     */

    class PageResponse: Codable {
        public var itemTotal: Int?

        public var hasNext: Bool?

        public var size: Int?

        public var current: String?

        public var hasPrevious: Bool?

        public enum CodingKeys: String, CodingKey {
            case itemTotal = "item_total"

            case hasNext = "has_next"

            case size

            case current

            case hasPrevious = "has_previous"
        }

        public init(current: String? = nil, hasNext: Bool? = nil, hasPrevious: Bool? = nil, itemTotal: Int? = nil, size: Int? = nil) {
            self.itemTotal = itemTotal

            self.hasNext = hasNext

            self.size = size

            self.current = current

            self.hasPrevious = hasPrevious
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                itemTotal = try container.decode(Int.self, forKey: .itemTotal)

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
                size = try container.decode(Int.self, forKey: .size)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                current = try container.decode(String.self, forKey: .current)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                hasPrevious = try container.decode(Bool.self, forKey: .hasPrevious)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)

            try? container.encodeIfPresent(hasNext, forKey: .hasNext)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(current, forKey: .current)

            try? container.encodeIfPresent(hasPrevious, forKey: .hasPrevious)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: PageResponse
         Used By: Catalog
     */

    class PageResponse: Codable {
        public var itemTotal: Int?

        public var hasNext: Bool?

        public var size: Int?

        public var current: String?

        public var hasPrevious: Bool?

        public enum CodingKeys: String, CodingKey {
            case itemTotal = "item_total"

            case hasNext = "has_next"

            case size

            case current

            case hasPrevious = "has_previous"
        }

        public init(current: String? = nil, hasNext: Bool? = nil, hasPrevious: Bool? = nil, itemTotal: Int? = nil, size: Int? = nil) {
            self.itemTotal = itemTotal

            self.hasNext = hasNext

            self.size = size

            self.current = current

            self.hasPrevious = hasPrevious
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                itemTotal = try container.decode(Int.self, forKey: .itemTotal)

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
                size = try container.decode(Int.self, forKey: .size)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                current = try container.decode(String.self, forKey: .current)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                hasPrevious = try container.decode(Bool.self, forKey: .hasPrevious)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)

            try? container.encodeIfPresent(hasNext, forKey: .hasNext)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(current, forKey: .current)

            try? container.encodeIfPresent(hasPrevious, forKey: .hasPrevious)
        }
    }
}
