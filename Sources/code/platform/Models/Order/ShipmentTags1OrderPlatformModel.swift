

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ShipmentTags1
         Used By: Order
     */

    class ShipmentTags1: Codable {
        public var slug: String?

        public var displayText: String?

        public var entityType: String?

        public enum CodingKeys: String, CodingKey {
            case slug

            case displayText = "display_text"

            case entityType = "entity_type"
        }

        public init(displayText: String? = nil, entityType: String? = nil, slug: String? = nil) {
            self.slug = slug

            self.displayText = displayText

            self.entityType = entityType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                displayText = try container.decode(String.self, forKey: .displayText)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                entityType = try container.decode(String.self, forKey: .entityType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(displayText, forKey: .displayText)

            try? container.encodeIfPresent(entityType, forKey: .entityType)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ShipmentTags1
         Used By: Order
     */

    class ShipmentTags1: Codable {
        public var slug: String?

        public var displayText: String?

        public var entityType: String?

        public enum CodingKeys: String, CodingKey {
            case slug

            case displayText = "display_text"

            case entityType = "entity_type"
        }

        public init(displayText: String? = nil, entityType: String? = nil, slug: String? = nil) {
            self.slug = slug

            self.displayText = displayText

            self.entityType = entityType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                displayText = try container.decode(String.self, forKey: .displayText)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                entityType = try container.decode(String.self, forKey: .entityType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(displayText, forKey: .displayText)

            try? container.encodeIfPresent(entityType, forKey: .entityType)
        }
    }
}
