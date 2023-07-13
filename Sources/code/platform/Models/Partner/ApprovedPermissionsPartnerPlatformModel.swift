

import Foundation

public extension PlatformClient.Partner {
    /*
         Model: ApprovedPermissions
         Used By: Partner
     */

    class ApprovedPermissions: Codable {
        public var applicationRole: [String]?

        public var companyPermissions: [String]?

        public var companyRole: [String]?

        public enum CodingKeys: String, CodingKey {
            case applicationRole = "application_role"

            case companyPermissions = "company_permissions"

            case companyRole = "company_role"
        }

        public init(applicationRole: [String]? = nil, companyPermissions: [String]? = nil, companyRole: [String]? = nil) {
            self.applicationRole = applicationRole

            self.companyPermissions = companyPermissions

            self.companyRole = companyRole
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                applicationRole = try container.decode([String].self, forKey: .applicationRole)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companyPermissions = try container.decode([String].self, forKey: .companyPermissions)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companyRole = try container.decode([String].self, forKey: .companyRole)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(applicationRole, forKey: .applicationRole)

            try? container.encodeIfPresent(companyPermissions, forKey: .companyPermissions)

            try? container.encodeIfPresent(companyRole, forKey: .companyRole)
        }
    }
}

public extension PlatformClient.ApplicationClient.Partner {
    /*
         Model: ApprovedPermissions
         Used By: Partner
     */

    class ApprovedPermissions: Codable {
        public var applicationRole: [String]?

        public var companyPermissions: [String]?

        public var companyRole: [String]?

        public enum CodingKeys: String, CodingKey {
            case applicationRole = "application_role"

            case companyPermissions = "company_permissions"

            case companyRole = "company_role"
        }

        public init(applicationRole: [String]? = nil, companyPermissions: [String]? = nil, companyRole: [String]? = nil) {
            self.applicationRole = applicationRole

            self.companyPermissions = companyPermissions

            self.companyRole = companyRole
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                applicationRole = try container.decode([String].self, forKey: .applicationRole)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companyPermissions = try container.decode([String].self, forKey: .companyPermissions)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companyRole = try container.decode([String].self, forKey: .companyRole)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(applicationRole, forKey: .applicationRole)

            try? container.encodeIfPresent(companyPermissions, forKey: .companyPermissions)

            try? container.encodeIfPresent(companyRole, forKey: .companyRole)
        }
    }
}
