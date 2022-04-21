

import Foundation
public extension PlatformClient {
    /*
         Model: BuildVersionHistory
         Used By: Configuration
     */

    class BuildVersionHistory: Codable {
        public var versions: BuildVersion?

        public var latestAvailableVersionName: String?

        public enum CodingKeys: String, CodingKey {
            case versions

            case latestAvailableVersionName = "latest_available_version_name"
        }

        public init(latestAvailableVersionName: String? = nil, versions: BuildVersion? = nil) {
            self.versions = versions

            self.latestAvailableVersionName = latestAvailableVersionName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                versions = try container.decode(BuildVersion.self, forKey: .versions)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                latestAvailableVersionName = try container.decode(String.self, forKey: .latestAvailableVersionName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(versions, forKey: .versions)

            try? container.encodeIfPresent(latestAvailableVersionName, forKey: .latestAvailableVersionName)
        }
    }
}
