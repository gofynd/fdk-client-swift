

import Foundation

public extension PlatformClient.Order {
    /*
         Model: BillingStaffDetails
         Used By: Order
     */

    class BillingStaffDetails: Codable {
        public var employeeCode: String?

        public var firstName: String?

        public var lastName: String?

        public var user: String?

        public var staffId: Int?

        public enum CodingKeys: String, CodingKey {
            case employeeCode = "employee_code"

            case firstName = "first_name"

            case lastName = "last_name"

            case user

            case staffId = "staff_id"
        }

        public init(employeeCode: String? = nil, firstName: String? = nil, lastName: String? = nil, staffId: Int? = nil, user: String? = nil) {
            self.employeeCode = employeeCode

            self.firstName = firstName

            self.lastName = lastName

            self.user = user

            self.staffId = staffId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                employeeCode = try container.decode(String.self, forKey: .employeeCode)

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
                lastName = try container.decode(String.self, forKey: .lastName)

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

            do {
                staffId = try container.decode(Int.self, forKey: .staffId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(employeeCode, forKey: .employeeCode)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(staffId, forKey: .staffId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: BillingStaffDetails
         Used By: Order
     */

    class BillingStaffDetails: Codable {
        public var employeeCode: String?

        public var firstName: String?

        public var lastName: String?

        public var user: String?

        public var staffId: Int?

        public enum CodingKeys: String, CodingKey {
            case employeeCode = "employee_code"

            case firstName = "first_name"

            case lastName = "last_name"

            case user

            case staffId = "staff_id"
        }

        public init(employeeCode: String? = nil, firstName: String? = nil, lastName: String? = nil, staffId: Int? = nil, user: String? = nil) {
            self.employeeCode = employeeCode

            self.firstName = firstName

            self.lastName = lastName

            self.user = user

            self.staffId = staffId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                employeeCode = try container.decode(String.self, forKey: .employeeCode)

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
                lastName = try container.decode(String.self, forKey: .lastName)

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

            do {
                staffId = try container.decode(Int.self, forKey: .staffId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(employeeCode, forKey: .employeeCode)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(staffId, forKey: .staffId)
        }
    }
}
