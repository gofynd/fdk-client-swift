

import Foundation
public extension PlatformClient {
    /*
         Model: PromotionSchedule
         Used By: Cart
     */

    class PromotionSchedule: Codable {
        public var end: String?

        public var nextSchedule: [[String: Any]]?

        public var duration: Int?

        public var cron: String?

        public var start: String

        public var published: Bool

        public enum CodingKeys: String, CodingKey {
            case end

            case nextSchedule = "next_schedule"

            case duration

            case cron

            case start

            case published
        }

        public init(cron: String? = nil, duration: Int? = nil, end: String? = nil, nextSchedule: [[String: Any]]? = nil, published: Bool, start: String) {
            self.end = end

            self.nextSchedule = nextSchedule

            self.duration = duration

            self.cron = cron

            self.start = start

            self.published = published
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
                nextSchedule = try container.decode([[String: Any]].self, forKey: .nextSchedule)

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
                cron = try container.decode(String.self, forKey: .cron)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            start = try container.decode(String.self, forKey: .start)

            published = try container.decode(Bool.self, forKey: .published)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(end, forKey: .end)

            try? container.encodeIfPresent(nextSchedule, forKey: .nextSchedule)

            try? container.encode(duration, forKey: .duration)

            try? container.encode(cron, forKey: .cron)

            try? container.encodeIfPresent(start, forKey: .start)

            try? container.encodeIfPresent(published, forKey: .published)
        }
    }
}
