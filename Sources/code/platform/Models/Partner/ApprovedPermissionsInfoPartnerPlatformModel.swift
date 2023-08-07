

import Foundation

public extension PlatformClient.Partner {
    /*
         Model: ApprovedPermissionsInfo
         Used By: Partner
     */

    class ApprovedPermissionsInfo: Codable {
        public var applicationPermissions: [String: ApplicationPermissions]?

        public var companyPermissions: [String]?

        public enum CodingKeys: String, CodingKey {
            case applicationPermissions = "application_permissions"

            case companyPermissions = "company_permissions"
        }

        public init(applicationPermissions: [String: ApplicationPermissions]? = nil, companyPermissions: [String]? = nil) {
            self.applicationPermissions = applicationPermissions

            self.companyPermissions = companyPermissions
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                applicationPermissions = try container.decode([String: ApplicationPermissions].self, forKey: .applicationPermissions)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(applicationPermissions, forKey: .applicationPermissions)

            try? container.encodeIfPresent(companyPermissions, forKey: .companyPermissions)
        }
    }
}

public extension PlatformClient.ApplicationClient.Partner {
    /*
         Model: ApprovedPermissionsInfo
         Used By: Partner
     */

    class ApprovedPermissionsInfo: Codable {
        public var applicationPermissions: [String: ApplicationPermissions]?

        public var companyPermissions: [String]?

        public enum CodingKeys: String, CodingKey {
            case applicationPermissions = "application_permissions"

            case companyPermissions = "company_permissions"
        }

        public init(applicationPermissions: [String: ApplicationPermissions]? = nil, companyPermissions: [String]? = nil) {
            self.applicationPermissions = applicationPermissions

            self.companyPermissions = companyPermissions
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                applicationPermissions = try container.decode([String: ApplicationPermissions].self, forKey: .applicationPermissions)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(applicationPermissions, forKey: .applicationPermissions)

            try? container.encodeIfPresent(companyPermissions, forKey: .companyPermissions)
        }
    }
}
