

import Foundation
public extension PlatformClient {
    /*
         Model: EmailTemplateReq
         Used By: Communication
     */

    class EmailTemplateReq: Codable {
        public var name: String?

        public var description: String?

        public var keys: EmailTemplateKeys?

        public var staticTo: [String]?

        public var staticCc: [String]?

        public var staticBcc: [String]?

        public var replyTo: String?

        public var headers: [EmailTemplateHeaders]?

        public var subject: TemplateAndType?

        public var html: TemplateAndType?

        public var text: TemplateAndType?

        public var attachments: [[String: Any]]?

        public var priority: String?

        public enum CodingKeys: String, CodingKey {
            case name

            case description

            case keys

            case staticTo = "static_to"

            case staticCc = "static_cc"

            case staticBcc = "static_bcc"

            case replyTo = "reply_to"

            case headers

            case subject

            case html

            case text

            case attachments

            case priority
        }

        public init(attachments: [[String: Any]]? = nil, description: String? = nil, headers: [EmailTemplateHeaders]? = nil, html: TemplateAndType? = nil, keys: EmailTemplateKeys? = nil, name: String? = nil, priority: String? = nil, replyTo: String? = nil, staticBcc: [String]? = nil, staticCc: [String]? = nil, staticTo: [String]? = nil, subject: TemplateAndType? = nil, text: TemplateAndType? = nil) {
            self.name = name

            self.description = description

            self.keys = keys

            self.staticTo = staticTo

            self.staticCc = staticCc

            self.staticBcc = staticBcc

            self.replyTo = replyTo

            self.headers = headers

            self.subject = subject

            self.html = html

            self.text = text

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
                keys = try container.decode(EmailTemplateKeys.self, forKey: .keys)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                staticTo = try container.decode([String].self, forKey: .staticTo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                staticCc = try container.decode([String].self, forKey: .staticCc)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                staticBcc = try container.decode([String].self, forKey: .staticBcc)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                replyTo = try container.decode(String.self, forKey: .replyTo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                headers = try container.decode([EmailTemplateHeaders].self, forKey: .headers)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                subject = try container.decode(TemplateAndType.self, forKey: .subject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                html = try container.decode(TemplateAndType.self, forKey: .html)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                text = try container.decode(TemplateAndType.self, forKey: .text)

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

            try? container.encodeIfPresent(keys, forKey: .keys)

            try? container.encodeIfPresent(staticTo, forKey: .staticTo)

            try? container.encodeIfPresent(staticCc, forKey: .staticCc)

            try? container.encodeIfPresent(staticBcc, forKey: .staticBcc)

            try? container.encodeIfPresent(replyTo, forKey: .replyTo)

            try? container.encodeIfPresent(headers, forKey: .headers)

            try? container.encodeIfPresent(subject, forKey: .subject)

            try? container.encodeIfPresent(html, forKey: .html)

            try? container.encodeIfPresent(text, forKey: .text)

            try? container.encodeIfPresent(attachments, forKey: .attachments)

            try? container.encodeIfPresent(priority, forKey: .priority)
        }
    }
}
