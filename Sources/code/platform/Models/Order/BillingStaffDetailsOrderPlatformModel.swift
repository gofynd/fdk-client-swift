

import Foundation

public extension PlatformClient.Order {
    /*
         Model: BillingStaffDetails
         Used By: Order
     */

    class BillingStaffDetails: Codable {
        public var lastName: String?

        public var firstName: String?

        public var staffId: Int?

        public var employeeCode: String?

        public var user: String?

        public enum CodingKeys: String, CodingKey {
            case lastName = "last_name"

            case firstName = "first_name"

            case staffId = "staff_id"

            case employeeCode = "employee_code"

            case user
        }

        public init(employeeCode: String? = nil, firstName: String? = nil, lastName: String? = nil, staffId: Int? = nil, user: String? = nil) {
            self.lastName = lastName

            self.firstName = firstName

            self.staffId = staffId

            self.employeeCode = employeeCode

            self.user = user
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                lastName = try container.decode(String.self, forKey: .lastName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                firstName = try container.decode(String.self, forKey: .firstName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                staffId = try container.decode(Int.self, forKey: .staffId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                employeeCode = try container.decode(String.self, forKey: .employeeCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                user = try container.decode(String.self, forKey: .user)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(lastName, forKey: .lastName)

            try? container.encode(firstName, forKey: .firstName)

            try? container.encode(staffId, forKey: .staffId)

            try? container.encode(employeeCode, forKey: .employeeCode)

            try? container.encode(user, forKey: .user)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: BillingStaffDetails
         Used By: Order
     */

    class BillingStaffDetails: Codable {
        public var lastName: String?

        public var firstName: String?

        public var staffId: Int?

        public var employeeCode: String?

        public var user: String?

        public enum CodingKeys: String, CodingKey {
            case lastName = "last_name"

            case firstName = "first_name"

            case staffId = "staff_id"

            case employeeCode = "employee_code"

            case user
        }

        public init(employeeCode: String? = nil, firstName: String? = nil, lastName: String? = nil, staffId: Int? = nil, user: String? = nil) {
            self.lastName = lastName

            self.firstName = firstName

            self.staffId = staffId

            self.employeeCode = employeeCode

            self.user = user
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                lastName = try container.decode(String.self, forKey: .lastName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                firstName = try container.decode(String.self, forKey: .firstName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                staffId = try container.decode(Int.self, forKey: .staffId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                employeeCode = try container.decode(String.self, forKey: .employeeCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                user = try container.decode(String.self, forKey: .user)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(lastName, forKey: .lastName)

            try? container.encode(firstName, forKey: .firstName)

            try? container.encode(staffId, forKey: .staffId)

            try? container.encode(employeeCode, forKey: .employeeCode)

            try? container.encode(user, forKey: .user)
        }
    }
}
