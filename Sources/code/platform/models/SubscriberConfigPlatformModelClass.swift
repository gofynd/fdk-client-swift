

import Foundation
public extension PlatformClient {
    /*
         Model: SubscriberConfig
         Used By: Webhook
     */

    class SubscriberConfig: Codable {
        public var id: Int?

        public var name: String?

        public var webhookUrl: String?

        public var association: Association?

        public var customHeaders: [String: Any]?

        public var status: SubscriberStatus?

        public var emailId: String?

        public var authMeta: AuthMeta?

        public var eventId: [Int]?

        public enum CodingKeys: String, CodingKey {
            case id

            case name

            case webhookUrl = "webhook_url"

            case association

            case customHeaders = "custom_headers"

            case status

            case emailId = "email_id"

            case authMeta = "auth_meta"

            case eventId = "event_id"
        }

        public init(association: Association? = nil, authMeta: AuthMeta? = nil, customHeaders: [String: Any]? = nil, emailId: String? = nil, eventId: [Int]? = nil, id: Int? = nil, name: String? = nil, status: SubscriberStatus? = nil, webhookUrl: String? = nil) {
            self.id = id

            self.name = name

            self.webhookUrl = webhookUrl

            self.association = association

            self.customHeaders = customHeaders

            self.status = status

            self.emailId = emailId

            self.authMeta = authMeta

            self.eventId = eventId
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
                status = try container.decode(SubscriberStatus.self, forKey: .status)

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
                authMeta = try container.decode(AuthMeta.self, forKey: .authMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                eventId = try container.decode([Int].self, forKey: .eventId)

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

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(emailId, forKey: .emailId)

            try? container.encodeIfPresent(authMeta, forKey: .authMeta)

            try? container.encodeIfPresent(eventId, forKey: .eventId)
        }
    }
}
