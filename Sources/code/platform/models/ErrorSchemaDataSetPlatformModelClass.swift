

import Foundation
public extension PlatformClient {
    /*
         Model: ErrorSchemaDataSet
         Used By: Orders
     */

    class ErrorSchemaDataSet: Codable {
        public var success: Bool?

        public var reason: String?

        public enum CodingKeys: String, CodingKey {
            case success

            case reason
        }

        public init(reason: String? = nil, success: Bool? = nil) {
            self.success = success

            self.reason = reason
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                reason = try container.decode(String.self, forKey: .reason)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(reason, forKey: .reason)
        }
    }
}
