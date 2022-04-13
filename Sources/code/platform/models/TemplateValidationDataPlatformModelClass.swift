import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: TemplateValidationData
         Used By: Catalog
     */

    class TemplateValidationData: Codable {
        public var globalValidation: GlobalValidation?

        public var templateValidation: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case globalValidation = "global_validation"

            case templateValidation = "template_validation"
        }

        public init(globalValidation: GlobalValidation?, templateValidation: [String: Any]?) {
            self.globalValidation = globalValidation

            self.templateValidation = templateValidation
        }

        public func duplicate() -> TemplateValidationData {
            let dict = self.dictionary!
            let copy = TemplateValidationData(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                globalValidation = try container.decode(GlobalValidation.self, forKey: .globalValidation)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                templateValidation = try container.decode([String: Any].self, forKey: .templateValidation)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(globalValidation, forKey: .globalValidation)

            try? container.encodeIfPresent(templateValidation, forKey: .templateValidation)
        }
    }
}
