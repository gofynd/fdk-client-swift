

import Foundation
public extension PlatformClient {
    /*
         Model: Debit
         Used By: Configuration
     */

    class Debit: Codable {
        public var enabled: Bool?

        public var autoApply: Bool?

        public var strategyChannel: String?

        public enum CodingKeys: String, CodingKey {
            case enabled

            case autoApply = "auto_apply"

            case strategyChannel = "strategy_channel"
        }

        public init(autoApply: Bool? = nil, enabled: Bool? = nil, strategyChannel: String? = nil) {
            self.enabled = enabled

            self.autoApply = autoApply

            self.strategyChannel = strategyChannel
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
                autoApply = try container.decode(Bool.self, forKey: .autoApply)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                strategyChannel = try container.decode(String.self, forKey: .strategyChannel)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(enabled, forKey: .enabled)

            try? container.encodeIfPresent(autoApply, forKey: .autoApply)

            try? container.encodeIfPresent(strategyChannel, forKey: .strategyChannel)
        }
    }
}
