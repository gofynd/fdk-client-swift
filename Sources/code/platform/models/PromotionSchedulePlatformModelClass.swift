

import Foundation
public extension PlatformClient {
    /*
         Model: PromotionSchedule
         Used By: Cart
     */

    class PromotionSchedule: Codable {
        public var start: String

        public var cron: String?

        public var nextSchedule: [[String: Any]]?

        public var end: String?

        public var published: Bool

        public var duration: Int?

        public enum CodingKeys: String, CodingKey {
            case start

            case cron

            case nextSchedule = "next_schedule"

            case end

            case published

            case duration
        }

        public init(cron: String? = nil, duration: Int? = nil, end: String? = nil, nextSchedule: [[String: Any]]? = nil, published: Bool, start: String) {
            self.start = start

            self.cron = cron

            self.nextSchedule = nextSchedule

            self.end = end

            self.published = published

            self.duration = duration
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            start = try container.decode(String.self, forKey: .start)

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

            published = try container.decode(Bool.self, forKey: .published)

            do {
                duration = try container.decode(Int.self, forKey: .duration)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(start, forKey: .start)

            try? container.encode(cron, forKey: .cron)

            try? container.encodeIfPresent(nextSchedule, forKey: .nextSchedule)

            try? container.encode(end, forKey: .end)

            try? container.encodeIfPresent(published, forKey: .published)

            try? container.encode(duration, forKey: .duration)
        }
    }
}
