

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: DepartmentPageResponse
         Used By: Catalog
     */

    class DepartmentPageResponse: Codable {
        public var type: String?

        public var itemTotal: Int

        public var nextId: String?

        public var hasNext: Bool

        public var size: Int?

        public var hasPrevious: Bool

        public var current: Int?

        public enum CodingKeys: String, CodingKey {
            case type

            case itemTotal = "item_total"

            case nextId = "next_id"

            case hasNext = "has_next"

            case size

            case hasPrevious = "has_previous"

            case current
        }

        public init(current: Int? = nil, hasNext: Bool, hasPrevious: Bool, itemTotal: Int, nextId: String? = nil, size: Int? = nil, type: String? = nil) {
            self.type = type

            self.itemTotal = itemTotal

            self.nextId = nextId

            self.hasNext = hasNext

            self.size = size

            self.hasPrevious = hasPrevious

            self.current = current
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemTotal = try container.decode(Int.self, forKey: .itemTotal)

            do {
                nextId = try container.decode(String.self, forKey: .nextId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            hasNext = try container.decode(Bool.self, forKey: .hasNext)

            do {
                size = try container.decode(Int.self, forKey: .size)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            hasPrevious = try container.decode(Bool.self, forKey: .hasPrevious)

            do {
                current = try container.decode(Int.self, forKey: .current)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)

            try? container.encodeIfPresent(nextId, forKey: .nextId)

            try? container.encodeIfPresent(hasNext, forKey: .hasNext)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(hasPrevious, forKey: .hasPrevious)

            try? container.encodeIfPresent(current, forKey: .current)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: DepartmentPageResponse
         Used By: Catalog
     */

    class DepartmentPageResponse: Codable {
        public var type: String?

        public var itemTotal: Int

        public var nextId: String?

        public var hasNext: Bool

        public var size: Int?

        public var hasPrevious: Bool

        public var current: Int?

        public enum CodingKeys: String, CodingKey {
            case type

            case itemTotal = "item_total"

            case nextId = "next_id"

            case hasNext = "has_next"

            case size

            case hasPrevious = "has_previous"

            case current
        }

        public init(current: Int? = nil, hasNext: Bool, hasPrevious: Bool, itemTotal: Int, nextId: String? = nil, size: Int? = nil, type: String? = nil) {
            self.type = type

            self.itemTotal = itemTotal

            self.nextId = nextId

            self.hasNext = hasNext

            self.size = size

            self.hasPrevious = hasPrevious

            self.current = current
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemTotal = try container.decode(Int.self, forKey: .itemTotal)

            do {
                nextId = try container.decode(String.self, forKey: .nextId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            hasNext = try container.decode(Bool.self, forKey: .hasNext)

            do {
                size = try container.decode(Int.self, forKey: .size)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            hasPrevious = try container.decode(Bool.self, forKey: .hasPrevious)

            do {
                current = try container.decode(Int.self, forKey: .current)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)

            try? container.encodeIfPresent(nextId, forKey: .nextId)

            try? container.encodeIfPresent(hasNext, forKey: .hasNext)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(hasPrevious, forKey: .hasPrevious)

            try? container.encodeIfPresent(current, forKey: .current)
        }
    }
}
