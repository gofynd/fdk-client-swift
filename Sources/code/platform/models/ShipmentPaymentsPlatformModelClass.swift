

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentPayments
         Used By: Order
     */

    class ShipmentPayments: Codable {
        public var spId: Int

        public var logo: String

        public var mode: String

        public var source: String

        public var sourceNickname: String?

        public var displayPriority: Int

        public var isActive: Bool

        public var paymentIdentifier: String?

        public var displayName: String

        public enum CodingKeys: String, CodingKey {
            case spId = "sp_id"

            case logo

            case mode

            case source

            case sourceNickname = "source_nickname"

            case displayPriority = "display_priority"

            case isActive = "is_active"

            case paymentIdentifier = "payment_identifier"

            case displayName = "display_name"
        }

        public init(displayName: String, displayPriority: Int, isActive: Bool, logo: String, mode: String, paymentIdentifier: String? = nil, source: String, sourceNickname: String? = nil, spId: Int) {
            self.spId = spId

            self.logo = logo

            self.mode = mode

            self.source = source

            self.sourceNickname = sourceNickname

            self.displayPriority = displayPriority

            self.isActive = isActive

            self.paymentIdentifier = paymentIdentifier

            self.displayName = displayName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            spId = try container.decode(Int.self, forKey: .spId)

            logo = try container.decode(String.self, forKey: .logo)

            mode = try container.decode(String.self, forKey: .mode)

            source = try container.decode(String.self, forKey: .source)

            do {
                sourceNickname = try container.decode(String.self, forKey: .sourceNickname)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayPriority = try container.decode(Int.self, forKey: .displayPriority)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            do {
                paymentIdentifier = try container.decode(String.self, forKey: .paymentIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayName = try container.decode(String.self, forKey: .displayName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(spId, forKey: .spId)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(mode, forKey: .mode)

            try? container.encodeIfPresent(source, forKey: .source)

            try? container.encodeIfPresent(sourceNickname, forKey: .sourceNickname)

            try? container.encodeIfPresent(displayPriority, forKey: .displayPriority)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(paymentIdentifier, forKey: .paymentIdentifier)

            try? container.encodeIfPresent(displayName, forKey: .displayName)
        }
    }
}
