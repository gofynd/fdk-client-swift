

import Foundation
public extension PlatformClient {
    /*
         Model: AppConfigurationsSort
         Used By: Catalog
     */

    class AppConfigurationsSort: Codable {
        public var name: String?

        public var logo: String?

        public var appId: String

        public var defaultKey: String

        public var isActive: Bool

        public var priority: Int

        public var key: String

        public var isDefault: Bool

        public enum CodingKeys: String, CodingKey {
            case name

            case logo

            case appId = "app_id"

            case defaultKey = "default_key"

            case isActive = "is_active"

            case priority

            case key

            case isDefault = "is_default"
        }

        public init(appId: String, defaultKey: String, isActive: Bool, isDefault: Bool, key: String, logo: String? = nil, name: String? = nil, priority: Int) {
            self.name = name

            self.logo = logo

            self.appId = appId

            self.defaultKey = defaultKey

            self.isActive = isActive

            self.priority = priority

            self.key = key

            self.isDefault = isDefault
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            appId = try container.decode(String.self, forKey: .appId)

            defaultKey = try container.decode(String.self, forKey: .defaultKey)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            priority = try container.decode(Int.self, forKey: .priority)

            key = try container.decode(String.self, forKey: .key)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(defaultKey, forKey: .defaultKey)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
        }
    }
}
