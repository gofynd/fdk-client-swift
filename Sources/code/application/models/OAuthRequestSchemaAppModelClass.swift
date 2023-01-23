

import Foundation
public extension ApplicationClient {
    /*
         Model: OAuthRequestSchema
         Used By: User
     */
    class OAuthRequestSchema: Codable {
        public var isSignedIn: Bool?

        public var oauth2: OAuthRequestSchemaOauth2?

        public var profile: OAuthRequestSchemaProfile?

        public enum CodingKeys: String, CodingKey {
            case isSignedIn = "is_signed_in"

            case oauth2

            case profile
        }

        public init(isSignedIn: Bool? = nil, oauth2: OAuthRequestSchemaOauth2? = nil, profile: OAuthRequestSchemaProfile? = nil) {
            self.isSignedIn = isSignedIn

            self.oauth2 = oauth2

            self.profile = profile
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isSignedIn = try container.decode(Bool.self, forKey: .isSignedIn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                oauth2 = try container.decode(OAuthRequestSchemaOauth2.self, forKey: .oauth2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                profile = try container.decode(OAuthRequestSchemaProfile.self, forKey: .profile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isSignedIn, forKey: .isSignedIn)

            try? container.encodeIfPresent(oauth2, forKey: .oauth2)

            try? container.encodeIfPresent(profile, forKey: .profile)
        }
    }
}
