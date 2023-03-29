

import Foundation
public extension PlatformClient {
    /*
         Model: TemplateAndType
         Used By: Communication
     */

    class TemplateAndType: Codable {
        public var templateType: String?

        public var template: String?

        public enum CodingKeys: String, CodingKey {
            case templateType = "template_type"

            case template
        }

        public init(template: String? = nil, templateType: String? = nil) {
            self.templateType = templateType

            self.template = template
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                templateType = try container.decode(String.self, forKey: .templateType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                template = try container.decode(String.self, forKey: .template)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(templateType, forKey: .templateType)

            try? container.encodeIfPresent(template, forKey: .template)
        }
    }
}
