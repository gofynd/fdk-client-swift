import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: ApplicationCors
         Used By: Common
     */

    class ApplicationCors: Codable {
        public var domains: [String]?

        public enum CodingKeys: String, CodingKey {
            case domains
        }

        public init(domains: [String]?) {
            self.domains = domains
        }

        public func duplicate() -> ApplicationCors {
            let dict = self.dictionary!
            let copy = ApplicationCors(dictionary: dict)!
            return copy
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
