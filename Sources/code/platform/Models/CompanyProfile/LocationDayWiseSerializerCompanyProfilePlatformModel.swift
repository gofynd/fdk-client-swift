

import Foundation

public extension PlatformClient.CompanyProfile {
    /*
         Model: LocationDayWiseSerializer
         Used By: CompanyProfile
     */

    class LocationDayWiseSerializer: Codable {
        public var weekday: String

        public var closing: LocationTimingSerializer?

        public var open: Bool

        public var opening: LocationTimingSerializer?

        public enum CodingKeys: String, CodingKey {
            case weekday

            case closing

            case open

            case opening
        }

        public init(closing: LocationTimingSerializer? = nil, open: Bool, opening: LocationTimingSerializer? = nil, weekday: String) {
            self.weekday = weekday

            self.closing = closing

            self.open = open

            self.opening = opening
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            weekday = try container.decode(String.self, forKey: .weekday)

            do {
                closing = try container.decode(LocationTimingSerializer.self, forKey: .closing)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            open = try container.decode(Bool.self, forKey: .open)

            do {
                opening = try container.decode(LocationTimingSerializer.self, forKey: .opening)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(weekday, forKey: .weekday)

            try? container.encodeIfPresent(closing, forKey: .closing)

            try? container.encodeIfPresent(open, forKey: .open)

            try? container.encodeIfPresent(opening, forKey: .opening)
        }
    }
}
