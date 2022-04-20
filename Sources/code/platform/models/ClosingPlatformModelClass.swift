

import Foundation
public extension PlatformClient {
    /*
         Model: Closing
         Used By: Order
     */

    class Closing: Codable {
        public var hour: Int?

        public var minute: Int?

        public enum CodingKeys: String, CodingKey {
            case hour

            case minute
        }

        public init(hour: Int? = nil, minute: Int? = nil) {
            self.hour = hour

            self.minute = minute
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                hour = try container.decode(Int.self, forKey: .hour)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                minute = try container.decode(Int.self, forKey: .minute)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(hour, forKey: .hour)

            try? container.encodeIfPresent(minute, forKey: .minute)
        }
    }
}
