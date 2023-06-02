

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: DepartmentPageResponse
         Used By: Catalog
     */

    class DepartmentPageResponse: Codable {
        public var size: Int?

        public var hasPrevious: Bool

        public var hasNext: Bool

        public var itemTotal: Int

        public var nextId: String?

        public var current: Int?

        public var type: String?

        public enum CodingKeys: String, CodingKey {
            case size

            case hasPrevious = "has_previous"

            case hasNext = "has_next"

            case itemTotal = "item_total"

            case nextId = "next_id"

            case current

            case type
        }

        public init(current: Int? = nil, hasNext: Bool, hasPrevious: Bool, itemTotal: Int, nextId: String? = nil, size: Int? = nil, type: String? = nil) {
            self.size = size

            self.hasPrevious = hasPrevious

            self.hasNext = hasNext

            self.itemTotal = itemTotal

            self.nextId = nextId

            self.current = current

            self.type = type
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                size = try container.decode(Int.self, forKey: .size)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            hasPrevious = try container.decode(Bool.self, forKey: .hasPrevious)

            hasNext = try container.decode(Bool.self, forKey: .hasNext)

            itemTotal = try container.decode(Int.self, forKey: .itemTotal)

            do {
                nextId = try container.decode(String.self, forKey: .nextId)

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
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(hasPrevious, forKey: .hasPrevious)

            try? container.encodeIfPresent(hasNext, forKey: .hasNext)

            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)

            try? container.encodeIfPresent(nextId, forKey: .nextId)

            try? container.encodeIfPresent(current, forKey: .current)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: DepartmentPageResponse
         Used By: Catalog
     */

    class DepartmentPageResponse: Codable {
        public var size: Int?

        public var hasPrevious: Bool

        public var hasNext: Bool

        public var itemTotal: Int

        public var nextId: String?

        public var current: Int?

        public var type: String?

        public enum CodingKeys: String, CodingKey {
            case size

            case hasPrevious = "has_previous"

            case hasNext = "has_next"

            case itemTotal = "item_total"

            case nextId = "next_id"

            case current

            case type
        }

        public init(current: Int? = nil, hasNext: Bool, hasPrevious: Bool, itemTotal: Int, nextId: String? = nil, size: Int? = nil, type: String? = nil) {
            self.size = size

            self.hasPrevious = hasPrevious

            self.hasNext = hasNext

            self.itemTotal = itemTotal

            self.nextId = nextId

            self.current = current

            self.type = type
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                size = try container.decode(Int.self, forKey: .size)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            hasPrevious = try container.decode(Bool.self, forKey: .hasPrevious)

            hasNext = try container.decode(Bool.self, forKey: .hasNext)

            itemTotal = try container.decode(Int.self, forKey: .itemTotal)

            do {
                nextId = try container.decode(String.self, forKey: .nextId)

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
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(hasPrevious, forKey: .hasPrevious)

            try? container.encodeIfPresent(hasNext, forKey: .hasNext)

            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)

            try? container.encodeIfPresent(nextId, forKey: .nextId)

            try? container.encodeIfPresent(current, forKey: .current)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }
}
