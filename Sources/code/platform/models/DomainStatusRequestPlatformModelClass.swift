

import Foundation
public extension PlatformClient {
    /*
         Model: DomainStatusRequest
         Used By: Configuration
     */

    class DomainStatusRequest: Codable {
        public var domainUrl: String?

        public enum CodingKeys: String, CodingKey {
            case domainUrl = "domain_url"
        }

        public init(domainUrl: String? = nil) {
            self.domainUrl = domainUrl
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                domainUrl = try container.decode(String.self, forKey: .domainUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(domainUrl, forKey: .domainUrl)
        }
    }
}
