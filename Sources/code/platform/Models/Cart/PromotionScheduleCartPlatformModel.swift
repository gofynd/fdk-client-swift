

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: PromotionSchedule
         Used By: Cart
     */

    class PromotionSchedule: Codable {
        public var duration: Int?

        public var published: Bool

        public var start: String

        public var nextSchedule: [[String: Any]]?

        public var end: String?

        public var cron: String?

        public enum CodingKeys: String, CodingKey {
            case duration

            case published

            case start

            case nextSchedule = "next_schedule"

            case end

            case cron
        }

        public init(cron: String? = nil, duration: Int? = nil, end: String? = nil, nextSchedule: [[String: Any]]? = nil, published: Bool, start: String) {
            self.duration = duration

            self.published = published

            self.start = start

            self.nextSchedule = nextSchedule

            self.end = end

            self.cron = cron
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                duration = try container.decode(Int.self, forKey: .duration)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            published = try container.decode(Bool.self, forKey: .published)

            start = try container.decode(String.self, forKey: .start)

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
                cron = try container.decode(String.self, forKey: .cron)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(duration, forKey: .duration)

            try? container.encodeIfPresent(published, forKey: .published)

            try? container.encodeIfPresent(start, forKey: .start)

            try? container.encodeIfPresent(nextSchedule, forKey: .nextSchedule)

            try? container.encode(end, forKey: .end)

            try? container.encode(cron, forKey: .cron)
        }
    }
}
