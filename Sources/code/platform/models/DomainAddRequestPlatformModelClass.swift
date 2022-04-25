

import Foundation
public extension PlatformClient {
    /*
         Model: DomainAddRequest
         Used By: Configuration
     */

    class DomainAddRequest: Codable {
        public var domain: DomainAdd?

        public enum CodingKeys: String, CodingKey {
            case domain
        }

        public init(domain: DomainAdd? = nil) {
            self.domain = domain
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                domain = try container.decode(DomainAdd.self, forKey: .domain)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(domain, forKey: .domain)
        }
    }
}
