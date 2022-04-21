

import Foundation
public extension PlatformClient {
    /*
         Model: AuthSuccessUserDebug
         Used By: User
     */

    class AuthSuccessUserDebug: Codable {
        public var platform: String?

        public enum CodingKeys: String, CodingKey {
            case platform
        }

        public init(platform: String? = nil) {
            self.platform = platform
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                platform = try container.decode(String.self, forKey: .platform)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(platform, forKey: .platform)
        }
    }
}
