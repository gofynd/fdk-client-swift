

import Foundation
public extension PublicClient {
    /*
         Model: AuthMeta
         Used By: Webhook
     */

    class AuthMeta: Codable {
        public var type: String?

        public var secret: String?

        public enum CodingKeys: String, CodingKey {
            case type

            case secret
        }

        public init(secret: String? = nil, type: String? = nil) {
            self.type = type

            self.secret = secret
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                secret = try container.decode(String.self, forKey: .secret)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(secret, forKey: .secret)
        }
    }
}
