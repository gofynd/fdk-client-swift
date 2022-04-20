

import Foundation
public extension PlatformClient {
    /*
         Model: TriggerJobResponse
         Used By: Communication
     */

    class TriggerJobResponse: Codable {
        public var status: Int?

        public enum CodingKeys: String, CodingKey {
            case status
        }

        public init(status: Int? = nil) {
            self.status = status
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                status = try container.decode(Int.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)
        }
    }
}
