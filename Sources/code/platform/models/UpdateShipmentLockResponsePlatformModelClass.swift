

import Foundation
public extension PlatformClient {
    /*
         Model: UpdateShipmentLockResponse
         Used By: OrderManage
     */

    class UpdateShipmentLockResponse: Codable {
        public var success: Bool?

        public var message: String?

        public var checkResponse: [CheckResponse]?

        public enum CodingKeys: String, CodingKey {
            case success

            case message

            case checkResponse = "check_response"
        }

        public init(checkResponse: [CheckResponse]? = nil, message: String? = nil, success: Bool? = nil) {
            self.success = success

            self.message = message

            self.checkResponse = checkResponse
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                message = try container.decode(String.self, forKey: .message)

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

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(checkResponse, forKey: .checkResponse)
        }
    }
}
