

import Foundation
public extension ApplicationClient.Catalog {
    /*
         Model: DiscountMeta
         Used By: Catalog
     */
    class DiscountMeta: Codable {
        public var numberOfMinutes: Int?

        public var end: String?

        public var timer: Bool?

        public var start: String?

        public enum CodingKeys: String, CodingKey {
            case numberOfMinutes = "number_of_minutes"

            case end

            case timer

            case start
        }

        public init(end: String? = nil, numberOfMinutes: Int? = nil, start: String? = nil, timer: Bool? = nil) {
            self.numberOfMinutes = numberOfMinutes

            self.end = end

            self.timer = timer

            self.start = start
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                numberOfMinutes = try container.decode(Int.self, forKey: .numberOfMinutes)

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
                timer = try container.decode(Bool.self, forKey: .timer)

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

            try? container.encodeIfPresent(numberOfMinutes, forKey: .numberOfMinutes)

            try? container.encodeIfPresent(end, forKey: .end)

            try? container.encodeIfPresent(timer, forKey: .timer)

            try? container.encodeIfPresent(start, forKey: .start)
        }
    }
}
