

import Foundation
public extension ApplicationClient.PosCart {
    /*
         Model: StaffCheckout
         Used By: PosCart
     */
    class StaffCheckout: Codable {
        public var id: String

        public var lastName: String

        public var firstName: String

        public var user: String

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case lastName = "last_name"

            case firstName = "first_name"

            case user
        }

        public init(firstName: String, lastName: String, user: String, id: String) {
            self.id = id

            self.lastName = lastName

            self.firstName = firstName

            self.user = user
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(String.self, forKey: .id)

            lastName = try container.decode(String.self, forKey: .lastName)

            firstName = try container.decode(String.self, forKey: .firstName)

            user = try container.decode(String.self, forKey: .user)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(user, forKey: .user)
        }
    }
}
