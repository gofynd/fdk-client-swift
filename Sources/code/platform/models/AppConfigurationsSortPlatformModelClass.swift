

import Foundation
public extension PlatformClient {
    /*
         Model: AppConfigurationsSort
         Used By: Catalog
     */

    class AppConfigurationsSort: Codable {
        public var key: String

        public var isActive: Bool

        public var priority: Int

        public var isDefault: Bool

        public var appId: String

        public var logo: String?

        public var defaultKey: String

        public var name: String?

        public enum CodingKeys: String, CodingKey {
            case key

            case isActive = "is_active"

            case priority

            case isDefault = "is_default"

            case appId = "app_id"

            case logo

            case defaultKey = "default_key"

            case name
        }

        public init(appId: String, defaultKey: String, isActive: Bool, isDefault: Bool, key: String, logo: String? = nil, name: String? = nil, priority: Int) {
            self.key = key

            self.isActive = isActive

            self.priority = priority

            self.isDefault = isDefault

            self.appId = appId

            self.logo = logo

            self.defaultKey = defaultKey

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            key = try container.decode(String.self, forKey: .key)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            priority = try container.decode(Int.self, forKey: .priority)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            appId = try container.decode(String.self, forKey: .appId)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(defaultKey, forKey: .defaultKey)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}
