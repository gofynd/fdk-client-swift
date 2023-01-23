

import Foundation
public extension PublicClient {
    /*
         Model: ApplicationCors
         Used By: Configuration
     */

    class ApplicationCors: Codable {
        public var domains: [String]?

        public enum CodingKeys: String, CodingKey {
            case domains
        }

        public init(domains: [String]? = nil) {
            self.domains = domains
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                domains = try container.decode([String].self, forKey: .domains)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(domains, forKey: .domains)
        }
    }
}
