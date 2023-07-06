

import Foundation

public extension PlatformClient.Order {
    /*
         Model: TrackingList
         Used By: Order
     */

    class TrackingList: Codable {
        public var isPassed: Bool?

        public var isCurrent: Bool?

        public var status: String

        public var time: String?

        public var text: String

        public enum CodingKeys: String, CodingKey {
            case isPassed = "is_passed"

            case isCurrent = "is_current"

            case status

            case time

            case text
        }

        public init(isCurrent: Bool? = nil, isPassed: Bool? = nil, status: String, text: String, time: String? = nil) {
            self.isPassed = isPassed

            self.isCurrent = isCurrent

            self.status = status

            self.time = time

            self.text = text
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isPassed = try container.decode(Bool.self, forKey: .isPassed)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isCurrent = try container.decode(Bool.self, forKey: .isCurrent)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode(String.self, forKey: .status)

            do {
                time = try container.decode(String.self, forKey: .time)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            text = try container.decode(String.self, forKey: .text)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isPassed, forKey: .isPassed)

            try? container.encodeIfPresent(isCurrent, forKey: .isCurrent)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(time, forKey: .time)

            try? container.encodeIfPresent(text, forKey: .text)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: TrackingList
         Used By: Order
     */

    class TrackingList: Codable {
        public var isPassed: Bool?

        public var isCurrent: Bool?

        public var status: String

        public var time: String?

        public var text: String

        public enum CodingKeys: String, CodingKey {
            case isPassed = "is_passed"

            case isCurrent = "is_current"

            case status

            case time

            case text
        }

        public init(isCurrent: Bool? = nil, isPassed: Bool? = nil, status: String, text: String, time: String? = nil) {
            self.isPassed = isPassed

            self.isCurrent = isCurrent

            self.status = status

            self.time = time

            self.text = text
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isPassed = try container.decode(Bool.self, forKey: .isPassed)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isCurrent = try container.decode(Bool.self, forKey: .isCurrent)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode(String.self, forKey: .status)

            do {
                time = try container.decode(String.self, forKey: .time)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            text = try container.decode(String.self, forKey: .text)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isPassed, forKey: .isPassed)

            try? container.encodeIfPresent(isCurrent, forKey: .isCurrent)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(time, forKey: .time)

            try? container.encodeIfPresent(text, forKey: .text)
        }
    }
}
