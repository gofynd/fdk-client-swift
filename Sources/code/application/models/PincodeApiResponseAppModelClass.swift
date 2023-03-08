

import Foundation
public extension ApplicationClient {
    /*
         Model: PincodeApiResponse
         Used By: Logistic
     */
    class PincodeApiResponse: Codable {
        public var data: [PincodeDataResponse]?

        public var stormbreakerUuid: String

        public var success: Bool

        public var error: PincodeErrorSchemaResponse

        public var requestUuid: String

        public enum CodingKeys: String, CodingKey {
            case data

            case stormbreakerUuid = "stormbreaker_uuid"

            case success

            case error

            case requestUuid = "request_uuid"
        }

        public init(data: [PincodeDataResponse]? = nil, error: PincodeErrorSchemaResponse, requestUuid: String, stormbreakerUuid: String, success: Bool) {
            self.data = data

            self.stormbreakerUuid = stormbreakerUuid

            self.success = success

            self.error = error

            self.requestUuid = requestUuid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                data = try container.decode([PincodeDataResponse].self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            stormbreakerUuid = try container.decode(String.self, forKey: .stormbreakerUuid)

            success = try container.decode(Bool.self, forKey: .success)

            error = try container.decode(PincodeErrorSchemaResponse.self, forKey: .error)

            requestUuid = try container.decode(String.self, forKey: .requestUuid)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(stormbreakerUuid, forKey: .stormbreakerUuid)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(requestUuid, forKey: .requestUuid)
        }
    }
}
