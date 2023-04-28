

import Foundation
public extension ApplicationClient.Cart {
    /*
         Model: StaffCheckout
         Used By: Cart
     */
    class StaffCheckout: Codable {
        public var firstName: String

        public var id: String

        public var lastName: String

        public var user: String

        public var employeeCode: String?

        public enum CodingKeys: String, CodingKey {
            case firstName = "first_name"

            case id = "_id"

            case lastName = "last_name"

            case user

            case employeeCode = "employee_code"
        }

        public init(employeeCode: String? = nil, firstName: String, lastName: String, user: String, id: String) {
            self.firstName = firstName

            self.id = id

            self.lastName = lastName

            self.user = user

            self.employeeCode = employeeCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            firstName = try container.decode(String.self, forKey: .firstName)

            id = try container.decode(String.self, forKey: .id)

            lastName = try container.decode(String.self, forKey: .lastName)

            user = try container.decode(String.self, forKey: .user)

            do {
                employeeCode = try container.decode(String.self, forKey: .employeeCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(employeeCode, forKey: .employeeCode)
        }
    }
}
