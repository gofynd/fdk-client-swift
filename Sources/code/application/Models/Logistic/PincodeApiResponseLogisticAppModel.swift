

import Foundation
public extension ApplicationClient.Logistic {
    /*
         Model: PincodeApiResponse
         Used By: Logistic
     */
    class PincodeApiResponse: Codable {
        public var stormbreakerUuid: String

        public var data: [PincodeDataResponse]?

        public var requestUuid: String

        public var error: PincodeErrorSchemaResponse

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case stormbreakerUuid = "stormbreaker_uuid"

            case data

            case requestUuid = "request_uuid"

            case error

            case success
        }

        public init(data: [PincodeDataResponse]? = nil, error: PincodeErrorSchemaResponse, requestUuid: String, stormbreakerUuid: String, success: Bool) {
            self.stormbreakerUuid = stormbreakerUuid

            self.data = data

            self.requestUuid = requestUuid

            self.error = error

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            stormbreakerUuid = try container.decode(String.self, forKey: .stormbreakerUuid)

            do {
                data = try container.decode([PincodeDataResponse].self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            requestUuid = try container.decode(String.self, forKey: .requestUuid)

            error = try container.decode(PincodeErrorSchemaResponse.self, forKey: .error)

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(stormbreakerUuid, forKey: .stormbreakerUuid)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(requestUuid, forKey: .requestUuid)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}
