

import Foundation
public extension ApplicationClient {
    /*
         Model: DeviceMeta
         Used By: Feedback
     */
    class DeviceMeta: Codable {
        public var appVersion: String?

        public var platform: String?

        public enum CodingKeys: String, CodingKey {
            case appVersion = "app_version"

            case platform
        }

        public init(appVersion: String? = nil, platform: String? = nil) {
            self.appVersion = appVersion

            self.platform = platform
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                appVersion = try container.decode(String.self, forKey: .appVersion)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                platform = try container.decode(String.self, forKey: .platform)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(appVersion, forKey: .appVersion)

            try? container.encodeIfPresent(platform, forKey: .platform)
        }
    }
}
