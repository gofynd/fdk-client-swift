

import Foundation
public extension PlatformClient {
    /*
         Model: ConfigurationBucketPoints
         Used By: Catalog
     */

    class ConfigurationBucketPoints: Codable {
        public var display: String?

        public var start: Double?

        public var end: Double?

        public enum CodingKeys: String, CodingKey {
            case display

            case start

            case end
        }

        public init(display: String? = nil, end: Double? = nil, start: Double? = nil) {
            self.display = display

            self.start = start

            self.end = end
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                display = try container.decode(String.self, forKey: .display)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                start = try container.decode(Double.self, forKey: .start)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                end = try container.decode(Double.self, forKey: .end)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(start, forKey: .start)

            try? container.encodeIfPresent(end, forKey: .end)
        }
    }
}
