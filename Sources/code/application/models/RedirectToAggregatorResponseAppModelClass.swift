

import Foundation
public extension ApplicationClient {
    /*
         Model: RedirectToAggregatorResponse
         Used By: Payment
     */
    class RedirectToAggregatorResponse: Codable {
        public var success: Bool

        public var data: RedirectURL

        public enum CodingKeys: String, CodingKey {
            case success

            case data
        }

        public init(data: RedirectURL, success: Bool) {
            self.success = success

            self.data = data
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            data = try container.decode(RedirectURL.self, forKey: .data)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }
}
