

import Foundation
public extension ApplicationClient {
    /*
         Model: Promise
         Used By: Order
     */
    class Promise: Codable {
        public var showPromise: String?

        public var timestamp: TimeStampData?

        public enum CodingKeys: String, CodingKey {
            case showPromise = "show_promise"

            case timestamp
        }

        public init(showPromise: String? = nil, timestamp: TimeStampData? = nil) {
            self.showPromise = showPromise

            self.timestamp = timestamp
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                showPromise = try container.decode(String.self, forKey: .showPromise)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                timestamp = try container.decode(TimeStampData.self, forKey: .timestamp)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(showPromise, forKey: .showPromise)

            try? container.encodeIfPresent(timestamp, forKey: .timestamp)
        }
    }
}
