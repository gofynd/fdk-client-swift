

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: AppConfigurationsSort
         Used By: Catalog
     */

    class AppConfigurationsSort: Codable {
        public var isActive: Bool

        public var key: String

        public var appId: String

        public var name: String?

        public var logo: String?

        public var priority: Int

        public var isDefault: Bool

        public var defaultKey: String

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case key

            case appId = "app_id"

            case name

            case logo

            case priority

            case isDefault = "is_default"

            case defaultKey = "default_key"
        }

        public init(appId: String, defaultKey: String, isActive: Bool, isDefault: Bool, key: String, logo: String? = nil, name: String? = nil, priority: Int) {
            self.isActive = isActive

            self.key = key

            self.appId = appId

            self.name = name

            self.logo = logo

            self.priority = priority

            self.isDefault = isDefault

            self.defaultKey = defaultKey
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            key = try container.decode(String.self, forKey: .key)

            appId = try container.decode(String.self, forKey: .appId)

            do {
                name = try container.decode(String.self, forKey: .name)

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

            priority = try container.decode(Int.self, forKey: .priority)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            defaultKey = try container.decode(String.self, forKey: .defaultKey)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(defaultKey, forKey: .defaultKey)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: AppConfigurationsSort
         Used By: Catalog
     */

    class AppConfigurationsSort: Codable {
        public var isActive: Bool

        public var key: String

        public var appId: String

        public var name: String?

        public var logo: String?

        public var priority: Int

        public var isDefault: Bool

        public var defaultKey: String

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case key

            case appId = "app_id"

            case name

            case logo

            case priority

            case isDefault = "is_default"

            case defaultKey = "default_key"
        }

        public init(appId: String, defaultKey: String, isActive: Bool, isDefault: Bool, key: String, logo: String? = nil, name: String? = nil, priority: Int) {
            self.isActive = isActive

            self.key = key

            self.appId = appId

            self.name = name

            self.logo = logo

            self.priority = priority

            self.isDefault = isDefault

            self.defaultKey = defaultKey
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            key = try container.decode(String.self, forKey: .key)

            appId = try container.decode(String.self, forKey: .appId)

            do {
                name = try container.decode(String.self, forKey: .name)

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

            priority = try container.decode(Int.self, forKey: .priority)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            defaultKey = try container.decode(String.self, forKey: .defaultKey)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(defaultKey, forKey: .defaultKey)
        }
    }
}
