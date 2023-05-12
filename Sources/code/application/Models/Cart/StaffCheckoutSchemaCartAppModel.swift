

import Foundation
public extension ApplicationClient.Cart {
    /*
         Model: StaffCheckoutSchema
         Used By: Cart
     */
    class StaffCheckoutSchema: Codable {
        public var id: String

        public var firstName: String

        public var user: String

        public var employeeCode: String?

        public var lastName: String

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case firstName = "first_name"

            case user

            case employeeCode = "employee_code"

            case lastName = "last_name"
        }

        public init(employeeCode: String? = nil, firstName: String, lastName: String, user: String, id: String) {
            self.id = id

            self.firstName = firstName

            self.user = user

            self.employeeCode = employeeCode

            self.lastName = lastName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(String.self, forKey: .id)

            firstName = try container.decode(String.self, forKey: .firstName)

            user = try container.decode(String.self, forKey: .user)

            do {
                employeeCode = try container.decode(String.self, forKey: .employeeCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            lastName = try container.decode(String.self, forKey: .lastName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(employeeCode, forKey: .employeeCode)

            try? container.encodeIfPresent(lastName, forKey: .lastName)
        }
    }
}
