

import Foundation

public extension PlatformClient.Configuration {
    /*
         Model: PanCardConfig
         Used By: Configuration
     */

    class PanCardConfig: Codable {
        public var enabled: Bool?

        public var thresholdAmount: Double?

        public enum CodingKeys: String, CodingKey {
            case enabled

            case thresholdAmount = "threshold_amount"
        }

        public init(enabled: Bool? = nil, thresholdAmount: Double? = nil) {
            self.enabled = enabled

            self.thresholdAmount = thresholdAmount
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
                thresholdAmount = try container.decode(Double.self, forKey: .thresholdAmount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(enabled, forKey: .enabled)

            try? container.encodeIfPresent(thresholdAmount, forKey: .thresholdAmount)
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

        public var thresholdAmount: Double?

        public enum CodingKeys: String, CodingKey {
            case enabled

            case thresholdAmount = "threshold_amount"
        }

        public init(enabled: Bool? = nil, thresholdAmount: Double? = nil) {
            self.enabled = enabled

            self.thresholdAmount = thresholdAmount
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
                thresholdAmount = try container.decode(Double.self, forKey: .thresholdAmount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(enabled, forKey: .enabled)

            try? container.encodeIfPresent(thresholdAmount, forKey: .thresholdAmount)
        }
    }
}
