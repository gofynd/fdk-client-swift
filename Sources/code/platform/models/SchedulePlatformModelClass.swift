import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: Schedule
         Used By: Catalog
     */

    class Schedule: Codable {
        public var duration: Int?

        public var cron: String?

        public var end: String?

        public var start: String?

        public enum CodingKeys: String, CodingKey {
            case duration

            case cron

            case end

            case start
        }

        public init(cron: String?, duration: Int?, end: String?, start: String?) {
            self.duration = duration

            self.cron = cron

            self.end = end

            self.start = start
        }

        public func duplicate() -> Schedule {
            let dict = self.dictionary!
            let copy = Schedule(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            try? container.encode(duration, forKey: .duration)

            try? container.encode(cron, forKey: .cron)

            try? container.encode(end, forKey: .end)

            try? container.encodeIfPresent(start, forKey: .start)
        }
    }
}
