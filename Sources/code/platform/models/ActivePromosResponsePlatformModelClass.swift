

import Foundation
public extension PlatformClient {
    /*
         Model: ActivePromosResponse
         Used By: Cart
     */

    class ActivePromosResponse: Codable {
        public var title: String?

        public var example: String?

        public var isActive: Bool?

        public var entityType: String?

        public var createdOn: String?

        public var subtitle: String?

        public var modifiedOn: String?

        public var entitySlug: String?

        public var description: String?

        public enum CodingKeys: String, CodingKey {
            case title

            case example

            case isActive = "is_active"

            case entityType = "entity_type"

            case createdOn = "created_on"

            case subtitle

            case modifiedOn = "modified_on"

            case entitySlug = "entity_slug"

            case description
        }

        public init(createdOn: String? = nil, description: String? = nil, entitySlug: String? = nil, entityType: String? = nil, example: String? = nil, isActive: Bool? = nil, modifiedOn: String? = nil, subtitle: String? = nil, title: String? = nil) {
            self.title = title

            self.example = example

            self.isActive = isActive

            self.entityType = entityType

            self.createdOn = createdOn

            self.subtitle = subtitle

            self.modifiedOn = modifiedOn

            self.entitySlug = entitySlug

            self.description = description
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                title = try container.decode(String.self, forKey: .title)

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
                isActive = try container.decode(Bool.self, forKey: .isActive)

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

            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)

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
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

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
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(example, forKey: .example)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(entityType, forKey: .entityType)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(entitySlug, forKey: .entitySlug)

            try? container.encodeIfPresent(description, forKey: .description)
        }
    }
}
