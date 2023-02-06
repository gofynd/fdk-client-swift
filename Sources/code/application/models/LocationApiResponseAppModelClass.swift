

import Foundation
public extension ApplicationClient {
    /*
         Model: LocationApiResponse
         Used By: Logistic
     */
    class LocationApiResponse: Codable {
        public var data: LocationDataResponse

        public var success: Bool

        public var error: PincodeErrorSchemaResponse

        public enum CodingKeys: String, CodingKey {
            case data

            case success

            case error
        }

        public init(data: LocationDataResponse, error: PincodeErrorSchemaResponse, success: Bool) {
            self.data = data

            self.success = success

            self.error = error
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            data = try container.decode(LocationDataResponse.self, forKey: .data)

            success = try container.decode(Bool.self, forKey: .success)

            error = try container.decode(PincodeErrorSchemaResponse.self, forKey: .error)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(error, forKey: .error)
        }
    }
}
