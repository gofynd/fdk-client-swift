

import Foundation
public extension ApplicationClient {
    /*
         Model: LocationApiResponse
         Used By: Logistic
     */
    class LocationApiResponse: Codable {
        public var error: PincodeErrorSchemaResponse

        public var success: Bool

        public var data: LocationDataResponse

        public enum CodingKeys: String, CodingKey {
            case error

            case success

            case data
        }

        public init(data: LocationDataResponse, error: PincodeErrorSchemaResponse, success: Bool) {
            self.error = error

            self.success = success

            self.data = data
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            error = try container.decode(PincodeErrorSchemaResponse.self, forKey: .error)

            success = try container.decode(Bool.self, forKey: .success)

            data = try container.decode(LocationDataResponse.self, forKey: .data)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }
}
