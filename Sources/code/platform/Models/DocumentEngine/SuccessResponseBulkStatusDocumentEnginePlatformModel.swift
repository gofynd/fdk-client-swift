

import Foundation

public extension PlatformClient.DocumentEngine {
    /*
         Model: SuccessResponseBulkStatus
         Used By: DocumentEngine
     */

    class SuccessResponseBulkStatus: Codable {
        public var success: Bool

        public var status: String

        public var traceId: String?

        public enum CodingKeys: String, CodingKey {
            case success

            case status

            case traceId = "trace_id"
        }

        public init(status: String, success: Bool, traceId: String? = nil) {
            self.success = success

            self.status = status

            self.traceId = traceId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            status = try container.decode(String.self, forKey: .status)

            do {
                traceId = try container.decode(String.self, forKey: .traceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(traceId, forKey: .traceId)
        }
    }
}
