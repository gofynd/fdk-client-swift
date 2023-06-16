

import Foundation

public extension PlatformClient.Communication {
    /*
         Model: InvalidID
         Used By: Communication
     */

    class InvalidID: Codable {
        public var message: String?

        public var sentry: String?

        public enum CodingKeys: String, CodingKey {
            case message

            case sentry
        }

        public init(message: String? = nil, sentry: String? = nil) {
            self.message = message

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
                sentry = try container.decode(String.self, forKey: .sentry)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(sentry, forKey: .sentry)
        }
    }
}

public extension PlatformClient.ApplicationClient.Communication {
    /*
         Model: InvalidID
         Used By: Communication
     */

    class InvalidID: Codable {
        public var message: String?

        public var sentry: String?

        public enum CodingKeys: String, CodingKey {
            case message

            case sentry
        }

        public init(message: String? = nil, sentry: String? = nil) {
            self.message = message

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
                sentry = try container.decode(String.self, forKey: .sentry)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(sentry, forKey: .sentry)
        }
    }
}
