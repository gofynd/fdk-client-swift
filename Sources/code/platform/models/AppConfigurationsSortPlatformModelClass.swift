

import Foundation
public extension PlatformClient {
    /*
         Model: AppConfigurationsSort
         Used By: Catalog
     */

    class AppConfigurationsSort: Codable {
        public var isActive: Bool

        public var defaultKey: String

        public var key: String

        public var logo: String?

        public var appId: String

        public var priority: Int

        public var isDefault: Bool

        public var name: String?

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case defaultKey = "default_key"

            case key

            case logo

            case appId = "app_id"

            case priority

            case isDefault = "is_default"

            case name
        }

        public init(appId: String, defaultKey: String, isActive: Bool, isDefault: Bool, key: String, logo: String? = nil, name: String? = nil, priority: Int) {
            self.isActive = isActive

            self.defaultKey = defaultKey

            self.key = key

            self.logo = logo

            self.appId = appId

            self.priority = priority

            self.isDefault = isDefault

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            defaultKey = try container.decode(String.self, forKey: .defaultKey)

            key = try container.decode(String.self, forKey: .key)

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            appId = try container.decode(String.self, forKey: .appId)

            priority = try container.decode(Int.self, forKey: .priority)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(defaultKey, forKey: .defaultKey)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}
