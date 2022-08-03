

import Foundation
public extension PlatformClient {
    /*
         Model: TemplatesValidationResponse
         Used By: Catalog
     */

    class TemplatesValidationResponse: Codable {
        public var templateDetails: TemplateDetails?

        public var data: TemplateValidationData?

        public enum CodingKeys: String, CodingKey {
            case templateDetails = "template_details"

            case data
        }

        public init(data: TemplateValidationData? = nil, templateDetails: TemplateDetails? = nil) {
            self.templateDetails = templateDetails

            self.data = data
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                templateDetails = try container.decode(TemplateDetails.self, forKey: .templateDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                data = try container.decode(TemplateValidationData.self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(templateDetails, forKey: .templateDetails)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }
}
