

import Foundation
public extension PlatformClient {
    /*
         Model: Documents
         Used By: Order
     */

    class Documents: Codable {
        public var gst: Gst?

        public enum CodingKeys: String, CodingKey {
            case gst
        }

        public init(gst: Gst? = nil) {
            self.gst = gst
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                gst = try container.decode(Gst.self, forKey: .gst)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gst, forKey: .gst)
        }
    }
}
