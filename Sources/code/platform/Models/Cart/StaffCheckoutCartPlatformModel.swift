

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: StaffCheckout
         Used By: Cart
     */

    class StaffCheckout: Codable {
        public var employeeCode: String?

        public var user: String

        public var firstName: String

        public var lastName: String

        public var id: String

        public enum CodingKeys: String, CodingKey {
            case employeeCode = "employee_code"

            case user

            case firstName = "first_name"

            case lastName = "last_name"

            case id = "_id"
        }

        public init(employeeCode: String? = nil, firstName: String, lastName: String, user: String, id: String) {
            self.employeeCode = employeeCode

            self.user = user

            self.firstName = firstName

            self.lastName = lastName

            self.id = id
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                employeeCode = try container.decode(String.self, forKey: .employeeCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            user = try container.decode(String.self, forKey: .user)

            firstName = try container.decode(String.self, forKey: .firstName)

            lastName = try container.decode(String.self, forKey: .lastName)

            id = try container.decode(String.self, forKey: .id)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(employeeCode, forKey: .employeeCode)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }
}
