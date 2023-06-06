

import Foundation

public extension PlatformClient.Order {
    /*
         Model: UpdateShipmentLockResponse
         Used By: Order
     */

    class UpdateShipmentLockResponse: Codable {
        public var message: String?

        public var success: Bool?

        public var checkResponse: [CheckResponse]?

        public enum CodingKeys: String, CodingKey {
            case message

            case success

            case checkResponse = "check_response"
        }

        public init(checkResponse: [CheckResponse]? = nil, message: String? = nil, success: Bool? = nil) {
            self.message = message

            self.success = success

            self.checkResponse = checkResponse
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                checkResponse = try container.decode([CheckResponse].self, forKey: .checkResponse)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(checkResponse, forKey: .checkResponse)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: UpdateShipmentLockResponse
         Used By: Order
     */

    class UpdateShipmentLockResponse: Codable {
        public var message: String?

        public var success: Bool?

        public var checkResponse: [CheckResponse]?

        public enum CodingKeys: String, CodingKey {
            case message

            case success

            case checkResponse = "check_response"
        }

        public init(checkResponse: [CheckResponse]? = nil, message: String? = nil, success: Bool? = nil) {
            self.message = message

            self.success = success

            self.checkResponse = checkResponse
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                checkResponse = try container.decode([CheckResponse].self, forKey: .checkResponse)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(checkResponse, forKey: .checkResponse)
        }
    }
}
