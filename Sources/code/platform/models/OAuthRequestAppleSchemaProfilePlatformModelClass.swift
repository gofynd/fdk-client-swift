

import Foundation
public extension PlatformClient {
    /*
         Model: OAuthRequestAppleSchemaProfile
         Used By: User
     */

    class OAuthRequestAppleSchemaProfile: Codable {
        public var lastName: String?

        public var fullName: String?

        public var firstName: String?

        public enum CodingKeys: String, CodingKey {
            case lastName = "last_name"

            case fullName = "full_name"

            case firstName = "first_name"
        }

        public init(firstName: String? = nil, fullName: String? = nil, lastName: String? = nil) {
            self.lastName = lastName

            self.fullName = fullName

            self.firstName = firstName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                lastName = try container.decode(String.self, forKey: .lastName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fullName = try container.decode(String.self, forKey: .fullName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                firstName = try container.decode(String.self, forKey: .firstName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(fullName, forKey: .fullName)

            try? container.encodeIfPresent(firstName, forKey: .firstName)
        }
    }
}
