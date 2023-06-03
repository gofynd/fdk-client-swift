

import Foundation

public extension PlatformClient.Order {
    /*
         Model: PlatformUserDetails
         Used By: Order
     */

    class PlatformUserDetails: Codable {
        public var platformUserFirstName: String?

        public var platformUserId: String?

        public var platformUserEmployeeCode: String?

        public var platformUserLastName: String?

        public enum CodingKeys: String, CodingKey {
            case platformUserFirstName = "platform_user_first_name"

            case platformUserId = "platform_user_id"

            case platformUserEmployeeCode = "platform_user_employee_code"

            case platformUserLastName = "platform_user_last_name"
        }

        public init(platformUserEmployeeCode: String? = nil, platformUserFirstName: String? = nil, platformUserId: String? = nil, platformUserLastName: String? = nil) {
            self.platformUserFirstName = platformUserFirstName

            self.platformUserId = platformUserId

            self.platformUserEmployeeCode = platformUserEmployeeCode

            self.platformUserLastName = platformUserLastName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                platformUserFirstName = try container.decode(String.self, forKey: .platformUserFirstName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                platformUserId = try container.decode(String.self, forKey: .platformUserId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                platformUserEmployeeCode = try container.decode(String.self, forKey: .platformUserEmployeeCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                platformUserLastName = try container.decode(String.self, forKey: .platformUserLastName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(platformUserFirstName, forKey: .platformUserFirstName)

            try? container.encode(platformUserId, forKey: .platformUserId)

            try? container.encode(platformUserEmployeeCode, forKey: .platformUserEmployeeCode)

            try? container.encodeIfPresent(platformUserLastName, forKey: .platformUserLastName)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: PlatformUserDetails
         Used By: Order
     */

    class PlatformUserDetails: Codable {
        public var platformUserFirstName: String?

        public var platformUserId: String?

        public var platformUserEmployeeCode: String?

        public var platformUserLastName: String?

        public enum CodingKeys: String, CodingKey {
            case platformUserFirstName = "platform_user_first_name"

            case platformUserId = "platform_user_id"

            case platformUserEmployeeCode = "platform_user_employee_code"

            case platformUserLastName = "platform_user_last_name"
        }

        public init(platformUserEmployeeCode: String? = nil, platformUserFirstName: String? = nil, platformUserId: String? = nil, platformUserLastName: String? = nil) {
            self.platformUserFirstName = platformUserFirstName

            self.platformUserId = platformUserId

            self.platformUserEmployeeCode = platformUserEmployeeCode

            self.platformUserLastName = platformUserLastName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                platformUserFirstName = try container.decode(String.self, forKey: .platformUserFirstName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                platformUserId = try container.decode(String.self, forKey: .platformUserId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                platformUserEmployeeCode = try container.decode(String.self, forKey: .platformUserEmployeeCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                platformUserLastName = try container.decode(String.self, forKey: .platformUserLastName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(platformUserFirstName, forKey: .platformUserFirstName)

            try? container.encode(platformUserId, forKey: .platformUserId)

            try? container.encode(platformUserEmployeeCode, forKey: .platformUserEmployeeCode)

            try? container.encodeIfPresent(platformUserLastName, forKey: .platformUserLastName)
        }
    }
}
