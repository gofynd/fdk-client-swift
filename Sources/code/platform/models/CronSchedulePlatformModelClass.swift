

import Foundation
public extension PlatformClient {
    /*
         Model: CronSchedule
         Used By: Content
     */

    class CronSchedule: Codable {
        public var cron: String?

        public var start: String?

        public var end: String?

        public var duration: Double?

        public enum CodingKeys: String, CodingKey {
            case cron

            case start

            case end

            case duration
        }

        public init(cron: String? = nil, duration: Double? = nil, end: String? = nil, start: String? = nil) {
            self.cron = cron

            self.start = start

            self.end = end

            self.duration = duration
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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
                end = try container.decode(String.self, forKey: .end)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                duration = try container.decode(Double.self, forKey: .duration)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cron, forKey: .cron)

            try? container.encodeIfPresent(start, forKey: .start)

            try? container.encodeIfPresent(end, forKey: .end)

            try? container.encodeIfPresent(duration, forKey: .duration)
        }
    }
}
