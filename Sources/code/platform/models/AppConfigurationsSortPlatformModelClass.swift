

import Foundation
public extension PlatformClient {
    /*
         Model: AppConfigurationsSort
         Used By: Catalog
     */

    class AppConfigurationsSort: Codable {
        public var priority: Int

        public var logo: String?

        public var isDefault: Bool

        public var name: String?

        public var key: String

        public var isActive: Bool

        public var defaultKey: String

        public var appId: String

        public enum CodingKeys: String, CodingKey {
            case priority

            case logo

            case isDefault = "is_default"

            case name

            case key

            case isActive = "is_active"

            case defaultKey = "default_key"

            case appId = "app_id"
        }

        public init(appId: String, defaultKey: String, isActive: Bool, isDefault: Bool, key: String, logo: String? = nil, name: String? = nil, priority: Int) {
            self.priority = priority

            self.logo = logo

            self.isDefault = isDefault

            self.name = name

            self.key = key

            self.isActive = isActive

            self.defaultKey = defaultKey

            self.appId = appId
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

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            key = try container.decode(String.self, forKey: .key)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            defaultKey = try container.decode(String.self, forKey: .defaultKey)

            appId = try container.decode(String.self, forKey: .appId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(defaultKey, forKey: .defaultKey)

            try? container.encodeIfPresent(appId, forKey: .appId)
        }
    }
}
