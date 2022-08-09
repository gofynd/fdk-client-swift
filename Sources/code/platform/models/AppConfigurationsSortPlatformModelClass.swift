

import Foundation
public extension PlatformClient {
    /*
         Model: AppConfigurationsSort
         Used By: Catalog
     */

    class AppConfigurationsSort: Codable {
        public var appId: String

        public var name: String?

        public var logo: String?

        public var isDefault: Bool

        public var priority: Int

        public var defaultKey: String

        public var isActive: Bool

        public var key: String

        public enum CodingKeys: String, CodingKey {
            case appId = "app_id"

            case name

            case logo

            case isDefault = "is_default"

            case priority

            case defaultKey = "default_key"

            case isActive = "is_active"

            case key
        }

        public init(appId: String, defaultKey: String, isActive: Bool, isDefault: Bool, key: String, logo: String? = nil, name: String? = nil, priority: Int) {
            self.appId = appId

            self.name = name

            self.logo = logo

            self.isDefault = isDefault

            self.priority = priority

            self.defaultKey = defaultKey

            self.isActive = isActive

            self.key = key
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            priority = try container.decode(Int.self, forKey: .priority)

            defaultKey = try container.decode(String.self, forKey: .defaultKey)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            key = try container.decode(String.self, forKey: .key)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(defaultKey, forKey: .defaultKey)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(key, forKey: .key)
        }
    }
}
