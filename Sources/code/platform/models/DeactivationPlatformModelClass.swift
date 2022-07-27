

import Foundation
public extension PlatformClient {
    /*
         Model: Deactivation
         Used By: CompanyProfile
     */

    class Deactivation: Codable {
        public var reason: [String]?

        public var description: String?

        public enum CodingKeys: String, CodingKey {
            case reason

            case description
        }

        public init(description: String? = nil, reason: [String]? = nil) {
            self.reason = reason

            self.description = description
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                reason = try container.decode([String].self, forKey: .reason)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(reason, forKey: .reason)

            try? container.encodeIfPresent(description, forKey: .description)
        }
    }
}
