

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PennyDropPayload
         Used By: Payment
     */

    class PennyDropPayload: Codable {
        public var serviceProvider: String?

        public var enabled: Bool

        public enum CodingKeys: String, CodingKey {
            case serviceProvider = "service_provider"

            case enabled
        }

        public init(enabled: Bool, serviceProvider: String? = nil) {
            self.serviceProvider = serviceProvider

            self.enabled = enabled
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                serviceProvider = try container.decode(String.self, forKey: .serviceProvider)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            enabled = try container.decode(Bool.self, forKey: .enabled)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(serviceProvider, forKey: .serviceProvider)

            try? container.encodeIfPresent(enabled, forKey: .enabled)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PennyDropPayload
         Used By: Payment
     */

    class PennyDropPayload: Codable {
        public var serviceProvider: String?

        public var enabled: Bool

        public enum CodingKeys: String, CodingKey {
            case serviceProvider = "service_provider"

            case enabled
        }

        public init(enabled: Bool, serviceProvider: String? = nil) {
            self.serviceProvider = serviceProvider

            self.enabled = enabled
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                serviceProvider = try container.decode(String.self, forKey: .serviceProvider)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            enabled = try container.decode(Bool.self, forKey: .enabled)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(serviceProvider, forKey: .serviceProvider)

            try? container.encodeIfPresent(enabled, forKey: .enabled)
        }
    }
}
