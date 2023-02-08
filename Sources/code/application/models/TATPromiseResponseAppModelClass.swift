

import Foundation
public extension ApplicationClient {
    /*
         Model: TATPromiseResponse
         Used By: Logistic
     */
    class TATPromiseResponse: Codable {
        public var timestamp: TATTimestampResponse?

        public var formatted: TATFormattedResponse?

        public enum CodingKeys: String, CodingKey {
            case timestamp

            case formatted
        }

        public init(formatted: TATFormattedResponse? = nil, timestamp: TATTimestampResponse? = nil) {
            self.timestamp = timestamp

            self.formatted = formatted
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                timestamp = try container.decode(TATTimestampResponse.self, forKey: .timestamp)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                formatted = try container.decode(TATFormattedResponse.self, forKey: .formatted)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(timestamp, forKey: .timestamp)

            try? container.encodeIfPresent(formatted, forKey: .formatted)
        }
    }
}
