

import Foundation
public extension ApplicationClient.Cart {
    /*
         Model: StaffCheckoutSchema
         Used By: Cart
     */
    class StaffCheckoutSchema: Codable {
        public var user: String

        public var lastName: String

        public var id: String

        public var employeeCode: String?

        public var firstName: String

        public enum CodingKeys: String, CodingKey {
            case user

            case lastName = "last_name"

            case id = "_id"

            case employeeCode = "employee_code"

            case firstName = "first_name"
        }

        public init(employeeCode: String? = nil, firstName: String, lastName: String, user: String, id: String) {
            self.user = user

            self.lastName = lastName

            self.id = id

            self.employeeCode = employeeCode

            self.firstName = firstName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            user = try container.decode(String.self, forKey: .user)

            lastName = try container.decode(String.self, forKey: .lastName)

            id = try container.decode(String.self, forKey: .id)

            do {
                employeeCode = try container.decode(String.self, forKey: .employeeCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            firstName = try container.decode(String.self, forKey: .firstName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(employeeCode, forKey: .employeeCode)

            try? container.encodeIfPresent(firstName, forKey: .firstName)
        }
    }
}
