

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: ApplicationDepartment
         Used By: Catalog
     */

    class ApplicationDepartment: Codable {
        public var uid: Int

        public var customJson: [String: Any]?

        public var name: String?

        public var appId: String

        public var isActive: Bool?

        public var logo: String?

        public enum CodingKeys: String, CodingKey {
            case uid

            case customJson = "_custom_json"

            case name

            case appId = "app_id"

            case isActive = "is_active"

            case logo
        }

        public init(appId: String, isActive: Bool? = nil, logo: String? = nil, name: String? = nil, uid: Int, customJson: [String: Any]? = nil) {
            self.uid = uid

            self.customJson = customJson

            self.name = name

            self.appId = appId

            self.isActive = isActive

            self.logo = logo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            uid = try container.decode(Int.self, forKey: .uid)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            appId = try container.decode(String.self, forKey: .appId)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(logo, forKey: .logo)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: ApplicationDepartment
         Used By: Catalog
     */

    class ApplicationDepartment: Codable {
        public var uid: Int

        public var customJson: [String: Any]?

        public var name: String?

        public var appId: String

        public var isActive: Bool?

        public var logo: String?

        public enum CodingKeys: String, CodingKey {
            case uid

            case customJson = "_custom_json"

            case name

            case appId = "app_id"

            case isActive = "is_active"

            case logo
        }

        public init(appId: String, isActive: Bool? = nil, logo: String? = nil, name: String? = nil, uid: Int, customJson: [String: Any]? = nil) {
            self.uid = uid

            self.customJson = customJson

            self.name = name

            self.appId = appId

            self.isActive = isActive

            self.logo = logo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            uid = try container.decode(Int.self, forKey: .uid)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            appId = try container.decode(String.self, forKey: .appId)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(logo, forKey: .logo)
        }
    }
}
