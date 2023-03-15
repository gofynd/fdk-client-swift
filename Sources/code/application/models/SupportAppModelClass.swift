

import Foundation
public extension ApplicationClient {
    /*
         Model: Support
         Used By: Content
     */
    class Support: Codable {
        public var created: Bool?

        public var id: String?

        public var configType: String?

        public var application: String?

        public var createdAt: String?

        public var updatedAt: String?

        public var contact: ContactSchema?

        public enum CodingKeys: String, CodingKey {
            case created

            case id = "_id"

            case configType = "config_type"

            case application

            case createdAt = "created_at"

            case updatedAt = "updated_at"

            case contact
        }

        public init(application: String? = nil, configType: String? = nil, contact: ContactSchema? = nil, created: Bool? = nil, createdAt: String? = nil, updatedAt: String? = nil, id: String? = nil) {
            self.created = created

            self.id = id

            self.configType = configType

            self.application = application

            self.createdAt = createdAt

            self.updatedAt = updatedAt

            self.contact = contact
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                created = try container.decode(Bool.self, forKey: .created)

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
                configType = try container.decode(String.self, forKey: .configType)

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
                contact = try container.decode(ContactSchema.self, forKey: .contact)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(created, forKey: .created)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(configType, forKey: .configType)

            try? container.encodeIfPresent(application, forKey: .application)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(contact, forKey: .contact)
        }
    }
}
