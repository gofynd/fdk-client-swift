

import Foundation
public extension ApplicationClient {
    /*
         Model: StaffCheckout
         Used By: Cart
     */
    class StaffCheckout: Codable {
        public var user: String

        public var firstName: String

        public var lastName: String

        public var id: String

        public enum CodingKeys: String, CodingKey {
            case user

            case firstName = "first_name"

            case lastName = "last_name"

            case id = "_id"
        }

        public init(firstName: String, lastName: String, user: String, id: String) {
            self.user = user

            self.firstName = firstName

            self.lastName = lastName

            self.id = id
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            user = try container.decode(String.self, forKey: .user)

            firstName = try container.decode(String.self, forKey: .firstName)

            lastName = try container.decode(String.self, forKey: .lastName)

            id = try container.decode(String.self, forKey: .id)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }
}
