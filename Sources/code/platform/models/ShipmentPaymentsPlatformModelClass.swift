

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentPayments
         Used By: Order
     */

    class ShipmentPayments: Codable {
        public var displayPriority: Int

        public var source: String

        public var spId: Int

        public var mode: String

        public var isActive: Bool

        public var displayName: String

        public var sourceNickname: String?

        public var paymentIdentifier: String?

        public var logo: String

        public enum CodingKeys: String, CodingKey {
            case displayPriority = "display_priority"

            case source

            case spId = "sp_id"

            case mode

            case isActive = "is_active"

            case displayName = "display_name"

            case sourceNickname = "source_nickname"

            case paymentIdentifier = "payment_identifier"

            case logo
        }

        public init(displayName: String, displayPriority: Int, isActive: Bool, logo: String, mode: String, paymentIdentifier: String? = nil, source: String, sourceNickname: String? = nil, spId: Int) {
            self.displayPriority = displayPriority

            self.source = source

            self.spId = spId

            self.mode = mode

            self.isActive = isActive

            self.displayName = displayName

            self.sourceNickname = sourceNickname

            self.paymentIdentifier = paymentIdentifier

            self.logo = logo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            displayPriority = try container.decode(Int.self, forKey: .displayPriority)

            source = try container.decode(String.self, forKey: .source)

            spId = try container.decode(Int.self, forKey: .spId)

            mode = try container.decode(String.self, forKey: .mode)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            displayName = try container.decode(String.self, forKey: .displayName)

            do {
                sourceNickname = try container.decode(String.self, forKey: .sourceNickname)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentIdentifier = try container.decode(String.self, forKey: .paymentIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            logo = try container.decode(String.self, forKey: .logo)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(displayPriority, forKey: .displayPriority)

            try? container.encodeIfPresent(source, forKey: .source)

            try? container.encodeIfPresent(spId, forKey: .spId)

            try? container.encodeIfPresent(mode, forKey: .mode)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(sourceNickname, forKey: .sourceNickname)

            try? container.encodeIfPresent(paymentIdentifier, forKey: .paymentIdentifier)

            try? container.encodeIfPresent(logo, forKey: .logo)
        }
    }
}
