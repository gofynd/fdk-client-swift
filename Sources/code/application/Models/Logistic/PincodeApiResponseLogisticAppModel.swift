

import Foundation
public extension ApplicationClient.Logistic {
    /*
         Model: PincodeApiResponse
         Used By: Logistic
     */
    class PincodeApiResponse: Codable {
        public var success: Bool

        public var error: PincodeErrorSchemaResponse

        public var data: [PincodeDataResponse]?

        public enum CodingKeys: String, CodingKey {
            case success

            case error

            case data
        }

        public init(data: [PincodeDataResponse]? = nil, error: PincodeErrorSchemaResponse, success: Bool) {
            self.success = success

            self.error = error

            self.data = data
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            error = try container.decode(PincodeErrorSchemaResponse.self, forKey: .error)

            do {
                data = try container.decode([PincodeDataResponse].self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }
}
