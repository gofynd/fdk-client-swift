

import Foundation
public extension PlatformClient {
    /*
         Model: ConfigurationBucketPoints
         Used By: Catalog
     */

    class ConfigurationBucketPoints: Codable {
        public var end: Double?

        public var start: Double?

        public var display: String?

        public enum CodingKeys: String, CodingKey {
            case end

            case start

            case display
        }

        public init(display: String? = nil, end: Double? = nil, start: Double? = nil) {
            self.end = end

            self.start = start

            self.display = display
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                end = try container.decode(Double.self, forKey: .end)

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
                display = try container.decode(String.self, forKey: .display)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(end, forKey: .end)

            try? container.encodeIfPresent(start, forKey: .start)

            try? container.encodeIfPresent(display, forKey: .display)
        }
    }
}
