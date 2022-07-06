

import Foundation
public extension PlatformClient {
    /*
         Model: PayloadEmailStructure
         Used By: Communication
     */

    class PayloadEmailStructure: Codable {
        public var template: PayloadEmailTemplateStructure?

        public var provider: PayloadEmailProviderStructure?

        public enum CodingKeys: String, CodingKey {
            case template

            case provider
        }

        public init(provider: PayloadEmailProviderStructure? = nil, template: PayloadEmailTemplateStructure? = nil) {
            self.template = template

            self.provider = provider
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                template = try container.decode(PayloadEmailTemplateStructure.self, forKey: .template)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                provider = try container.decode(PayloadEmailProviderStructure.self, forKey: .provider)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(template, forKey: .template)

            try? container.encodeIfPresent(provider, forKey: .provider)
        }
    }
}
