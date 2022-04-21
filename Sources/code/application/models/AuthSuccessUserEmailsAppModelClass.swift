

import Foundation
public extension ApplicationClient {
    /*
         Model: AuthSuccessUserEmails
         Used By: User
     */
    class AuthSuccessUserEmails: Codable {
        public var email: String?

        public var verified: Bool?

        public var primary: Bool?

        public var active: Bool?

        public enum CodingKeys: String, CodingKey {
            case email

            case verified

            case primary

            case active
        }

        public init(active: Bool? = nil, email: String? = nil, primary: Bool? = nil, verified: Bool? = nil) {
            self.email = email

            self.verified = verified

            self.primary = primary

            self.active = active
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                verified = try container.decode(Bool.self, forKey: .verified)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                primary = try container.decode(Bool.self, forKey: .primary)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                active = try container.decode(Bool.self, forKey: .active)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(verified, forKey: .verified)

            try? container.encodeIfPresent(primary, forKey: .primary)

            try? container.encodeIfPresent(active, forKey: .active)
        }
    }
}
