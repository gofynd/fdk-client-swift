

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: AppConfigurationsSort
         Used By: Catalog
     */

    class AppConfigurationsSort: Codable {
        public var logo: String?

        public var isActive: Bool

        public var priority: Int

        public var appId: String

        public var isDefault: Bool

        public var defaultKey: String

        public var key: String

        public var name: String?

        public enum CodingKeys: String, CodingKey {
            case logo

            case isActive = "is_active"

            case priority

            case appId = "app_id"

            case isDefault = "is_default"

            case defaultKey = "default_key"

            case key

            case name
        }

        public init(appId: String, defaultKey: String, isActive: Bool, isDefault: Bool, key: String, logo: String? = nil, name: String? = nil, priority: Int) {
            self.logo = logo

            self.isActive = isActive

            self.priority = priority

            self.appId = appId

            self.isDefault = isDefault

            self.defaultKey = defaultKey

            self.key = key

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isActive = try container.decode(Bool.self, forKey: .isActive)

            priority = try container.decode(Int.self, forKey: .priority)

            appId = try container.decode(String.self, forKey: .appId)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            defaultKey = try container.decode(String.self, forKey: .defaultKey)

            key = try container.decode(String.self, forKey: .key)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(defaultKey, forKey: .defaultKey)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: AppConfigurationsSort
         Used By: Catalog
     */

    class AppConfigurationsSort: Codable {
        public var logo: String?

        public var isActive: Bool

        public var priority: Int

        public var appId: String

        public var isDefault: Bool

        public var defaultKey: String

        public var key: String

        public var name: String?

        public enum CodingKeys: String, CodingKey {
            case logo

            case isActive = "is_active"

            case priority

            case appId = "app_id"

            case isDefault = "is_default"

            case defaultKey = "default_key"

            case key

            case name
        }

        public init(appId: String, defaultKey: String, isActive: Bool, isDefault: Bool, key: String, logo: String? = nil, name: String? = nil, priority: Int) {
            self.logo = logo

            self.isActive = isActive

            self.priority = priority

            self.appId = appId

            self.isDefault = isDefault

            self.defaultKey = defaultKey

            self.key = key

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isActive = try container.decode(Bool.self, forKey: .isActive)

            priority = try container.decode(Int.self, forKey: .priority)

            appId = try container.decode(String.self, forKey: .appId)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            defaultKey = try container.decode(String.self, forKey: .defaultKey)

            key = try container.decode(String.self, forKey: .key)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(defaultKey, forKey: .defaultKey)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}
