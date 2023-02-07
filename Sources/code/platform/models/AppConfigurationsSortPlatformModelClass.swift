

import Foundation
public extension PlatformClient {
    /*
         Model: AppConfigurationsSort
         Used By: Catalog
     */

    class AppConfigurationsSort: Codable {
        public var isActive: Bool

        public var name: String?

        public var defaultKey: String

        public var appId: String

        public var priority: Int

        public var logo: String?

        public var key: String

        public var isDefault: Bool

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case name

            case defaultKey = "default_key"

            case appId = "app_id"

            case priority

            case logo

            case key

            case isDefault = "is_default"
        }

        public init(appId: String, defaultKey: String, isActive: Bool, isDefault: Bool, key: String, logo: String? = nil, name: String? = nil, priority: Int) {
            self.isActive = isActive

            self.name = name

            self.defaultKey = defaultKey

            self.appId = appId

            self.priority = priority

            self.logo = logo

            self.key = key

            self.isDefault = isDefault
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            defaultKey = try container.decode(String.self, forKey: .defaultKey)

            appId = try container.decode(String.self, forKey: .appId)

            priority = try container.decode(Int.self, forKey: .priority)

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            key = try container.decode(String.self, forKey: .key)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(defaultKey, forKey: .defaultKey)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
        }
    }
}
