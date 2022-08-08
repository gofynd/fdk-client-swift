

import Foundation
public extension PlatformClient {
    /*
         Model: Schedule
         Used By: Catalog
     */

    class Schedule: Codable {
        public var end: String?

        public var cron: String?

        public var start: String?

        public var duration: Int?

        public enum CodingKeys: String, CodingKey {
            case end

            case cron

            case start

            case duration
        }

        public init(cron: String? = nil, duration: Int? = nil, end: String? = nil, start: String? = nil) {
            self.end = end

            self.cron = cron

            self.start = start

            self.duration = duration
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                end = try container.decode(String.self, forKey: .end)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cron = try container.decode(String.self, forKey: .cron)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                start = try container.decode(String.self, forKey: .start)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                duration = try container.decode(Int.self, forKey: .duration)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(end, forKey: .end)

            try? container.encode(cron, forKey: .cron)

            try? container.encodeIfPresent(start, forKey: .start)

            try? container.encode(duration, forKey: .duration)
        }
    }
}
