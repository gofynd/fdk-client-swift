

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: StaffCheckout
         Used By: Cart
     */

    class StaffCheckout: Codable {
        public var id: String

        public var user: String

        public var employeeCode: String?

        public var lastName: String

        public var firstName: String

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case user

            case employeeCode = "employee_code"

            case lastName = "last_name"

            case firstName = "first_name"
        }

        public init(employeeCode: String? = nil, firstName: String, lastName: String, user: String, id: String) {
            self.id = id

            self.user = user

            self.employeeCode = employeeCode

            self.lastName = lastName

            self.firstName = firstName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(String.self, forKey: .id)

            user = try container.decode(String.self, forKey: .user)

            do {
                employeeCode = try container.decode(String.self, forKey: .employeeCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            lastName = try container.decode(String.self, forKey: .lastName)

            firstName = try container.decode(String.self, forKey: .firstName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(employeeCode, forKey: .employeeCode)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(firstName, forKey: .firstName)
        }
    }
}
