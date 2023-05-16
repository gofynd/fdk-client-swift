

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: CollectionSchedule
         Used By: Catalog
     */

    class CollectionSchedule: Codable {
        public var end: String?

        public var duration: Int?

        public var start: String?

        public var cron: String?

        public var nextSchedule: [NextSchedule]?

        public enum CodingKeys: String, CodingKey {
            case end

            case duration

            case start

            case cron

            case nextSchedule = "next_schedule"
        }

        public init(cron: String? = nil, duration: Int? = nil, end: String? = nil, nextSchedule: [NextSchedule]? = nil, start: String? = nil) {
            self.end = end

            self.duration = duration

            self.start = start

            self.cron = cron

            self.nextSchedule = nextSchedule
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
                duration = try container.decode(Int.self, forKey: .duration)

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
                cron = try container.decode(String.self, forKey: .cron)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                nextSchedule = try container.decode([NextSchedule].self, forKey: .nextSchedule)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(end, forKey: .end)

            try? container.encode(duration, forKey: .duration)

            try? container.encodeIfPresent(start, forKey: .start)

            try? container.encode(cron, forKey: .cron)

            try? container.encodeIfPresent(nextSchedule, forKey: .nextSchedule)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: CollectionSchedule
         Used By: Catalog
     */

    class CollectionSchedule: Codable {
        public var end: String?

        public var duration: Int?

        public var start: String?

        public var cron: String?

        public var nextSchedule: [NextSchedule]?

        public enum CodingKeys: String, CodingKey {
            case end

            case duration

            case start

            case cron

            case nextSchedule = "next_schedule"
        }

        public init(cron: String? = nil, duration: Int? = nil, end: String? = nil, nextSchedule: [NextSchedule]? = nil, start: String? = nil) {
            self.end = end

            self.duration = duration

            self.start = start

            self.cron = cron

            self.nextSchedule = nextSchedule
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
                duration = try container.decode(Int.self, forKey: .duration)

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
                cron = try container.decode(String.self, forKey: .cron)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                nextSchedule = try container.decode([NextSchedule].self, forKey: .nextSchedule)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(end, forKey: .end)

            try? container.encode(duration, forKey: .duration)

            try? container.encodeIfPresent(start, forKey: .start)

            try? container.encode(cron, forKey: .cron)

            try? container.encodeIfPresent(nextSchedule, forKey: .nextSchedule)
        }
    }
}
