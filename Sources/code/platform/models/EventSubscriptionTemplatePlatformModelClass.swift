

import Foundation
public extension PlatformClient {
    /*
         Model: EventSubscriptionTemplate
         Used By: Communication
     */

    class EventSubscriptionTemplate: Codable {
        public var sms: EventSubscriptionTemplateSms?

        public var email: EventSubscriptionTemplateEmail?

        public enum CodingKeys: String, CodingKey {
            case sms

            case email
        }

        public init(email: EventSubscriptionTemplateEmail? = nil, sms: EventSubscriptionTemplateSms? = nil) {
            self.sms = sms

            self.email = email
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                sms = try container.decode(EventSubscriptionTemplateSms.self, forKey: .sms)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                email = try container.decode(EventSubscriptionTemplateEmail.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sms, forKey: .sms)

            try? container.encodeIfPresent(email, forKey: .email)
        }
    }
}
