

import Foundation
public extension PlatformClient {
    /*
         Model: DomainSuggestionsRequest
         Used By: Configuration
     */

    class DomainSuggestionsRequest: Codable {
        public var domainUrl: String?

        public var custom: Bool?

        public enum CodingKeys: String, CodingKey {
            case domainUrl = "domain_url"

            case custom
        }

        public init(custom: Bool? = nil, domainUrl: String? = nil) {
            self.domainUrl = domainUrl

            self.custom = custom
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                domainUrl = try container.decode(String.self, forKey: .domainUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                custom = try container.decode(Bool.self, forKey: .custom)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(domainUrl, forKey: .domainUrl)

            try? container.encodeIfPresent(custom, forKey: .custom)
        }
    }
}
