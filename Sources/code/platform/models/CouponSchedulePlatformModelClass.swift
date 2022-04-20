import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: CouponSchedule
         Used By: Cart
     */

    class CouponSchedule: Codable {
        public var nextSchedule: [[String: Any]]?

        public var start: String?

        public var end: String?

        public var cron: String?

        public var duration: Int?

        public enum CodingKeys: String, CodingKey {
            case nextSchedule = "next_schedule"

            case start

            case end

            case cron

            case duration
        }

        public init(cron: String?, duration: Int?, end: String?, nextSchedule: [[String: Any]]?, start: String?) {
            self.nextSchedule = nextSchedule

            self.start = start

            self.end = end

            self.cron = cron

            self.duration = duration
        }

        public func duplicate() -> CouponSchedule {
            let dict = self.dictionary!
            let copy = CouponSchedule(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                nextSchedule = try container.decode([[String: Any]].self, forKey: .nextSchedule)

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

            try? container.encodeIfPresent(nextSchedule, forKey: .nextSchedule)

            try? container.encodeIfPresent(start, forKey: .start)

            try? container.encode(end, forKey: .end)

            try? container.encode(cron, forKey: .cron)

            try? container.encode(duration, forKey: .duration)
        }
    }
}
