

import Foundation
public extension ApplicationClient {
    /*
         Model: PincodeApiResponse
         Used By: Logistic
     */
    class PincodeApiResponse: Codable {
        public var data: [DataResponse]?

        public var success: Bool

        public var error: Error

        public enum CodingKeys: String, CodingKey {
            case data

            case success

            case error
        }

        public init(data: [DataResponse]? = nil, error: Error, success: Bool) {
            self.data = data

            self.success = success

            self.error = error
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                data = try container.decode([DataResponse].self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            success = try container.decode(Bool.self, forKey: .success)

            error = try container.decode(Error.self, forKey: .error)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(error, forKey: .error)
        }
    }
}
