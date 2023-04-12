

import Foundation

public extension PlatformClient.Configuration {
    /*
         Model: PanCardConfig
         Used By: Configuration
     */

    class PanCardConfig: Codable {
        public var enabled: Bool?

        public var codThresholdAmount: Double?

        public var onlineThresholdAmount: Double?

        public enum CodingKeys: String, CodingKey {
            case enabled

            case codThresholdAmount = "cod_threshold_amount"

            case onlineThresholdAmount = "online_threshold_amount"
        }

        public init(codThresholdAmount: Double? = nil, enabled: Bool? = nil, onlineThresholdAmount: Double? = nil) {
            self.enabled = enabled

            self.codThresholdAmount = codThresholdAmount

            self.onlineThresholdAmount = onlineThresholdAmount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                enabled = try container.decode(Bool.self, forKey: .enabled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                codThresholdAmount = try container.decode(Double.self, forKey: .codThresholdAmount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                onlineThresholdAmount = try container.decode(Double.self, forKey: .onlineThresholdAmount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(enabled, forKey: .enabled)

            try? container.encodeIfPresent(codThresholdAmount, forKey: .codThresholdAmount)

            try? container.encodeIfPresent(onlineThresholdAmount, forKey: .onlineThresholdAmount)
        }
    }
}

public extension PlatformClient.ApplicationClient.Configuration {
    /*
         Model: PanCardConfig
         Used By: Configuration
     */

    class PanCardConfig: Codable {
        public var enabled: Bool?

        public var codThresholdAmount: Double?

        public var onlineThresholdAmount: Double?

        public enum CodingKeys: String, CodingKey {
            case enabled

            case codThresholdAmount = "cod_threshold_amount"

            case onlineThresholdAmount = "online_threshold_amount"
        }

        public init(codThresholdAmount: Double? = nil, enabled: Bool? = nil, onlineThresholdAmount: Double? = nil) {
            self.enabled = enabled

            self.codThresholdAmount = codThresholdAmount

            self.onlineThresholdAmount = onlineThresholdAmount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                enabled = try container.decode(Bool.self, forKey: .enabled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                codThresholdAmount = try container.decode(Double.self, forKey: .codThresholdAmount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                onlineThresholdAmount = try container.decode(Double.self, forKey: .onlineThresholdAmount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(enabled, forKey: .enabled)

            try? container.encodeIfPresent(codThresholdAmount, forKey: .codThresholdAmount)

            try? container.encodeIfPresent(onlineThresholdAmount, forKey: .onlineThresholdAmount)
        }
    }
}
