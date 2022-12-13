

import Foundation
public extension PlatformClient {
    /*
         Model: TrackingList
         Used By: Order
     */

    class TrackingList: Codable {
        public var time: String?

        public var status: String

        public var text: String

        public var isCurrent: Bool?

        public var isPassed: Bool?

        public enum CodingKeys: String, CodingKey {
            case time

            case status

            case text

            case isCurrent = "is_current"

            case isPassed = "is_passed"
        }

        public init(isCurrent: Bool? = nil, isPassed: Bool? = nil, status: String, text: String, time: String? = nil) {
            self.time = time

            self.status = status

            self.text = text

            self.isCurrent = isCurrent

            self.isPassed = isPassed
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                time = try container.decode(String.self, forKey: .time)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode(String.self, forKey: .status)

            text = try container.decode(String.self, forKey: .text)

            do {
                isCurrent = try container.decode(Bool.self, forKey: .isCurrent)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isPassed = try container.decode(Bool.self, forKey: .isPassed)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(time, forKey: .time)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(text, forKey: .text)

            try? container.encodeIfPresent(isCurrent, forKey: .isCurrent)

            try? container.encodeIfPresent(isPassed, forKey: .isPassed)
        }
    }
}
