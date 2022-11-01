

import Foundation
public extension PlatformClient {
    /*
         Model: TemplateRequestList
         Used By: Feedback
     */

    class TemplateRequestList: Codable {
        public var templateList: [TemplateRequest]

        public enum CodingKeys: String, CodingKey {
            case templateList = "template_list"
        }

        public init(templateList: [TemplateRequest]) {
            self.templateList = templateList
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            templateList = try container.decode([TemplateRequest].self, forKey: .templateList)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(templateList, forKey: .templateList)
        }
    }
}
