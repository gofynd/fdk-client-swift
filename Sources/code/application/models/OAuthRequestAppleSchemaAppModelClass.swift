

import Foundation
public extension ApplicationClient {
    /*
         Model: OAuthRequestAppleSchema
         Used By: User
     */
    class OAuthRequestAppleSchema: Codable {
        public var userIdentifier: String?

        public var oauth: OAuthRequestAppleSchemaOauth?

        public var profile: OAuthRequestAppleSchemaProfile?

        public enum CodingKeys: String, CodingKey {
            case userIdentifier = "user_identifier"

            case oauth

            case profile
        }

        public init(oauth: OAuthRequestAppleSchemaOauth? = nil, profile: OAuthRequestAppleSchemaProfile? = nil, userIdentifier: String? = nil) {
            self.userIdentifier = userIdentifier

            self.oauth = oauth

            self.profile = profile
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                userIdentifier = try container.decode(String.self, forKey: .userIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                oauth = try container.decode(OAuthRequestAppleSchemaOauth.self, forKey: .oauth)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                profile = try container.decode(OAuthRequestAppleSchemaProfile.self, forKey: .profile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(userIdentifier, forKey: .userIdentifier)

            try? container.encodeIfPresent(oauth, forKey: .oauth)

            try? container.encodeIfPresent(profile, forKey: .profile)
        }
    }
}
