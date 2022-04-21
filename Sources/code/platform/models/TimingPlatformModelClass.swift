

import Foundation
public extension PlatformClient {
    /*
         Model: Timing
         Used By: Order
     */

    class Timing: Codable {
        public var opening: Opening?

        public var weekday: String?

        public var open: Bool?

        public var closing: Closing?

        public enum CodingKeys: String, CodingKey {
            case opening

            case weekday

            case open

            case closing
        }

        public init(closing: Closing? = nil, open: Bool? = nil, opening: Opening? = nil, weekday: String? = nil) {
            self.opening = opening

            self.weekday = weekday

            self.open = open

            self.closing = closing
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                opening = try container.decode(Opening.self, forKey: .opening)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                weekday = try container.decode(String.self, forKey: .weekday)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                open = try container.decode(Bool.self, forKey: .open)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                closing = try container.decode(Closing.self, forKey: .closing)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(opening, forKey: .opening)

            try? container.encodeIfPresent(weekday, forKey: .weekday)

            try? container.encodeIfPresent(open, forKey: .open)

            try? container.encodeIfPresent(closing, forKey: .closing)
        }
    }
}
