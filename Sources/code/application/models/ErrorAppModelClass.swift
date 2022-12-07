

import Foundation
public extension ApplicationClient {
    /*
         Model: Error
         Used By: Rewards
     */
    class Error: Codable {
        public var code: Int?

        public var exception: String?

        public var info: String?

        public var message: String?

        public enum CodingKeys: String, CodingKey {
            case code

            case exception

            case info

            case message
        }

        public init(code: Int? = nil, exception: String? = nil, info: String? = nil, message: String? = nil) {
            self.code = code

            self.exception = exception

            self.info = info

            self.message = message
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                code = try container.decode(Int.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                exception = try container.decode(String.self, forKey: .exception)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                info = try container.decode(String.self, forKey: .info)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(exception, forKey: .exception)

            try? container.encodeIfPresent(info, forKey: .info)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }
}
