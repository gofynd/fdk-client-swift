

import Foundation
public extension PlatformClient {
    /*
         Model: MetricCountResponse
         Used By: Orders
     */

    class MetricCountResponse: Codable {
        public var result: [MetricsCount]?

        public var success: Bool?

        public enum CodingKeys: String, CodingKey {
            case result

            case success
        }

        public init(result: [MetricsCount]? = nil, success: Bool? = nil) {
            self.result = result

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                result = try container.decode([MetricsCount].self, forKey: .result)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(result, forKey: .result)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}
