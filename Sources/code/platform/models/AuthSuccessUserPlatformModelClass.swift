

import Foundation
public extension PlatformClient {
    /*
         Model: AuthSuccessUser
         Used By: User
     */

    class AuthSuccessUser: Codable {
        public var firstName: String?

        public var lastName: String?

        public var debug: AuthSuccessUserDebug?

        public var active: Bool?

        public var emails: AuthSuccessUserEmails?

        public enum CodingKeys: String, CodingKey {
            case firstName = "first_name"

            case lastName = "last_name"

            case debug

            case active

            case emails
        }

        public init(active: Bool? = nil, debug: AuthSuccessUserDebug? = nil, emails: AuthSuccessUserEmails? = nil, firstName: String? = nil, lastName: String? = nil) {
            self.firstName = firstName

            self.lastName = lastName

            self.debug = debug

            self.active = active

            self.emails = emails
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                firstName = try container.decode(String.self, forKey: .firstName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                lastName = try container.decode(String.self, forKey: .lastName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                debug = try container.decode(AuthSuccessUserDebug.self, forKey: .debug)

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

            do {
                emails = try container.decode(AuthSuccessUserEmails.self, forKey: .emails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(debug, forKey: .debug)

            try? container.encodeIfPresent(active, forKey: .active)

            try? container.encodeIfPresent(emails, forKey: .emails)
        }
    }
}
