

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PennyDropPayload
         Used By: Payment
     */

    class PennyDropPayload: Codable {
        public var enabled: Bool

        public var serviceProvider: String?

        public enum CodingKeys: String, CodingKey {
            case enabled

            case serviceProvider = "service_provider"
        }

        public init(enabled: Bool, serviceProvider: String? = nil) {
            self.enabled = enabled

            self.serviceProvider = serviceProvider
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            enabled = try container.decode(Bool.self, forKey: .enabled)

            do {
                serviceProvider = try container.decode(String.self, forKey: .serviceProvider)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(enabled, forKey: .enabled)

            try? container.encode(serviceProvider, forKey: .serviceProvider)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PennyDropPayload
         Used By: Payment
     */

    class PennyDropPayload: Codable {
        public var enabled: Bool

        public var serviceProvider: String?

        public enum CodingKeys: String, CodingKey {
            case enabled

            case serviceProvider = "service_provider"
        }

        public init(enabled: Bool, serviceProvider: String? = nil) {
            self.enabled = enabled

            self.serviceProvider = serviceProvider
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            enabled = try container.decode(Bool.self, forKey: .enabled)

            do {
                serviceProvider = try container.decode(String.self, forKey: .serviceProvider)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(enabled, forKey: .enabled)

            try? container.encode(serviceProvider, forKey: .serviceProvider)
        }
    }
}
