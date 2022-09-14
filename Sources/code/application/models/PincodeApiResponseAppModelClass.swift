

import Foundation
public extension ApplicationClient {
    /*
         Model: PincodeApiResponse
         Used By: Logistic
     */
    class PincodeApiResponse: Codable {
        public var error: Error

        public var data: [DataResponse]?

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case error

            case data

            case success
        }

        public init(data: [DataResponse]? = nil, error: Error, success: Bool) {
            self.error = error

            self.data = data

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            error = try container.decode(Error.self, forKey: .error)

            do {
                data = try container.decode([DataResponse].self, forKey: .data)

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
