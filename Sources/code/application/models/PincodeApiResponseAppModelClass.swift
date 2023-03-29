

import Foundation
public extension ApplicationClient {
    /*
         Model: PincodeApiResponse
         Used By: Logistic
     */
    class PincodeApiResponse: Codable {
        public var error: PincodeErrorSchemaResponse

        public var data: [PincodeDataResponse]?

        public var requestUuid: String

        public var success: Bool

        public var stormbreakerUuid: String

        public enum CodingKeys: String, CodingKey {
            case error

            case data

            case requestUuid = "request_uuid"

            case success

            case stormbreakerUuid = "stormbreaker_uuid"
        }

        public init(data: [PincodeDataResponse]? = nil, error: PincodeErrorSchemaResponse, requestUuid: String, stormbreakerUuid: String, success: Bool) {
            self.error = error

            self.data = data

            self.requestUuid = requestUuid

            self.success = success

            self.stormbreakerUuid = stormbreakerUuid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            error = try container.decode(PincodeErrorSchemaResponse.self, forKey: .error)

            do {
                data = try container.decode([PincodeDataResponse].self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            requestUuid = try container.decode(String.self, forKey: .requestUuid)

            success = try container.decode(Bool.self, forKey: .success)

            stormbreakerUuid = try container.decode(String.self, forKey: .stormbreakerUuid)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(requestUuid, forKey: .requestUuid)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(stormbreakerUuid, forKey: .stormbreakerUuid)
        }
    }
}
