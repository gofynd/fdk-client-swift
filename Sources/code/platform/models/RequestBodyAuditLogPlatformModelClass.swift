

import Foundation
public extension PlatformClient {
    /*
         Model: RequestBodyAuditLog
         Used By: AuditTrail
     */

    class RequestBodyAuditLog: Codable {
        public var logMeta: LogMetaObj

        public var logPayload: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case logMeta = "log_meta"

            case logPayload = "log_payload"
        }

        public init(logMeta: LogMetaObj, logPayload: [String: Any]) {
            self.logMeta = logMeta

            self.logPayload = logPayload
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            logMeta = try container.decode(LogMetaObj.self, forKey: .logMeta)

            logPayload = try container.decode([String: Any].self, forKey: .logPayload)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(logMeta, forKey: .logMeta)

            try? container.encodeIfPresent(logPayload, forKey: .logPayload)
        }
    }
}
