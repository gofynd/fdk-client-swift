import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: OAuthRequestAppleSchemaOauth
         Used By: User
     */
    class OAuthRequestAppleSchemaOauth: Codable {
        public var identityToken: String?

        public enum CodingKeys: String, CodingKey {
            case identityToken = "identity_token"
        }

        public init(identityToken: String?) {
            self.identityToken = identityToken
        }

        public func duplicate() -> OAuthRequestAppleSchemaOauth {
            let dict = self.dictionary!
            let copy = OAuthRequestAppleSchemaOauth(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                identityToken = try container.decode(String.self, forKey: .identityToken)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(identityToken, forKey: .identityToken)
        }
    }
}
