

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ShipmentTags
         Used By: Order
     */

    class ShipmentTags: Codable {
        public var displayText: String?

        public var slug: String?

        public var entityType: String?

        public enum CodingKeys: String, CodingKey {
            case displayText = "display_text"

            case slug

            case entityType = "entity_type"
        }

        public init(displayText: String? = nil, entityType: String? = nil, slug: String? = nil) {
            self.displayText = displayText

            self.slug = slug

            self.entityType = entityType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                displayText = try container.decode(String.self, forKey: .displayText)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                slug = try container.decode(String.self, forKey: .slug)

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

            try? container.encodeIfPresent(displayText, forKey: .displayText)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(entityType, forKey: .entityType)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ShipmentTags
         Used By: Order
     */

    class ShipmentTags: Codable {
        public var displayText: String?

        public var slug: String?

        public var entityType: String?

        public enum CodingKeys: String, CodingKey {
            case displayText = "display_text"

            case slug

            case entityType = "entity_type"
        }

        public init(displayText: String? = nil, entityType: String? = nil, slug: String? = nil) {
            self.displayText = displayText

            self.slug = slug

            self.entityType = entityType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                displayText = try container.decode(String.self, forKey: .displayText)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                slug = try container.decode(String.self, forKey: .slug)

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

            try? container.encodeIfPresent(displayText, forKey: .displayText)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(entityType, forKey: .entityType)
        }
    }
}
