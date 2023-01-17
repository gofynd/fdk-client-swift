

import Foundation
public extension PlatformClient {
    /*
         Model: DpDetails
         Used By: Order
     */

    class DpDetails: Codable {
        public var gstTag: String?

        public enum CodingKeys: String, CodingKey {
            case gstTag = "gst_tag"
        }

        public init(gstTag: String? = nil) {
            self.gstTag = gstTag
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                gstTag = try container.decode(String.self, forKey: .gstTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)
        }
    }
}
