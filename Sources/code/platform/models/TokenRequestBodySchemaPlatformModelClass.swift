

import Foundation
public extension PlatformClient {
    /*
         Model: TokenRequestBodySchema
         Used By: User
     */

    class TokenRequestBodySchema: Codable {
        public var token: String?

        public enum CodingKeys: String, CodingKey {
            case token
        }

        public init(token: String? = nil) {
            self.token = token
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                token = try container.decode(String.self, forKey: .token)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(token, forKey: .token)
        }
    }
}
