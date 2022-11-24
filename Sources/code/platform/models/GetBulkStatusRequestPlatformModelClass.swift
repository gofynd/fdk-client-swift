

import Foundation
public extension PlatformClient {
    /*
         Model: GetBulkStatusRequest
         Used By: DocumentEngine
     */

    class GetBulkStatusRequest: Codable {
        public var batchId: String

        public enum CodingKeys: String, CodingKey {
            case batchId = "batch_id"
        }

        public init(batchId: String) {
            self.batchId = batchId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            batchId = try container.decode(String.self, forKey: .batchId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(batchId, forKey: .batchId)
        }
    }
}
