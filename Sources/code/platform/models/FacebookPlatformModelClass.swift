

import Foundation
public extension PlatformClient {
    /*
         Model: Facebook
         Used By: User
     */

    class Facebook: Codable {
        public var appId: String?

        public enum CodingKeys: String, CodingKey {
            case appId = "app_id"
        }

        public init(appId: String? = nil) {
            self.appId = appId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                appId = try container.decode(String.self, forKey: .appId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(appId, forKey: .appId)
        }
    }
}
