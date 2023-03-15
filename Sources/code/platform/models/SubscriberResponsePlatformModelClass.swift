

import Foundation
public extension PlatformClient {
    /*
         Model: SubscriberResponse
         Used By: Webhook
     */

    class SubscriberResponse: Codable {
        public var id: Int?

        public var name: String?

        public var webhookUrl: String?

        public var association: Association?

        public var customHeaders: [String: Any]?

        public var emailId: String?

        public var status: SubscriberStatus?

        public var authMeta: AuthMeta?

        public var createdOn: String?

        public var updatedOn: String?

        public var eventConfigs: [EventConfig]?

        public enum CodingKeys: String, CodingKey {
            case id

            case name

            case webhookUrl = "webhook_url"

            case association

            case customHeaders = "custom_headers"

            case emailId = "email_id"

            case status

            case authMeta = "auth_meta"

            case createdOn = "created_on"

            case updatedOn = "updated_on"

            case eventConfigs = "event_configs"
        }

        public init(association: Association? = nil, authMeta: AuthMeta? = nil, createdOn: String? = nil, customHeaders: [String: Any]? = nil, emailId: String? = nil, eventConfigs: [EventConfig]? = nil, id: Int? = nil, name: String? = nil, status: SubscriberStatus? = nil, updatedOn: String? = nil, webhookUrl: String? = nil) {
            self.id = id

            self.name = name

            self.webhookUrl = webhookUrl

            self.association = association

            self.customHeaders = customHeaders

            self.emailId = emailId

            self.status = status

            self.authMeta = authMeta

            self.createdOn = createdOn

            self.updatedOn = updatedOn

            self.eventConfigs = eventConfigs
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                id = try container.decode(Int.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                webhookUrl = try container.decode(String.self, forKey: .webhookUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                association = try container.decode(Association.self, forKey: .association)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customHeaders = try container.decode([String: Any].self, forKey: .customHeaders)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                emailId = try container.decode(String.self, forKey: .emailId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                status = try container.decode(SubscriberStatus.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                authMeta = try container.decode(AuthMeta.self, forKey: .authMeta)

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
                updatedOn = try container.decode(String.self, forKey: .updatedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                eventConfigs = try container.decode([EventConfig].self, forKey: .eventConfigs)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(webhookUrl, forKey: .webhookUrl)

            try? container.encodeIfPresent(association, forKey: .association)

            try? container.encodeIfPresent(customHeaders, forKey: .customHeaders)

            try? container.encodeIfPresent(emailId, forKey: .emailId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(authMeta, forKey: .authMeta)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(updatedOn, forKey: .updatedOn)

            try? container.encodeIfPresent(eventConfigs, forKey: .eventConfigs)
        }
    }
}
