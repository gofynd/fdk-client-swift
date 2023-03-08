

import Foundation

public extension PlatformClient.ApplicationClient.Content {
    /*
         Model: PathMappingSchema
         Used By: Content
     */

    class PathMappingSchema: Codable {
        public var application: String?

        public var id: String?

        public var redirectFrom: String?

        public var redirectTo: String?

        public var updatedAt: String?

        public var createdAt: String?

        public var source: TagSourceSchema?

        public enum CodingKeys: String, CodingKey {
            case application

            case id = "_id"

            case redirectFrom = "redirect_from"

            case redirectTo = "redirect_to"

            case updatedAt = "updated_at"

            case createdAt = "created_at"

            case source = "__source"
        }

        public init(application: String? = nil, createdAt: String? = nil, redirectFrom: String? = nil, redirectTo: String? = nil, updatedAt: String? = nil, id: String? = nil, source: TagSourceSchema? = nil) {
            self.application = application

            self.id = id

            self.redirectFrom = redirectFrom

            self.redirectTo = redirectTo

            self.updatedAt = updatedAt

            self.createdAt = createdAt

            self.source = source
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                application = try container.decode(String.self, forKey: .application)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                redirectFrom = try container.decode(String.self, forKey: .redirectFrom)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                redirectTo = try container.decode(String.self, forKey: .redirectTo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdAt = try container.decode(String.self, forKey: .createdAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                source = try container.decode(TagSourceSchema.self, forKey: .source)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(application, forKey: .application)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(redirectFrom, forKey: .redirectFrom)

            try? container.encodeIfPresent(redirectTo, forKey: .redirectTo)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(source, forKey: .source)
        }
    }
}
