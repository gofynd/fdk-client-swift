

import Foundation
public extension ApplicationClient {
    /*
         Model: StaffCheckout
         Used By: Cart
     */
    class StaffCheckout: Codable {
        public var id: String

        public var firstName: String

        public var lastName: String

        public var user: String

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case firstName = "first_name"

            case lastName = "last_name"

            case user
        }

        public init(firstName: String, lastName: String, user: String, id: String) {
            self.id = id

            self.firstName = firstName

            self.lastName = lastName

            self.user = user
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(String.self, forKey: .id)

            firstName = try container.decode(String.self, forKey: .firstName)

            lastName = try container.decode(String.self, forKey: .lastName)

            user = try container.decode(String.self, forKey: .user)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(user, forKey: .user)
        }
    }
}
