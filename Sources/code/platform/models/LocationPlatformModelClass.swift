

import Foundation
public extension PlatformClient {
    /*
         Model: Location
         Used By: AuditTrail
     */

    class Location: Codable {
        public var extraMeta: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case extraMeta = "extra_meta"
        }

        public init(extraMeta: [String: Any]? = nil) {
            self.extraMeta = extraMeta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                extraMeta = try container.decode([String: Any].self, forKey: .extraMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)
        }
    }
}
