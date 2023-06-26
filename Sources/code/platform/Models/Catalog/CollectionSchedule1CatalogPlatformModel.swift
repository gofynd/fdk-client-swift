

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: CollectionSchedule1
         Used By: Catalog
     */

    class CollectionSchedule1: Codable {
        public var end: String?

        public var start: String?

        public var nextSchedule: [CollectionScheduleStartEnd]?

        public enum CodingKeys: String, CodingKey {
            case end

            case start

            case nextSchedule = "next_schedule"
        }

        public init(end: String? = nil, nextSchedule: [CollectionScheduleStartEnd]? = nil, start: String? = nil) {
            self.end = end

            self.start = start

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
                start = try container.decode(String.self, forKey: .start)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                nextSchedule = try container.decode([CollectionScheduleStartEnd].self, forKey: .nextSchedule)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(end, forKey: .end)

            try? container.encodeIfPresent(start, forKey: .start)

            try? container.encodeIfPresent(nextSchedule, forKey: .nextSchedule)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: CollectionSchedule1
         Used By: Catalog
     */

    class CollectionSchedule1: Codable {
        public var end: String?

        public var start: String?

        public var nextSchedule: [CollectionScheduleStartEnd]?

        public enum CodingKeys: String, CodingKey {
            case end

            case start

            case nextSchedule = "next_schedule"
        }

        public init(end: String? = nil, nextSchedule: [CollectionScheduleStartEnd]? = nil, start: String? = nil) {
            self.end = end

            self.start = start

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
                start = try container.decode(String.self, forKey: .start)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                nextSchedule = try container.decode([CollectionScheduleStartEnd].self, forKey: .nextSchedule)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(end, forKey: .end)

            try? container.encodeIfPresent(start, forKey: .start)

            try? container.encodeIfPresent(nextSchedule, forKey: .nextSchedule)
        }
    }
}
