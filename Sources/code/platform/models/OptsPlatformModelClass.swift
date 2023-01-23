

import Foundation
public extension PlatformClient {
    /*
         Model: Opts
         Used By: FileStorage
     */

    class Opts: Codable {
        public var attempts: Int?

        public var timestamp: Int?

        public var delay: Int?

        public enum CodingKeys: String, CodingKey {
            case attempts

            case timestamp

            case delay
        }

        public init(attempts: Int? = nil, delay: Int? = nil, timestamp: Int? = nil) {
            self.attempts = attempts

            self.timestamp = timestamp

            self.delay = delay
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                attempts = try container.decode(Int.self, forKey: .attempts)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                timestamp = try container.decode(Int.self, forKey: .timestamp)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                delay = try container.decode(Int.self, forKey: .delay)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(attempts, forKey: .attempts)

            try? container.encodeIfPresent(timestamp, forKey: .timestamp)

            try? container.encodeIfPresent(delay, forKey: .delay)
        }
    }
}
