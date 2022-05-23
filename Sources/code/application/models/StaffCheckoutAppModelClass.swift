

import Foundation
public extension ApplicationClient {
    /*
         Model: StaffCheckout
         Used By: Cart
     */
    class StaffCheckout: Codable {
        public var firstName: String

        public var user: String

        public var id: String

        public var lastName: String

        public enum CodingKeys: String, CodingKey {
            case firstName = "first_name"

            case user

            case id = "_id"

            case lastName = "last_name"
        }

        public init(firstName: String, lastName: String, user: String, id: String) {
            self.firstName = firstName

            self.user = user

            self.id = id

            self.lastName = lastName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            firstName = try container.decode(String.self, forKey: .firstName)

            user = try container.decode(String.self, forKey: .user)

            id = try container.decode(String.self, forKey: .id)

            lastName = try container.decode(String.self, forKey: .lastName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(lastName, forKey: .lastName)
        }
    }
}
