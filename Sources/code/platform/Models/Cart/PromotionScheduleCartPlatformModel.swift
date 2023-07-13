

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: PromotionSchedule
         Used By: Cart
     */

    class PromotionSchedule: Codable {
        public var end: String

        public var start: String

        public var published: Bool

        public var nextSchedule: [[String: Any]]?

        public var cron: String?

        public var duration: Int?

        public enum CodingKeys: String, CodingKey {
            case end

            case start

            case published

            case nextSchedule = "next_schedule"

            case cron

            case duration
        }

        public init(cron: String? = nil, duration: Int? = nil, end: String, nextSchedule: [[String: Any]]? = nil, published: Bool, start: String) {
            self.end = end

            self.start = start

            self.published = published

            self.nextSchedule = nextSchedule

            self.cron = cron

            self.duration = duration
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            end = try container.decode(String.self, forKey: .end)

            start = try container.decode(String.self, forKey: .start)

            published = try container.decode(Bool.self, forKey: .published)

            do {
                nextSchedule = try container.decode([[String: Any]].self, forKey: .nextSchedule)

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
                duration = try container.decode(Int.self, forKey: .duration)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(end, forKey: .end)

            try? container.encodeIfPresent(start, forKey: .start)

            try? container.encodeIfPresent(published, forKey: .published)

            try? container.encodeIfPresent(nextSchedule, forKey: .nextSchedule)

            try? container.encode(cron, forKey: .cron)

            try? container.encode(duration, forKey: .duration)
        }
    }
}
