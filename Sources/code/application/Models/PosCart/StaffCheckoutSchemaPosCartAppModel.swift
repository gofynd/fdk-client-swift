

import Foundation
public extension ApplicationClient.PosCart {
    /*
         Model: StaffCheckoutSchema
         Used By: PosCart
     */
    class StaffCheckoutSchema: Codable {
        public var firstName: String

        public var id: String

        public var user: String

        public var employeeCode: String?

        public var lastName: String

        public enum CodingKeys: String, CodingKey {
            case firstName = "first_name"

            case id = "_id"

            case user

            case employeeCode = "employee_code"

            case lastName = "last_name"
        }

        public init(employeeCode: String? = nil, firstName: String, lastName: String, user: String, id: String) {
            self.firstName = firstName

            self.id = id

            self.user = user

            self.employeeCode = employeeCode

            self.lastName = lastName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            firstName = try container.decode(String.self, forKey: .firstName)

            id = try container.decode(String.self, forKey: .id)

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

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(employeeCode, forKey: .employeeCode)

            try? container.encodeIfPresent(lastName, forKey: .lastName)
        }
    }
}
