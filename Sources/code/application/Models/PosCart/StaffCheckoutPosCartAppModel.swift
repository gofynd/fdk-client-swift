

import Foundation
public extension ApplicationClient.PosCart {
    /*
         Model: StaffCheckout
         Used By: PosCart
     */
    class StaffCheckout: Codable {
        public var employeeCode: String?

        public var id: String

        public var lastName: String

        public var firstName: String

        public var user: String

        public enum CodingKeys: String, CodingKey {
            case employeeCode = "employee_code"

            case id = "_id"

            case lastName = "last_name"

            case firstName = "first_name"

            case user
        }

        public init(employeeCode: String? = nil, firstName: String, lastName: String, user: String, id: String) {
            self.employeeCode = employeeCode

            self.id = id

            self.lastName = lastName

            self.firstName = firstName

            self.user = user
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                employeeCode = try container.decode(String.self, forKey: .employeeCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            lastName = try container.decode(String.self, forKey: .lastName)

            firstName = try container.decode(String.self, forKey: .firstName)

            user = try container.decode(String.self, forKey: .user)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(employeeCode, forKey: .employeeCode)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(user, forKey: .user)
        }
    }
}
