

import Foundation
public extension ApplicationClient {
    /*
         Model: GetPincodeCityResponse
         Used By: Logistic
     */
    class GetPincodeCityResponse: Codable {
        public var requestUuid: String

        public var stormbreakerUuid: String

        public var success: Bool

        public var data: [LogisticPincodeData]

        public enum CodingKeys: String, CodingKey {
            case requestUuid = "request_uuid"

            case stormbreakerUuid = "stormbreaker_uuid"

            case success

            case data
        }

        public init(data: [LogisticPincodeData], requestUuid: String, stormbreakerUuid: String, success: Bool) {
            self.requestUuid = requestUuid

            self.stormbreakerUuid = stormbreakerUuid

            self.success = success

            self.data = data
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            requestUuid = try container.decode(String.self, forKey: .requestUuid)

            stormbreakerUuid = try container.decode(String.self, forKey: .stormbreakerUuid)

            success = try container.decode(Bool.self, forKey: .success)

            data = try container.decode([LogisticPincodeData].self, forKey: .data)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(requestUuid, forKey: .requestUuid)

            try? container.encodeIfPresent(stormbreakerUuid, forKey: .stormbreakerUuid)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }
}
