

import Foundation

public extension PlatformClient.Communication {
    /*
         Model: InvalidRangeErrorReqPositive
         Used By: Communication
     */

    class InvalidRangeErrorReqPositive: Codable {
        public var message: String?

        public var code: Int?

        public var sentry: String?

        public enum CodingKeys: String, CodingKey {
            case message

            case code

            case sentry
        }

        public init(code: Int? = nil, message: String? = nil, sentry: String? = nil) {
            self.message = message

            self.code = code

            self.sentry = sentry
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
                code = try container.decode(Int.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sentry = try container.decode(String.self, forKey: .sentry)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(sentry, forKey: .sentry)
        }
    }
}

public extension PlatformClient.ApplicationClient.Communication {
    /*
         Model: InvalidRangeErrorReqPositive
         Used By: Communication
     */

    class InvalidRangeErrorReqPositive: Codable {
        public var message: String?

        public var code: Int?

        public var sentry: String?

        public enum CodingKeys: String, CodingKey {
            case message

            case code

            case sentry
        }

        public init(code: Int? = nil, message: String? = nil, sentry: String? = nil) {
            self.message = message

            self.code = code

            self.sentry = sentry
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
                code = try container.decode(Int.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sentry = try container.decode(String.self, forKey: .sentry)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(sentry, forKey: .sentry)
        }
    }
}
