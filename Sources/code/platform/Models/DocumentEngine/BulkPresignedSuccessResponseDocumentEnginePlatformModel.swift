

import Foundation

public extension PlatformClient.DocumentEngine {
    /*
         Model: BulkPresignedSuccessResponse
         Used By: DocumentEngine
     */

    class BulkPresignedSuccessResponse: Codable {
        public var success: String

        public var batchId: String?

        public var presignedType: String?

        public var presignedUrl: String

        public var expiresIn: Double?

        public enum CodingKeys: String, CodingKey {
            case success

            case batchId = "batch_id"

            case presignedType = "presigned_type"

            case presignedUrl = "presigned_url"

            case expiresIn = "expires_in"
        }

        public init(batchId: String? = nil, expiresIn: Double? = nil, presignedType: String? = nil, presignedUrl: String, success: String) {
            self.success = success

            self.batchId = batchId

            self.presignedType = presignedType

            self.presignedUrl = presignedUrl

            self.expiresIn = expiresIn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(String.self, forKey: .success)

            do {
                batchId = try container.decode(String.self, forKey: .batchId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                presignedType = try container.decode(String.self, forKey: .presignedType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            presignedUrl = try container.decode(String.self, forKey: .presignedUrl)

            do {
                expiresIn = try container.decode(Double.self, forKey: .expiresIn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(batchId, forKey: .batchId)

            try? container.encodeIfPresent(presignedType, forKey: .presignedType)

            try? container.encodeIfPresent(presignedUrl, forKey: .presignedUrl)

            try? container.encodeIfPresent(expiresIn, forKey: .expiresIn)
        }
    }
}
