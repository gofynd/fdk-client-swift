

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: LocationDayWiseSerializer
         Used By: Catalog
     */

    class LocationDayWiseSerializer: Codable {
        public var open: Bool

        public var weekday: String

        public var closing: LocationTimingSerializer?

        public var opening: LocationTimingSerializer?

        public enum CodingKeys: String, CodingKey {
            case open

            case weekday

            case closing

            case opening
        }

        public init(closing: LocationTimingSerializer? = nil, open: Bool, opening: LocationTimingSerializer? = nil, weekday: String) {
            self.open = open

            self.weekday = weekday

            self.closing = closing

            self.opening = opening
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            open = try container.decode(Bool.self, forKey: .open)

            weekday = try container.decode(String.self, forKey: .weekday)

            do {
                closing = try container.decode(LocationTimingSerializer.self, forKey: .closing)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                opening = try container.decode(LocationTimingSerializer.self, forKey: .opening)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(open, forKey: .open)

            try? container.encodeIfPresent(weekday, forKey: .weekday)

            try? container.encodeIfPresent(closing, forKey: .closing)

            try? container.encodeIfPresent(opening, forKey: .opening)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: LocationDayWiseSerializer
         Used By: Catalog
     */

    class LocationDayWiseSerializer: Codable {
        public var open: Bool

        public var weekday: String

        public var closing: LocationTimingSerializer?

        public var opening: LocationTimingSerializer?

        public enum CodingKeys: String, CodingKey {
            case open

            case weekday

            case closing

            case opening
        }

        public init(closing: LocationTimingSerializer? = nil, open: Bool, opening: LocationTimingSerializer? = nil, weekday: String) {
            self.open = open

            self.weekday = weekday

            self.closing = closing

            self.opening = opening
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            open = try container.decode(Bool.self, forKey: .open)

            weekday = try container.decode(String.self, forKey: .weekday)

            do {
                closing = try container.decode(LocationTimingSerializer.self, forKey: .closing)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                opening = try container.decode(LocationTimingSerializer.self, forKey: .opening)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(open, forKey: .open)

            try? container.encodeIfPresent(weekday, forKey: .weekday)

            try? container.encodeIfPresent(closing, forKey: .closing)

            try? container.encodeIfPresent(opening, forKey: .opening)
        }
    }
}
