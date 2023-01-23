

import Foundation
public extension PlatformClient {
    /*
         Model: DeviceInfo
         Used By: AuditTrail
     */

    class DeviceInfo: Codable {
        public var userAgent: String?

        public var extraMeta: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case userAgent = "user_agent"

            case extraMeta = "extra_meta"
        }

        public init(extraMeta: [String: Any]? = nil, userAgent: String? = nil) {
            self.userAgent = userAgent

            self.extraMeta = extraMeta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                userAgent = try container.decode(String.self, forKey: .userAgent)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                extraMeta = try container.decode([String: Any].self, forKey: .extraMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(userAgent, forKey: .userAgent)

            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)
        }
    }
}
