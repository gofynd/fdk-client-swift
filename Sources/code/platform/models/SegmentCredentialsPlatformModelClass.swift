

import Foundation
public extension PlatformClient {
    /*
         Model: SegmentCredentials
         Used By: Configuration
     */

    class SegmentCredentials: Codable {
        public var writeKey: String?

        public enum CodingKeys: String, CodingKey {
            case writeKey = "write_key"
        }

        public init(writeKey: String? = nil) {
            self.writeKey = writeKey
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                writeKey = try container.decode(String.self, forKey: .writeKey)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(writeKey, forKey: .writeKey)
        }
    }
}
