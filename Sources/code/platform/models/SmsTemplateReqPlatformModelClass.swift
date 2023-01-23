

import Foundation
public extension PlatformClient {
    /*
         Model: SmsTemplateReq
         Used By: Communication
     */

    class SmsTemplateReq: Codable {
        public var name: String?

        public var description: String?

        public var message: SmsTemplateMessage?

        public var templateVariables: [String: Any]?

        public var attachments: [[String: Any]]?

        public var priority: String?

        public enum CodingKeys: String, CodingKey {
            case name

            case description

            case message

            case templateVariables = "template_variables"

            case attachments

            case priority
        }

        public init(attachments: [[String: Any]]? = nil, description: String? = nil, message: SmsTemplateMessage? = nil, name: String? = nil, priority: String? = nil, templateVariables: [String: Any]? = nil) {
            self.name = name

            self.description = description

            self.message = message

            self.templateVariables = templateVariables

            self.attachments = attachments

            self.priority = priority
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

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
                message = try container.decode(SmsTemplateMessage.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                templateVariables = try container.decode([String: Any].self, forKey: .templateVariables)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                attachments = try container.decode([[String: Any]].self, forKey: .attachments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                priority = try container.decode(String.self, forKey: .priority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(templateVariables, forKey: .templateVariables)

            try? container.encodeIfPresent(attachments, forKey: .attachments)

            try? container.encodeIfPresent(priority, forKey: .priority)
        }
    }
}
