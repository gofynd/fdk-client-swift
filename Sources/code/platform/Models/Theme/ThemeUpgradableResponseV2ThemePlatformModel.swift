

import Foundation

public extension PlatformClient.Theme {
    /*
         Model: ThemeUpgradableResponseV2
         Used By: Theme
     */

    class ThemeUpgradableResponseV2: Codable {
        public var upgrade: Bool?

        public var versions: ThemeVersionsV2?

        public var message: String?

        public enum CodingKeys: String, CodingKey {
            case upgrade

            case versions

            case message
        }

        public init(message: String? = nil, upgrade: Bool? = nil, versions: ThemeVersionsV2? = nil) {
            self.upgrade = upgrade

            self.versions = versions

            self.message = message
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                upgrade = try container.decode(Bool.self, forKey: .upgrade)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                versions = try container.decode(ThemeVersionsV2.self, forKey: .versions)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(upgrade, forKey: .upgrade)

            try? container.encodeIfPresent(versions, forKey: .versions)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }
}

public extension PlatformClient.ApplicationClient.Theme {
    /*
         Model: ThemeUpgradableResponseV2
         Used By: Theme
     */

    class ThemeUpgradableResponseV2: Codable {
        public var upgrade: Bool?

        public var versions: ThemeVersionsV2?

        public var message: String?

        public enum CodingKeys: String, CodingKey {
            case upgrade

            case versions

            case message
        }

        public init(message: String? = nil, upgrade: Bool? = nil, versions: ThemeVersionsV2? = nil) {
            self.upgrade = upgrade

            self.versions = versions

            self.message = message
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                upgrade = try container.decode(Bool.self, forKey: .upgrade)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                versions = try container.decode(ThemeVersionsV2.self, forKey: .versions)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(upgrade, forKey: .upgrade)

            try? container.encodeIfPresent(versions, forKey: .versions)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }
}
