

import Foundation
public extension ApplicationClient {
    /*
         Model: PincodeApiResponse
         Used By: Logistic
     */
    class PincodeApiResponse: Codable {
        public var error: PincodeErrorSchemaResponse

        public var data: [PincodeDataResponse]?

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case error

            case data

            case success
        }

        public init(data: [PincodeDataResponse]? = nil, error: PincodeErrorSchemaResponse, success: Bool) {
            self.error = error

            self.data = data

            self.success = success
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

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}
