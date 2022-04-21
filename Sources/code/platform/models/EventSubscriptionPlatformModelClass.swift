

import Foundation
public extension PlatformClient {
    /*
         Model: EventSubscription
         Used By: Communication
     */

    class EventSubscription: Codable {
        public var template: EventSubscriptionTemplate?

        public var isDefault: Bool?

        public var id: String?

        public var application: String?

        public var event: String?

        public var slug: String?

        public var createdAt: String?

        public var updatedAt: String?

        public var v: Int?

        public enum CodingKeys: String, CodingKey {
            case template

            case isDefault = "is_default"

            case id = "_id"

            case application

            case event

            case slug

            case createdAt = "created_at"

            case updatedAt = "updated_at"

            case v = "__v"
        }

        public init(application: String? = nil, createdAt: String? = nil, event: String? = nil, isDefault: Bool? = nil, slug: String? = nil, template: EventSubscriptionTemplate? = nil, updatedAt: String? = nil, id: String? = nil, v: Int? = nil) {
            self.template = template

            self.isDefault = isDefault

            self.id = id

            self.application = application

            self.event = event

            self.slug = slug

            self.createdAt = createdAt

            self.updatedAt = updatedAt

            self.v = v
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                template = try container.decode(EventSubscriptionTemplate.self, forKey: .template)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isDefault = try container.decode(Bool.self, forKey: .isDefault)

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
                application = try container.decode(String.self, forKey: .application)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                event = try container.decode(String.self, forKey: .event)

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
                createdAt = try container.decode(String.self, forKey: .createdAt)

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
                v = try container.decode(Int.self, forKey: .v)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(template, forKey: .template)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(application, forKey: .application)

            try? container.encodeIfPresent(event, forKey: .event)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(v, forKey: .v)
        }
    }
}
