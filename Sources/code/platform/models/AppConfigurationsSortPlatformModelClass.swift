

import Foundation
public extension PlatformClient {
    /*
         Model: AppConfigurationsSort
         Used By: Catalog
     */

    class AppConfigurationsSort: Codable {
        public var name: String?

        public var priority: Int

        public var isActive: Bool

        public var defaultKey: String

        public var isDefault: Bool

        public var appId: String

        public var key: String

        public var logo: String?

        public enum CodingKeys: String, CodingKey {
            case name

            case priority

            case isActive = "is_active"

            case defaultKey = "default_key"

            case isDefault = "is_default"

            case appId = "app_id"

            case key

            case logo
        }

        public init(appId: String, defaultKey: String, isActive: Bool, isDefault: Bool, key: String, logo: String? = nil, name: String? = nil, priority: Int) {
            self.name = name

            self.priority = priority

            self.isActive = isActive

            self.defaultKey = defaultKey

            self.isDefault = isDefault

            self.appId = appId

            self.key = key

            self.logo = logo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priority = try container.decode(Int.self, forKey: .priority)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            defaultKey = try container.decode(String.self, forKey: .defaultKey)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            appId = try container.decode(String.self, forKey: .appId)

            key = try container.decode(String.self, forKey: .key)

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(defaultKey, forKey: .defaultKey)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(logo, forKey: .logo)
        }
    }
}
