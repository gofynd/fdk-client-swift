

import Foundation
public extension ApplicationClient {
    /*
         Model: Promise
         Used By: Order
     */
    class Promise: Codable {
        public var timestamp: TimeStampData?

        public var showPromise: String?

        public enum CodingKeys: String, CodingKey {
            case timestamp

            case showPromise = "show_promise"
        }

        public init(showPromise: String? = nil, timestamp: TimeStampData? = nil) {
            self.timestamp = timestamp

            self.showPromise = showPromise
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                timestamp = try container.decode(TimeStampData.self, forKey: .timestamp)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                showPromise = try container.decode(String.self, forKey: .showPromise)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(timestamp, forKey: .timestamp)

            try? container.encodeIfPresent(showPromise, forKey: .showPromise)
        }
    }
}
