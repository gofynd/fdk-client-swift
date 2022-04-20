

import Foundation
public extension PlatformClient {
    /*
         Model: LocationTimingSerializer
         Used By: Catalog
     */

    class LocationTimingSerializer: Codable {
        public var minute: Int?

        public var hour: Int?

        public enum CodingKeys: String, CodingKey {
            case minute

            case hour
        }

        public init(hour: Int? = nil, minute: Int? = nil) {
            self.minute = minute

            self.hour = hour
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                minute = try container.decode(Int.self, forKey: .minute)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                hour = try container.decode(Int.self, forKey: .hour)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(minute, forKey: .minute)

            try? container.encodeIfPresent(hour, forKey: .hour)
        }
    }
}
