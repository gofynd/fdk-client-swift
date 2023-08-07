

import Foundation

public extension PlatformClient.Partner {
    /*
         Model: SetupProductRes
         Used By: Partner
     */

    class SetupProductRes: Codable {
        public var message: String?

        public var requestId: String?

        public var nextStep: Double?

        public var cliWaitTime: Double?

        public enum CodingKeys: String, CodingKey {
            case message

            case requestId = "request_id"

            case nextStep = "next_step"

            case cliWaitTime = "cli_wait_time"
        }

        public init(cliWaitTime: Double? = nil, message: String? = nil, nextStep: Double? = nil, requestId: String? = nil) {
            self.message = message

            self.requestId = requestId

            self.nextStep = nextStep

            self.cliWaitTime = cliWaitTime
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
                requestId = try container.decode(String.self, forKey: .requestId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                nextStep = try container.decode(Double.self, forKey: .nextStep)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cliWaitTime = try container.decode(Double.self, forKey: .cliWaitTime)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(requestId, forKey: .requestId)

            try? container.encodeIfPresent(nextStep, forKey: .nextStep)

            try? container.encodeIfPresent(cliWaitTime, forKey: .cliWaitTime)
        }
    }
}

public extension PlatformClient.ApplicationClient.Partner {
    /*
         Model: SetupProductRes
         Used By: Partner
     */

    class SetupProductRes: Codable {
        public var message: String?

        public var requestId: String?

        public var nextStep: Double?

        public var cliWaitTime: Double?

        public enum CodingKeys: String, CodingKey {
            case message

            case requestId = "request_id"

            case nextStep = "next_step"

            case cliWaitTime = "cli_wait_time"
        }

        public init(cliWaitTime: Double? = nil, message: String? = nil, nextStep: Double? = nil, requestId: String? = nil) {
            self.message = message

            self.requestId = requestId

            self.nextStep = nextStep

            self.cliWaitTime = cliWaitTime
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
                requestId = try container.decode(String.self, forKey: .requestId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                nextStep = try container.decode(Double.self, forKey: .nextStep)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cliWaitTime = try container.decode(Double.self, forKey: .cliWaitTime)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(requestId, forKey: .requestId)

            try? container.encodeIfPresent(nextStep, forKey: .nextStep)

            try? container.encodeIfPresent(cliWaitTime, forKey: .cliWaitTime)
        }
    }
}
