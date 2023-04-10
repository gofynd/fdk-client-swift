

import Foundation
public extension PlatformClient {
    /*
         Model: AppConfigurationsSort
         Used By: Catalog
     */

    class AppConfigurationsSort: Codable {
        public var priority: Int

        public var logo: String?

        public var defaultKey: String

        public var name: String?

        public var isActive: Bool

        public var isDefault: Bool

        public var appId: String

        public var key: String

        public enum CodingKeys: String, CodingKey {
            case priority

            case logo

            case defaultKey = "default_key"

            case name

            case isActive = "is_active"

            case isDefault = "is_default"

            case appId = "app_id"

            case key
        }

        public init(appId: String, defaultKey: String, isActive: Bool, isDefault: Bool, key: String, logo: String? = nil, name: String? = nil, priority: Int) {
            self.priority = priority

            self.logo = logo

            self.defaultKey = defaultKey

            self.name = name

            self.isActive = isActive

            self.isDefault = isDefault

            self.appId = appId

            self.key = key
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            priority = try container.decode(Int.self, forKey: .priority)

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            defaultKey = try container.decode(String.self, forKey: .defaultKey)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isActive = try container.decode(Bool.self, forKey: .isActive)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            appId = try container.decode(String.self, forKey: .appId)

            key = try container.decode(String.self, forKey: .key)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(defaultKey, forKey: .defaultKey)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(key, forKey: .key)
        }
    }
}
