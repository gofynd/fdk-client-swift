

import Foundation
public extension PlatformClient {
    /*
         Model: CampaignEmail
         Used By: Communication
     */

    class CampaignEmail: Codable {
        public var template: CampaignEmailTemplate?

        public var provider: CampignEmailProvider?

        public enum CodingKeys: String, CodingKey {
            case template

            case provider
        }

        public init(provider: CampignEmailProvider? = nil, template: CampaignEmailTemplate? = nil) {
            self.template = template

            self.provider = provider
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                template = try container.decode(CampaignEmailTemplate.self, forKey: .template)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                provider = try container.decode(CampignEmailProvider.self, forKey: .provider)

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
