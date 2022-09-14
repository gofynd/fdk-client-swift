

import Foundation
public extension ApplicationClient {
    /*
         Model: ValidatePincodeResponseSchema
         Used By: Logistic
     */
    class ValidatePincodeResponseSchema: Codable {
        public var success: Bool

        public var error: ErrorResponse

        public var journey: String?

        public var source: String?

        public var toPincode: String

        public var requestUuid: String

        public var action: String

        public enum CodingKeys: String, CodingKey {
            case success

            case error

            case journey

            case source

            case toPincode = "to_pincode"

            case requestUuid = "request_uuid"

            case action
        }

        public init(action: String, error: ErrorResponse, journey: String? = nil, requestUuid: String, source: String? = nil, success: Bool, toPincode: String) {
            self.success = success

            self.error = error

            self.journey = journey

            self.source = source

            self.toPincode = toPincode

            self.requestUuid = requestUuid

            self.action = action
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            error = try container.decode(ErrorResponse.self, forKey: .error)

            do {
                journey = try container.decode(String.self, forKey: .journey)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                source = try container.decode(String.self, forKey: .source)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            toPincode = try container.decode(String.self, forKey: .toPincode)

            requestUuid = try container.decode(String.self, forKey: .requestUuid)

            action = try container.decode(String.self, forKey: .action)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(journey, forKey: .journey)

            try? container.encodeIfPresent(source, forKey: .source)

            try? container.encodeIfPresent(toPincode, forKey: .toPincode)

            try? container.encodeIfPresent(requestUuid, forKey: .requestUuid)

            try? container.encodeIfPresent(action, forKey: .action)
        }
    }
}
