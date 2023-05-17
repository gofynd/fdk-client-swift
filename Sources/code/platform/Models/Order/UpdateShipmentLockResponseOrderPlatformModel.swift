

import Foundation

public extension PlatformClient.Order {
    /*
         Model: UpdateShipmentLockResponse
         Used By: Order
     */

    class UpdateShipmentLockResponse: Codable {
        public var message: String

        public var checkResponse: [CheckResponse]?

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case message

            case checkResponse = "check_response"

            case success
        }

        public init(checkResponse: [CheckResponse]? = nil, message: String, success: Bool) {
            self.message = message

            self.checkResponse = checkResponse

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            message = try container.decode(String.self, forKey: .message)

            do {
                checkResponse = try container.decode([CheckResponse].self, forKey: .checkResponse)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(checkResponse, forKey: .checkResponse)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: UpdateShipmentLockResponse
         Used By: Order
     */

    class UpdateShipmentLockResponse: Codable {
        public var message: String

        public var checkResponse: [CheckResponse]?

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case message

            case checkResponse = "check_response"

            case success
        }

        public init(checkResponse: [CheckResponse]? = nil, message: String, success: Bool) {
            self.message = message

            self.checkResponse = checkResponse

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            message = try container.decode(String.self, forKey: .message)

            do {
                checkResponse = try container.decode([CheckResponse].self, forKey: .checkResponse)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(checkResponse, forKey: .checkResponse)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}
