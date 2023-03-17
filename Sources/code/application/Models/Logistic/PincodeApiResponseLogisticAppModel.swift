

import Foundation
public extension ApplicationClient.Logistic {
    /*
         Model: PincodeApiResponse
         Used By: Logistic
     */
    class PincodeApiResponse: Codable {
        public var stormbreakerUuid: String

        public var success: Bool

        public var requestUuid: String

        public var data: [PincodeDataResponse]?

        public var error: PincodeErrorSchemaResponse

        public enum CodingKeys: String, CodingKey {
            case stormbreakerUuid = "stormbreaker_uuid"

            case success

            case requestUuid = "request_uuid"

            case data

            case error
        }

        public init(data: [PincodeDataResponse]? = nil, error: PincodeErrorSchemaResponse, requestUuid: String, stormbreakerUuid: String, success: Bool) {
            self.stormbreakerUuid = stormbreakerUuid

            self.success = success

            self.requestUuid = requestUuid

            self.data = data

            self.error = error
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            stormbreakerUuid = try container.decode(String.self, forKey: .stormbreakerUuid)

            success = try container.decode(Bool.self, forKey: .success)

            requestUuid = try container.decode(String.self, forKey: .requestUuid)

            do {
                data = try container.decode([PincodeDataResponse].self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            error = try container.decode(PincodeErrorSchemaResponse.self, forKey: .error)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(stormbreakerUuid, forKey: .stormbreakerUuid)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(requestUuid, forKey: .requestUuid)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(error, forKey: .error)
        }
    }
}
