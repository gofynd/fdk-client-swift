

import Foundation
public extension ApplicationClient {
    /*
         Model: Schedule
         Used By: Rewards
     */
    class Schedule: Codable {
        public var cron: String?

        public var duration: Int?

        public var end: String?

        public var start: String?

        public enum CodingKeys: String, CodingKey {
            case cron

            case duration

            case end

            case start
        }

        public init(cron: String? = nil, duration: Int? = nil, end: String? = nil, start: String? = nil) {
            self.cron = cron

            self.duration = duration

            self.end = end

            self.start = start
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
                duration = try container.decode(Int.self, forKey: .duration)

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
                start = try container.decode(String.self, forKey: .start)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cron, forKey: .cron)

            try? container.encodeIfPresent(duration, forKey: .duration)

            try? container.encodeIfPresent(end, forKey: .end)

            try? container.encodeIfPresent(start, forKey: .start)
        }
    }
}
