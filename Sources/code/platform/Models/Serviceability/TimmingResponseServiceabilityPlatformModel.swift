

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: TimmingResponse
         Used By: Serviceability
     */

    class TimmingResponse: Codable {
        public var closing: OpeningClosing?

        public var opening: OpeningClosing?

        public var open: Bool?

        public var weekday: String?

        public enum CodingKeys: String, CodingKey {
            case closing

            case opening

            case open

            case weekday
        }

        public init(closing: OpeningClosing? = nil, open: Bool? = nil, opening: OpeningClosing? = nil, weekday: String? = nil) {
            self.closing = closing

            self.opening = opening

            self.open = open

            self.weekday = weekday
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                closing = try container.decode(OpeningClosing.self, forKey: .closing)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                opening = try container.decode(OpeningClosing.self, forKey: .opening)

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
                weekday = try container.decode(String.self, forKey: .weekday)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(closing, forKey: .closing)

            try? container.encodeIfPresent(opening, forKey: .opening)

            try? container.encodeIfPresent(open, forKey: .open)

            try? container.encodeIfPresent(weekday, forKey: .weekday)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: TimmingResponse
         Used By: Serviceability
     */

    class TimmingResponse: Codable {
        public var closing: OpeningClosing?

        public var opening: OpeningClosing?

        public var open: Bool?

        public var weekday: String?

        public enum CodingKeys: String, CodingKey {
            case closing

            case opening

            case open

            case weekday
        }

        public init(closing: OpeningClosing? = nil, open: Bool? = nil, opening: OpeningClosing? = nil, weekday: String? = nil) {
            self.closing = closing

            self.opening = opening

            self.open = open

            self.weekday = weekday
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                closing = try container.decode(OpeningClosing.self, forKey: .closing)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                opening = try container.decode(OpeningClosing.self, forKey: .opening)

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
                weekday = try container.decode(String.self, forKey: .weekday)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(closing, forKey: .closing)

            try? container.encodeIfPresent(opening, forKey: .opening)

            try? container.encodeIfPresent(open, forKey: .open)

            try? container.encodeIfPresent(weekday, forKey: .weekday)
        }
    }
}
