

import Foundation
public extension PlatformClient {
    /*
         Model: StatsProcessedSms
         Used By: Communication
     */

    class StatsProcessedSms: Codable {
        public var success: Int?

        public var failed: Int?

        public var suppressed: Int?

        public enum CodingKeys: String, CodingKey {
            case success

            case failed

            case suppressed
        }

        public init(failed: Int? = nil, success: Int? = nil, suppressed: Int? = nil) {
            self.success = success

            self.failed = failed

            self.suppressed = suppressed
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                success = try container.decode(Int.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                failed = try container.decode(Int.self, forKey: .failed)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                suppressed = try container.decode(Int.self, forKey: .suppressed)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(failed, forKey: .failed)

            try? container.encodeIfPresent(suppressed, forKey: .suppressed)
        }
    }
}
