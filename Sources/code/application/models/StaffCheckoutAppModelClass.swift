

import Foundation
public extension ApplicationClient {
    /*
         Model: StaffCheckout
         Used By: Cart
     */
    class StaffCheckout: Codable {
        public var id: String

        public var user: String

        public var lastName: String

        public var firstName: String

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case user

            case lastName = "last_name"

            case firstName = "first_name"
        }

        public init(firstName: String, lastName: String, user: String, id: String) {
            self.id = id

            self.user = user

            self.lastName = lastName

            self.firstName = firstName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(String.self, forKey: .id)

            user = try container.decode(String.self, forKey: .user)

            lastName = try container.decode(String.self, forKey: .lastName)

            firstName = try container.decode(String.self, forKey: .firstName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(firstName, forKey: .firstName)
        }
    }
}
