

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: ActivePromosResponse
         Used By: Cart
     */

    class ActivePromosResponse: Codable {
        public var entityType: String?

        public var subtitle: String?

        public var createdOn: String?

        public var isHidden: Bool?

        public var title: String?

        public var modifiedOn: String?

        public var description: String?

        public var entitySlug: String?

        public var example: String?

        public var type: String?

        public enum CodingKeys: String, CodingKey {
            case entityType = "entity_type"

            case subtitle

            case createdOn = "created_on"

            case isHidden = "is_hidden"

            case title

            case modifiedOn = "modified_on"

            case description

            case entitySlug = "entity_slug"

            case example

            case type
        }

        public init(createdOn: String? = nil, description: String? = nil, entitySlug: String? = nil, entityType: String? = nil, example: String? = nil, isHidden: Bool? = nil, modifiedOn: String? = nil, subtitle: String? = nil, title: String? = nil, type: String? = nil) {
            self.entityType = entityType

            self.subtitle = subtitle

            self.createdOn = createdOn

            self.isHidden = isHidden

            self.title = title

            self.modifiedOn = modifiedOn

            self.description = description

            self.entitySlug = entitySlug

            self.example = example

            self.type = type
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                entityType = try container.decode(String.self, forKey: .entityType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                subtitle = try container.decode(String.self, forKey: .subtitle)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isHidden = try container.decode(Bool.self, forKey: .isHidden)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                title = try container.decode(String.self, forKey: .title)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                entitySlug = try container.decode(String.self, forKey: .entitySlug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                example = try container.decode(String.self, forKey: .example)

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

            try? container.encodeIfPresent(entityType, forKey: .entityType)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(isHidden, forKey: .isHidden)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(entitySlug, forKey: .entitySlug)

            try? container.encodeIfPresent(example, forKey: .example)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }
}