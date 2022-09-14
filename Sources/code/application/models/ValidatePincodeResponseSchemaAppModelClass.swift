

import Foundation
public extension ApplicationClient {
    /*
         Model: ValidatePincodeResponseSchema
         Used By: Logistic
     */
    class ValidatePincodeResponseSchema: Codable {
        public var error: ErrorResponse

        public var requestUuid: String

        public var journey: String?

        public var action: String

        public var success: Bool

        public var toPincode: String

        public var source: String?

        public enum CodingKeys: String, CodingKey {
            case error

            case requestUuid = "request_uuid"

            case journey

            case action

            case success

            case toPincode = "to_pincode"

            case source
        }

        public init(action: String, error: ErrorResponse, journey: String? = nil, requestUuid: String, source: String? = nil, success: Bool, toPincode: String) {
            self.error = error

            self.requestUuid = requestUuid

            self.journey = journey

            self.action = action

            self.success = success

            self.toPincode = toPincode

            self.source = source
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            error = try container.decode(ErrorResponse.self, forKey: .error)

            requestUuid = try container.decode(String.self, forKey: .requestUuid)

            do {
                journey = try container.decode(String.self, forKey: .journey)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            action = try container.decode(String.self, forKey: .action)

            success = try container.decode(Bool.self, forKey: .success)

            toPincode = try container.decode(String.self, forKey: .toPincode)

            do {
                source = try container.decode(String.self, forKey: .source)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(requestUuid, forKey: .requestUuid)

            try? container.encodeIfPresent(journey, forKey: .journey)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(toPincode, forKey: .toPincode)

            try? container.encodeIfPresent(source, forKey: .source)
        }
    }
}
