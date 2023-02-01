

import Foundation
public extension PlatformClient {
    /*
         Model: CouponSchedule
         Used By: Cart
     */

    class CouponSchedule: Codable {
        public var cron: String?

        public var nextSchedule: [[String: Any]]?

        public var end: String?

        public var start: String?

        public var duration: Int?

        public enum CodingKeys: String, CodingKey {
            case cron

            case nextSchedule = "next_schedule"

            case end

            case start

            case duration
        }

        public init(cron: String? = nil, duration: Int? = nil, end: String? = nil, nextSchedule: [[String: Any]]? = nil, start: String? = nil) {
            self.cron = cron

            self.nextSchedule = nextSchedule

            self.end = end

            self.start = start

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
                nextSchedule = try container.decode([[String: Any]].self, forKey: .nextSchedule)

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

            do {
                duration = try container.decode(Int.self, forKey: .duration)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(cron, forKey: .cron)

            try? container.encodeIfPresent(nextSchedule, forKey: .nextSchedule)

            try? container.encode(end, forKey: .end)

            try? container.encodeIfPresent(start, forKey: .start)

            try? container.encode(duration, forKey: .duration)
        }
    }
}
