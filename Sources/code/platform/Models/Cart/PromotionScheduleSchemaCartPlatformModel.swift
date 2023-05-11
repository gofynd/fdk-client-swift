

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: PromotionScheduleSchema
         Used By: Cart
     */

    class PromotionScheduleSchema: Codable {
        public var end: String?

        public var start: String

        public var duration: Int?

        public var nextSchedule: [[String: Any]]?

        public var published: Bool

        public var cron: String?

        public enum CodingKeys: String, CodingKey {
            case end

            case start

            case duration

            case nextSchedule = "next_schedule"

            case published

            case cron
        }

        public init(cron: String? = nil, duration: Int? = nil, end: String? = nil, nextSchedule: [[String: Any]]? = nil, published: Bool, start: String) {
            self.end = end

            self.start = start

            self.duration = duration

            self.nextSchedule = nextSchedule

            self.published = published

            self.cron = cron
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                end = try container.decode(String.self, forKey: .end)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            start = try container.decode(String.self, forKey: .start)

            do {
                duration = try container.decode(Int.self, forKey: .duration)

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

            published = try container.decode(Bool.self, forKey: .published)

            do {
                cron = try container.decode(String.self, forKey: .cron)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(end, forKey: .end)

            try? container.encodeIfPresent(start, forKey: .start)

            try? container.encode(duration, forKey: .duration)

            try? container.encodeIfPresent(nextSchedule, forKey: .nextSchedule)

            try? container.encodeIfPresent(published, forKey: .published)

            try? container.encode(cron, forKey: .cron)
        }
    }
}
