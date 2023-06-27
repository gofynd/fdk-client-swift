

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: OutstandingOrderDetailsResponse
         Used By: Payment
     */
    class OutstandingOrderDetailsResponse: Codable {
        public var data: [[String: Any]]?

        public var success: Bool

        public var message: String?

        public var statusCode: Int

        public enum CodingKeys: String, CodingKey {
            case data

            case success

            case message

            case statusCode = "status_code"
        }

        public init(data: [[String: Any]]? = nil, message: String? = nil, statusCode: Int, success: Bool) {
            self.data = data

            self.success = success

            self.message = message

            self.statusCode = statusCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                data = try container.decode([[String: Any]].self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            success = try container.decode(Bool.self, forKey: .success)

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            statusCode = try container.decode(Int.self, forKey: .statusCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(data, forKey: .data)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encode(message, forKey: .message)

            try? container.encodeIfPresent(statusCode, forKey: .statusCode)
        }
    }
}
